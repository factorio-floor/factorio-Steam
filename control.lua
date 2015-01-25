require "defines"
-- Enable debug messages?
local isDebug = true
-- How much 'extra' should we add, to prevent adding tiny amounts every tick?
local steam_feedwater_pump_buffer = .25
-- What is the most we can pump per tick?
local steam_pumped_per_tick = 1
-- What are the steam separator temps? (interpolates values between them)
local steam_separator = { lptemp = 120, mptemp = 375, hptemp = 540}
-- What % of feedwater is lost when injecting? (Used to simulate blowdown water)
local feedwater_lost_per_injected_unit = 0.001

local pumplist = { }
pumplist['steam-boiler-injector'] = { input = 'steam-feedwater', output = 'steam-saturated', minlevel = 8 }
pumplist['steam-condensate-pump'] = { input = 'steam-condensing', output = 'steam-feedwater', minlevel = 9.9, maxspeedat = 35, minspeedat = 100 }
pumplist['steam-dryer'] = { input = 'steam-saturated', output = 'steam-dry', minlevel = 9.9, maxspeedat = 120, minspeedat = 100 }

local defaultfluids = { }
defaultfluids["water"] = { name = "water", kjdegree = 1, maxtemp = 100 }
defaultfluids["steam-saturated"] = { name = "steam-saturated", kjdegree = 1.5, maxtemp = 120 }
defaultfluids["steam-condensing"] = { name = "steam-condensing", kjdegree = 1, maxtemp = 120 }
defaultfluids["steam-dry"] = { name = "steam-dry", kjdegree = 4.5, maxtemp = 540 }
defaultfluids["steam-lp"] = { name = "steam-lp", kjdegree = 4.5, maxtemp = 540 }
defaultfluids["steam-mp"] = { name = "steam-mp", kjdegree = 4.5, maxtemp = 540 }
defaultfluids["steam-hp"] = { name = "steam-hp", kjdegree = 4.5, maxtemp = 540 }

game.onevent(defines.events.onbuiltentity, function(event)
    registerPumps(event)
    registerHe(event)
    registerSeparator(event)
end )

registerSeparator = function(event)
    if event.createdentity.name == "steam-separator" then
        if glob.separators == nil then
            glob.separators = { }
        end

        local separator = { }
        separator.separator = event.createdentity
        separator.separator.recipe = "steam-separation"
        separator.separator.operable = false

        table.insert(glob.separators, separator)
        if isDebug then game.player.print("Steam Separator entity added") end
    end
end

registerHe = function(event)
    if event.createdentity.name == "steam-he" then
        if glob.hes == nil then
            glob.hes = { }
        end

        local he = { }
        he.he = event.createdentity
        he.pipes = createhepipes(he.he)

        table.insert(glob.hes, he)
        if isDebug then game.player.print("Heat Exchanger entity added") end
    end
end

createhepipes = function(he)
    local pipes = { }

    pipes.vert = game.createentity { name = "steam-he-pipe-vert", position = he.position }
    pipes.hori = game.createentity { name = "steam-he-pipe-hori", position = he.position }
    return pipes
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
            if he.he.valid then

                local boxesvalid, a, b = gethefluidboxes(he)
                if boxesvalid then

                    a, b = calchetempchange(a, b)
                    if a.tempchange > 0 then
                        a, b = checkmaxtemp(a, b)
                    else
                        b, a = checkmaxtemp(b, a)
                    end
                    a.temperature = a.temperature + a.tempchange
                    b.temperature = b.temperature + b.tempchange
                    -- if isDebug then game.player.print("boxesvalid".. serpent.dump(a) .. serpent.dump(b)) end

                    he.pipes.vert.fluidbox[1] = a
                    he.pipes.hori.fluidbox[1] = b
                end
            else
                removehe(k)
            end
        end
    end
end

gethefluidboxes = function(he)
    if #he.pipes.vert.fluidbox == 1 and he.pipes.vert.fluidbox[1] ~= nil then
        a = he.pipes.vert.fluidbox[1]
        a = addprotovalues(a)
    else
        return false
    end

    if #he.pipes.hori.fluidbox == 1 and he.pipes.hori.fluidbox[1] ~= nil then
        b = he.pipes.hori.fluidbox[1]
        b = addprotovalues(b)
    else
        return false
    end

    return true, a, b
end

addprotovalues = function(fluid)
    fluid.kjdegree = 1
    fluid.maxtemp = 100

    if glob.fluidprototypes == nil then
        glob.fluidprototypes = defaultfluids
    end

    if glob.fluidprototypes[fluid.name] ~= null then
        fluid.kjdegree = glob.fluidprototypes[fluid.name].kjdegree
        fluid.maxtemp = glob.fluidprototypes[fluid.name].maxtemp
    end

    return fluid
end

calchetempchange = function(a, b)
    a.tempdiff = b.temperature - a.temperature
    a.ratio =(b.kjdegree * b.amount) /(a.kjdegree * a.amount + b.kjdegree * b.amount)
    a.tempchange = a.ratio * a.tempdiff

    b.tempdiff = a.tempdiff * -1
    b.ratio = 1 - a.ratio
    b.tempchange = b.ratio * b.tempdiff
    return a, b
end

checkmaxtemp = function(a, b)
    if a.tempchange + a.temperature > a.maxtemp then
        a.tempchange = a.maxtemp - a.temperature
        b.tempchange = a.tempchange * b.ratio * -1
    end
    return a, b
end

removehe = function(key)
    if glob.hes[key].pipes.vert ~= nil and glob.hes[key].pipes.vert.valid then glob.hes[key].pipes.vert.die() end
    if glob.hes[key].pipes.hori ~= nil and glob.hes[key].pipes.hori.valid then glob.hes[key].pipes.hori.die() end
    table.remove(glob.hes, k)
    if isDebug then game.player.print("Heat Exchanger removed") end
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
                                --(actualtemp-minspeedtemp)/(maxspeedtemp-minspeedtemp)
                                local factor = (nfluid.temperature-pumplist[steampump.name].minspeedat)/(pumplist[steampump.name].maxspeedat - pumplist[steampump.name].minspeedat) * amount
                                --Needs to be between 1 and 0
                                factor = math.max(math.min(1, factor), 0)
                                amount = factor * amount
                            end
                            if amount > nfluid.amount then amount = nfluid.amount end
                            if amount > steam_pumped_per_tick then amount = steam_pumped_per_tick end
                            if amount > 0 then
                                nfluid.amount = nfluid.amount - amount
                                neighbour.fluidbox[1] = nfluid;

                                -- Blowdown losses
                                if steampump.name == "steam-boiler-injector" then
                                    amount = amount - (feedwater_lost_per_injected_unit * amount)
                                end

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
    if glob.separators ~= nil then
        for k, separator in pairs(glob.separators) do
            if separator.separator.valid then
                --Get influid
                if separator.separator.fluidbox[1] ~= nil then
                    -- Get the fluid we have
                    local fluid = separator.separator.fluidbox[1]
                   
                    if fluid.amount > 1 then
                        --if isDebug and event.tick % 60 == 0 then game.player.print("Separator amount"..fluid.amount) end
                        local lpbox, mpbox, hpbox = getseparatorboxes(separator.separator)
                        local lpout = 0
                        local mpout = 0
                        local hpout = 0
                        local amount = fluid.amount
                        if amount > steam_pumped_per_tick then amount = steam_pumped_per_tick end

                        if fluid.temperature < steam_separator.lptemp then
                            lpout = amount
                        elseif fluid.temperature < steam_separator.mptemp then
                            lpout = (fluid.temperature-steam_separator.mptemp)/(steam_separator.lptemp-steam_separator.mptemp) * amount
                            mpout = amount - lpout
                        else
                            mpout = (fluid.temperature - steam_separator.hptemp)/(steam_separator.mptemp-steam_separator.hptemp) * amount
                            hpout = amount - mpout
                        end

                        --if isDebug and event.tick % 60 == 0 then game.player.print("lpout"..lpout.."mpout"..mpout.."hpout"..hpout..lpbox.amount..mpbox.amount..hpbox.amount) end

                        if lpout < 10-lpbox.amount and mpout < 10-mpbox.amount and hpout < 10-hpbox.amount then
                            fluid.amount = fluid.amount - lpout - mpout - hpout
                            lpbox.amount = lpbox.amount + lpout
                            mpbox.amount = mpbox.amount + mpout/2
                            hpbox.amount = hpbox.amount + hpout/4
                            
                            setseparatorboxes(separator.separator, fluid, lpbox, mpbox, hpbox)
                            --if isDebug and event.tick % 60 == 0 then game.player.print("Separator dat:"..serpent.dump(separator.separator.fluidbox)) end
                        end
                    end
                end
            else
                table.remove(glob.separators, k)
                if isDebug then game.player.print("Separator removed") end
            end
        end
    end
end

getseparatorboxes = function(separator)
    local lpbox = { type = "steam-lp", amount = 0}
    local mpbox = { type = "steam-mp", amount = 0}
    local hpbox = { type = "steam-hp", amount = 0}

    if separator.fluidbox[3] ~= nil then
        lpbox = separator.fluidbox[3]
    end
    if separator.fluidbox[4] ~= nil then
        mpbox = separator.fluidbox[4]
    end
    if separator.fluidbox[2] ~= nil then
        hpbox = separator.fluidbox[2]
    end
    return lpbox, mpbox, hpbox
end

setseparatorboxes = function(separator, fluid, lpbox, mpbox, hpbox)
    
    lpbox.temperature = fluid.temperature
    mpbox.temperature = fluid.temperature
    hpbox.temperature = fluid.temperature

    if fluid.amount < 0 then fluid.amount = 0 end
    if lpbox.amount < 0 then lpbox.amount = 0 end
    if mpbox.amount < 0 then mpbox.amount = 0 end
    if hpbox.amount < 0 then hpbox.amount = 0 end

    separator.fluidbox[1] = fluid
    separator.fluidbox[2] = hpbox
    separator.fluidbox[3] = lpbox
    separator.fluidbox[4] = mpbox
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

remote.addinterface("steamframework", {
    registerfluidprototype = function(name, kjdegree, maxtemp)
        addfluidprototype(name, kjdegree, maxtemp)
    end,
    help = function()
        return "registerentityprototype(name, influid, inposition, outfluid, outposition,fluidusagepertick) - name is the entity name, influid and outfluid are the fluids, inposition and outposition are {x=123,y=123} pairs, usageperttick is from your entity.lua"
        .. "unregisterentityprototype(name) - name is the entity name"
    end
} )

addfluidprototype = function(name, kjdegree, maxtemp)
    if glob.fluidprototypes == nil then
        glob.fluidprototypes = defaultfluids
    end

    local fluidprototype = {
        name = name,
        kjdegree = kjdegree,
        maxtemp = maxtemp
    }
    glob.fluidprototypes[name] = fluidprototype

end