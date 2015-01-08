data:extend({
    {
        type = "item",
        name = "steam-boiler-injector",
        icon = "__base__/graphics/icons/small-pump.png",
        flags = {"goes-to-quickbar"},
        subgroup = "energy-pipe-distribution",
        order = "b[pipe]-c[steam-boiler-injector]",
        place_result = "steam-boiler-injector",
        stack_size = 50
    },
    {
        type = "item",
        name = "steam-condensate-pump",
        icon = "__base__/graphics/icons/small-pump.png",
        flags = {"goes-to-quickbar"},
        subgroup = "energy-pipe-distribution",
        order = "b[pipe]-d[steam-condensate-pump]",
        place_result = "steam-condensate-pump",
        stack_size = 50
    },
     {
        type = "item",
        name = "steam-dryer",
        icon = "__base__/graphics/icons/small-pump.png",
        flags = {"goes-to-quickbar"},
        subgroup = "energy-pipe-distribution",
        order = "b[pipe]-d[steam-dryer]",
        place_result = "steam-dryer",
        stack_size = 50
    },
    {
        type = "item",
        name = "steam-hp-feedwater-pump",
        icon = "__base__/graphics/icons/small-pump.png",
        flags = {"goes-to-quickbar"},
        subgroup = "energy-pipe-distribution",
        order = "b[pipe]-d[steam-hp-feedwater-pump]",
        place_result = "steam-hp-feedwater-pump",
        stack_size = 50
    }
})