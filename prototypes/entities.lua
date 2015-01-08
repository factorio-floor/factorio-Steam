data:extend({
    {
        type = "pump",
        name = "steam-boiler-injector",
        icon = "__base__/graphics/icons/small-pump.png",
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = "steam-boiler-injector"},
        max_health = 80,
        fast_replaceable_group = "pipe",
        corpse = "small-remnants",
        resistances =
        {
            {type = "fire", percent = 70}
        },
        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        fluid_box =
        {
            base_area = 1,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { position = {0, -1}, type="output", base_area = 10, base_level = 0 },
                { position = {0, 1}, type="input" },
            },
        },
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = 0.01 / 2.5
        },
        energy_usage = "30kW",
        pumping_speed = 0.5,
        animations =
        {
            north =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-up.png",
                width = 46,
                height = 56,
                frame_count = 8,
                shift = {0.09375, 0.03125},
                animation_speed = 0.5
            },
            east =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-right.png",
                width = 51,
                height = 56,
                frame_count = 8,
                shift = {0.265625, -0.21875},
                animation_speed = 0.5
            },
            south =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-down.png",
                width = 61,
                height = 58,
                frame_count = 8,
                shift = {0.421875, -0.125},
                animation_speed = 0.5
            },
            west =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-left.png",
                width = 56,
                height = 44,
                frame_count = 8,
                shift = {0.3125, 0.0625},
                animation_speed = 0.5
            }
        }
    },
        {
        type = "pump",
        name = "steam-hp-feedwater-pump",
        icon = "__base__/graphics/icons/small-pump.png",
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = "steam-hp-feedwater-pump"},
        max_health = 80,
        fast_replaceable_group = "pipe",
        corpse = "small-remnants",
        resistances =
        {
            {type = "fire", percent = 70}
        },
        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        fluid_box =
        {
            base_area = 1,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { position = {0, -1}, type="output", base_area = 10, base_level = 0 },
                { position = {0, 1}, type="input" },
            },
        },
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = 0.01 / 2.5
        },
        energy_usage = "30kW",
        pumping_speed = 0.5,
        animations =
        {
            north =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-up.png",
                width = 46,
                height = 56,
                frame_count = 8,
                shift = {0.09375, 0.03125},
                animation_speed = 0.5
            },
            east =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-right.png",
                width = 51,
                height = 56,
                frame_count = 8,
                shift = {0.265625, -0.21875},
                animation_speed = 0.5
            },
            south =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-down.png",
                width = 61,
                height = 58,
                frame_count = 8,
                shift = {0.421875, -0.125},
                animation_speed = 0.5
            },
            west =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-left.png",
                width = 56,
                height = 44,
                frame_count = 8,
                shift = {0.3125, 0.0625},
                animation_speed = 0.5
            }
        }
    }
})