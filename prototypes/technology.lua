data:extend( {
    {
        type = "technology",
        name = "steam-lp",
        icon = "__base__/graphics/technology/fluid-handling.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "steam-boiler-injector"
            }
        },
        prerequisites = { "electric-engine", "fluid-handling" },
        unit =
        {
            count = 100,
            ingredients =
            {
                { "science-pack-1", 1 },
                { "science-pack-2", 1 }
            },
            time = 30
        },
        order = "a-h-c",
    },
    {
        type = "technology",
        name = "steam-hp",
        icon = "__base__/graphics/technology/fluid-handling.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "steam-hp-feedwater-pump"
            }
        },
        prerequisites = { "electric-engine", "fluid-handling", "steam-lp" },
        unit =
        {
            count = 100,
            ingredients =
            {
                { "science-pack-1", 1 },
                { "science-pack-2", 1 },
                { "science-pack-3", 1 }
            },
            time = 45
        },
        order = "a-h-c",
    },
} )