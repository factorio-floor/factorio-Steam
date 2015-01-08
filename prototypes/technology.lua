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
    }
} )