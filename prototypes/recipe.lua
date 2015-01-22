data:extend( {
    {
        type = "recipe",
        name = "steam-boiler-injector",
        energy_required = 2,
        enabled = true,
        ingredients =
        {
            { "small-pump", 1 },
            { "steel-plate", 1 },
            { "electronic-circuit", 1 }
        },
        result = "steam-boiler-injector"
    },
    {
        type = "recipe",
        name = "steam-condensate-pump",
        energy_required = 2,
        enabled = true,
        ingredients =
        {
            { "small-pump", 1 },
            { "steel-plate", 10 },
            { "electronic-circuit", 1 }
        },
        result = "steam-condensate-pump"
    },
    {
        type = "recipe",
        name = "steam-dryer",
        energy_required = 2,
        enabled = true,
        ingredients =
        {
            { "small-pump", 1 },
            { "steel-plate", 10 },
            { "electronic-circuit", 1 }
        },
        result = "steam-dryer"
    },
    {
        type = "recipe",
        name = "water-treatment",
        category = "chemistry",
        enabled = "true",
        energy_required = 5,
        ingredients =
        {
            { type = "fluid", name = "water", amount = 10 },
            {type="item", name="iron-plate", amount=1}
        },
        results =
        {
            { type = "fluid", name = "steam-feedwater", amount = 10 }
        },
        icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
        subgroup = "fluid",
        order = "a[fluid-chemistry]-a[water-treatment]"
    },
    {
        type = "recipe",
        name = "steam-he",
        energy_required = 2,
        enabled = true,
        ingredients =
        {
            { "pipe", 2 },
            { "steel-plate", 1 },
            { "copper-plate", 2 }
        },
        result = "steam-he"
    },
} )