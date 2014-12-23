data:extend({
    {
        type = "item",
        name = "steam-lp-feedwater-pump",
        icon = "__base__/graphics/icons/small-pump.png",
        flags = {"goes-to-quickbar"},
        subgroup = "energy-pipe-distribution",
        order = "b[pipe]-c[steam-lp-feedwater-pump]",
        place_result = "steam-lp-feedwater-pump",
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