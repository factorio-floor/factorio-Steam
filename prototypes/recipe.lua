data:extend({
    {
        type = "recipe",
        name = "steam-lp-feedwater-pump",
        energy_required = 2,
        enabled = false,
        ingredients =
        {
            {"small-pump", 1},
            {"steel-plate", 1},
            {"electronic-circuit", 1}
        },
        result= "steam-lp-feedwater-pump"
    },
    {
        type = "recipe",
        name = "steam-hp-feedwater-pump",
        energy_required = 2,
        enabled = false,
        ingredients =
        {
            {"small-pump", 1},
            {"steel-plate", 10},
            {"electronic-circuit", 1}
        },
        result= "steam-hp-feedwater-pump"
    }
})