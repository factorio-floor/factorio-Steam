require "defines"
-- Enable debug messages?
local isDebug = true
-- How much 'extra' should we add, to prevent adding tiny amounts every tick?
local steam_feedwater_pump_buffer = .25
-- What is the most we can pump per tick?
local steam_pumped_per_tick = 1

local pumplist = { }
pumplist['steam-boiler-injector'] = { input = 'steam-feedwater', output = 'steam-saturated', minlevel = 8 }
pumplist['steam-condensate-pump'] = { input = 'steam-condensing', output = 'steam-feedwater', minlevel = 9.9, maxspeedat = 35, minspeedat = 100 }
pumplist['steam-dryer'] = { input = 'steam-saturated', output = 'steam-dry', minlevel = 9.9, maxspeedat = 120, minspeedat = 100 }

game.onevent(defines.events.onbuiltentity, function(event)
    -- Register pumps
    registerPumps(event)
    registerHe(event)
end )
--collision_box = {{-.29, -.29}, {0.89, .29}},
    --selection_box = {{-.5, -.5}, {1, .5}},
registerHe = function(event)
    if event.createdentity.name == "steam-he" then
        if glob.hes == nil then
            glob.hes = { }
        end

        --table.insert(glob.hes, event.createdentity)
        if isDebug then game.player.print("Heat Exchanger entity added") end
    end
end

registerPumps = function(event)
    for k in pairs(pumplist) do
        if event.createdentity.name == k then
            if glob.steampumps == nil then
                glob.steampumps = { }
            end

            table.insert(glob.steampumps, event.createdentity)
            if isDebug then game.player.print("Pump entity added") end
        end
    end
end

game.onevent(defines.events.ontick, function(event)
    tickpumps(event)
    tickseparators(event)
    tickhes(event)
end )

tickhes = function(event)
    if glob.hes ~= nil then
        for k, he in pairs(glob.hes) do
            if he.valid then
                --get box a
                --local fba = he.fluid_boxes
                --get box b
                --get max energy a
                --get max energy b
                --move max
            else
                table.remove(glob.hes, k)
                if isDebug then game.player.print("Heat Exchanger removed") end
            end
        end
    end
end

tickpumps = function(event)
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
                    fluid.type = pumplist[steampump.name].output

                    if fluid.amount < pumplist[steampump.name].minlevel then
                        -- Get the neighbour
                        local neighbour = findNeighbourWithFluid(steampump, pumplist[steampump.name].input);
                        if neighbour ~= nil then
                            -- Get it's fluid
                            local nfluid = neighbour.fluidbox[1]

                            -- Reduce by the amount we need
                            local amount = pumplist[steampump.name].minlevel + steam_feedwater_pump_buffer - fluid.amount
                            -- Is the amount a sliding scale?
                            if pumplist[steampump.name].maxspeedat then
                                amount =(1 -(nfluid.temperature - pumplist[steampump.name].minspeedat)) /(pumplist[steampump.name].maxspeedat - pumplist[steampump.name].minspeedat) * amount
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
end

tickseparators = function(event)

end

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

findFluidboxKeyWithFluid = function(entity, fluidname)
    for k, v in pairs(entity.fluidbox) do
        if v ~= nil then
            if v.type == fluidname then
                return k
            end
        end
    end
    return nil
end