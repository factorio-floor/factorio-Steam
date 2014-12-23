require "defines"
--Enable debug messages?
local isDebug = false
--What level to maintain in connected pipes?
local steam_feedwater_pump_min_level = 8.75
--How much 'extra' should we add, to prevent adding tiny amounts every tick?
local steam_feedwater_pump_buffer = .25
--What is the most we can pump per tick?
local steam_pumped_per_tick = 1
 
game.onevent(defines.events.onbuiltentity, function(event)
	if event.createdentity.name == "steam-lp-feedwater-pump" or event.createdentity.name == "steam-hp-feedwater-pump" then
		if glob.steampumps == nil then
			glob.steampumps = {}
		end
				
		table.insert(glob.steampumps, event.createdentity)
        if isDebug then game.player.print("Feedwater pump added") end
	end
end)

game.onevent(defines.events.ontick, function(event)
	if glob.steampumps ~= nil then
		for k,steampump in pairs(glob.steampumps) do
			if steampump.valid then
				if  #steampump.fluidbox == 1 then
                    --Get the fluid we have
                    local fluid = steampump.fluidbox[1]
                    
                    if fluid == nil then 
                        fluid = {type = "water", temperature = 15, amount = 0.0}
                    end

                    if fluid.type ~= "steam-hp" and fluid.type ~= "steam-lp" then
                        if steampump.name == "steam-hp-feedwater-pump" then
                            fluid.type = "steam-hp"
                            else
                            fluid.type = "steam-lp"
                        end
                    end

                    if fluid.amount < steam_feedwater_pump_min_level then
                        --Get the neighbour
                        local neighbour = findNeighbourWithWater(steampump);
                        if neighbour ~= nil then
                            --Get it's fluid
                            local nfluid = neighbour.fluidbox[1]
                            
                            --Reduce by the amount we need
                            local amount = steam_feedwater_pump_min_level + steam_feedwater_pump_buffer - fluid.amount
                            if amount > nfluid.amount then amount = nfluid.amount end
                            if amount > steam_pumped_per_tick then amount = steam_pumped_per_tick end
                            nfluid.amount = nfluid.amount - amount
                            neighbour.fluidbox[1] = nfluid;
                            --Interpolate the temp
                            fluid.temperature = ((fluid.amount * fluid.temperature) + (amount * nfluid.temperature)) / (fluid.amount + amount)

                            --Add the amount we need to our liquid
                            fluid.amount = fluid.amount + amount
                            
                            steampump.fluidbox[1] = fluid
                        end
                    end                    
				end
			else
				table.remove(glob.steampumps, k)
				if isDebug then game.player.print("Feedwater pump removed") end
			end
		end
	end
end)

function findNeighbourWithWater(entity)
    local neighbour = nil
    for k,v in pairs(entity.neighbours) do 
        if v.fluidbox ~= nil then
            if #v.fluidbox == 1 then
                if v.fluidbox[1] ~= nil then
                    if v.fluidbox[1].type == "water" then
                        neighbour = v
                        break
                    end
                end
            end
        end
    end
    return neighbour
end