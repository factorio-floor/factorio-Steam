require "defines"
-- Enable debug messages?
local isDebug = true
-- How much 'extra' should we add, to prevent adding tiny amounts every tick?
local steam_feedwater_pump_buffer = .25
-- What is the most we can pump per tick?
local steam_pumped_per_tick = 1

local entitylist = { }
entitylist['steam-boiler-injector'] = { input = 'steam-feedwater', output = 'steam-saturated', minlevel = 8 }
entitylist['steam-condensate-pump'] = { input = 'steam-condensing', output = 'steam-feedwater', minlevel = 9.9, maxspeedat = 35, minspeedat = 100 }
entitylist['steam-dryer'] = { input = 'steam-saturated', output = 'steam-dry', minlevel = 9.9, maxspeedat = 120, minspeedat = 100 }

game.onevent(defines.events.onbuiltentity, function(event)
    for k in pairs(entitylist) do
        if event.createdentity.name == k then
            if glob.steampumps == nil then
                glob.steampumps = { }
            end

            table.insert(glob.steampumps, event.createdentity)
            if isDebug then game.player.print("Feedwater pump added") end
        end
    end
end )

game.onevent(defines.events.ontick, function(event)
    if glob.steampumps ~= nil then
        for k, steampump in pairs(glob.steampumps) do
            if steampump.valid then
                if #steampump.fluidbox == 1 then
                    -- Get the fluid we have
                    local fluid = steampump.fluidbox[1]

                    if fluid == nil then
                        fluid = { type = 'water', temperature = 15, amount = 0.0 }
                    end

                    -- Ensure the output is the right fluid type
                    fluid.type = entitylist[steampump.name].output

                    if fluid.amount < entitylist[steampump.name].minlevel then
                        -- Get the neighbour
                        local neighbour = findNeighbourWithFluid(steampump, entitylist[steampump.name].input);
                        if neighbour ~= nil then
                            -- Get it's fluid
                            local nfluid = neighbour.fluidbox[1]

                            -- Reduce by the amount we need
                            local amount = steam_feedwater_pump_min_level + steam_feedwater_pump_buffer - fluid.amount
                            -- Is the amount a sliding scale?
                            if entitylist[steampump.name].maxspeedat then
                                amount =(1 -(nfluid.temperature - entitylist[steampump.name].minspeedat)) /(entitylist[steampump.name].maxspeedat - entitylist[steampump.name].minspeedat) * amount
                            end
                            if amount > nfluid.amount then amount = nfluid.amount end
                            if amount > steam_pumped_per_tick then amount = steam_pumped_per_tick end
                            if amount > 0 then
                                nfluid.amount = nfluid.amount - amount
                                neighbour.fluidbox[1] = nfluid;
                                -- Interpolate the temp
                                fluid.temperature =((fluid.amount * fluid.temperature) +(amount * nfluid.temperature)) /(fluid.amount + amount)

                                -- Add the amount we need to our liquid
                                fluid.amount = fluid.amount + amount

                                steampump.fluidbox[1] = fluid
                            end
                        end
                    end
                end
            else
                table.remove(glob.steampumps, k)
                if isDebug then game.player.print("Feedwater pump removed") end
            end
        end
    end
end )

findNeighbourWithFluid = function(entity, fluidname)
    local neighbour = nil
    for k, v in pairs(entity.neighbours) do
        if v.fluidbox ~= nil then
            if #v.fluidbox == 1 then
                if v.fluidbox[1] ~= nil then
                    if v.fluidbox[1].type == fluidname then
                        neighbour = v
                        break
                    end
                end
            end
        end
    end
    return neighbour
end