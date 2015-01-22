data:extend( {
    {
        type = "pump",
        name = "steam-boiler-injector",
        icon = "__base__/graphics/icons/small-pump.png",
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 1, result = "steam-boiler-injector" },
        max_health = 80,
        fast_replaceable_group = "pipe",
        corpse = "small-remnants",
        resistances =
        {
            { type = "fire", percent = 70 }
        },
        collision_box = { { - 0.29, - 0.29 }, { 0.29, 0.29 } },
        selection_box = { { - 0.5, - 0.5 }, { 0.5, 0.5 } },
        fluid_box =
        {
            base_area = 1,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { position = { 0, - 1 }, type = "output", base_area = 10, base_level = 0 },
                { position = { 0, 1 }, type = "input" },
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
                shift = { 0.09375, 0.03125 },
                animation_speed = 0.5
            },
            east =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-right.png",
                width = 51,
                height = 56,
                frame_count = 8,
                shift = { 0.265625, - 0.21875 },
                animation_speed = 0.5
            },
            south =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-down.png",
                width = 61,
                height = 58,
                frame_count = 8,
                shift = { 0.421875, - 0.125 },
                animation_speed = 0.5
            },
            west =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-left.png",
                width = 56,
                height = 44,
                frame_count = 8,
                shift = { 0.3125, 0.0625 },
                animation_speed = 0.5
            }
        }
    },
    {
        type = "pump",
        name = "steam-condensate-pump",
        icon = "__base__/graphics/icons/small-pump.png",
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 1, result = "steam-condensate-pump" },
        max_health = 80,
        fast_replaceable_group = "pipe",
        corpse = "small-remnants",
        resistances =
        {
            { type = "fire", percent = 70 }
        },
        collision_box = { { - 0.29, - 0.29 }, { 0.29, 0.29 } },
        selection_box = { { - 0.5, - 0.5 }, { 0.5, 0.5 } },
        fluid_box =
        {
            base_area = 1,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { position = { 0, - 1 }, type = "output", base_area = 10, base_level = 0 },
                { position = { 0, 1 }, type = "input" },
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
                shift = { 0.09375, 0.03125 },
                animation_speed = 0.5
            },
            east =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-right.png",
                width = 51,
                height = 56,
                frame_count = 8,
                shift = { 0.265625, - 0.21875 },
                animation_speed = 0.5
            },
            south =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-down.png",
                width = 61,
                height = 58,
                frame_count = 8,
                shift = { 0.421875, - 0.125 },
                animation_speed = 0.5
            },
            west =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-left.png",
                width = 56,
                height = 44,
                frame_count = 8,
                shift = { 0.3125, 0.0625 },
                animation_speed = 0.5
            }
        }
    },
    {
        type = "pump",
        name = "steam-dryer",
        icon = "__base__/graphics/icons/small-pump.png",
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 1, result = "steam-dryer" },
        max_health = 80,
        fast_replaceable_group = "pipe",
        corpse = "small-remnants",
        resistances =
        {
            { type = "fire", percent = 70 }
        },
        collision_box = { { - 0.29, - 0.29 }, { 0.29, 0.29 } },
        selection_box = { { - 0.5, - 0.5 }, { 0.5, 0.5 } },
        fluid_box =
        {
            base_area = 1,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                { position = { 0, - 1 }, type = "output", base_area = 10, base_level = 0 },
                { position = { 0, 1 }, type = "input" },
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
                shift = { 0.09375, 0.03125 },
                animation_speed = 0.5
            },
            east =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-right.png",
                width = 51,
                height = 56,
                frame_count = 8,
                shift = { 0.265625, - 0.21875 },
                animation_speed = 0.5
            },
            south =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-down.png",
                width = 61,
                height = 58,
                frame_count = 8,
                shift = { 0.421875, - 0.125 },
                animation_speed = 0.5
            },
            west =
            {
                filename = "__base__/graphics/entity/small-pump/small-pump-left.png",
                width = 56,
                height = 44,
                frame_count = 8,
                shift = { 0.3125, 0.0625 },
                animation_speed = 0.5
            }
        }
    },
    {
    type = "container",
    name = "steam-he",
    icon = "__base__/graphics/icons/wooden-chest.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "steam-he"},
    max_health = 50,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    fast_replaceable_group = "container",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    inventory_size = 16,
    open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
    close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
    picture =
    {
      filename = "__base__/graphics/entity/wooden-chest/wooden-chest.png",
      priority = "extra-high",
      width = 46,
      height = 33,
      shift = {0.3, 0}
    }
  },

  {
        type = "pipe",
        name = "steam-he-pipe-hori",
        icon = "__base__/graphics/icons/pipe.png",
        flags = { "placeable-neutral", "player-creation" },
        minable = { hardness = 0.2, mining_time = 0.5, result = "steam-he-pipe-hori" },
        max_health = 50,
        collision_box = { { - 0.29, - 0.29 }, { 0.29, 0.29 } },
        fluid_box =
        {
            base_area = 1,
            pipe_connections =
            {
                { position = { 1, 0 } },
                { position = { - 1, 0 } }
            },
        },
        pictures =
        {
            straight_vertical_single =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            straight_vertical =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            straight_vertical_window =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            straight_horizontal_window =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            straight_horizontal =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            corner_up_right =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            corner_up_left =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            corner_down_right =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            corner_down_left =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            t_up =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            t_down =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            t_right =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            t_left =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            cross =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            ending_up =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            ending_down =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            ending_right =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            ending_left =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            horizontal_window_background =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            vertical_window_background =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            fluid_background =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            low_temperature_flow =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            middle_temperature_flow =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            high_temperature_flow =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            }
        },
        horizontal_window_bounding_box = { { - 0.25, - 0.25 }, { 0.25, 0.15625 } },
        vertical_window_bounding_box = { { - 0.28125, - 0.40625 }, { 0.03125, 0.125 } }
    },

    {
        type = "pipe",
        name = "steam-he-pipe-vert",
        icon = "__base__/graphics/icons/pipe.png",
        flags = { "placeable-neutral", "player-creation" },
        minable = { hardness = 0.2, mining_time = 0.5, result = "steam-he-pipe-vert" },
        max_health = 50,
        collision_box = { { - 0.29, - 0.29 }, { 0.29, 0.29 } },
        fluid_box =
        {
            base_area = 1,
            pipe_connections =
            {
                { position = { 0, - 1 } },
                { position = { 0, 1 } },
            },
        },
        pictures =
        {
            straight_vertical_single =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            straight_vertical =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            straight_vertical_window =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            straight_horizontal_window =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            straight_horizontal =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            corner_up_right =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            corner_up_left =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            corner_down_right =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            corner_down_left =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            t_up =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            t_down =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            t_right =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            t_left =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            cross =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            ending_up =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            ending_down =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            ending_right =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            ending_left =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            horizontal_window_background =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            vertical_window_background =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            fluid_background =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            low_temperature_flow =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            middle_temperature_flow =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            },
            high_temperature_flow =
            {
                filename = "__generator-framework__/graphics/transparent.png",
                priority = "extra-high",
                width = 1,
                height = 1
            }
        },
        horizontal_window_bounding_box = { { - 0.25, - 0.25 }, { 0.25, 0.15625 } },
        vertical_window_bounding_box = { { - 0.28125, - 0.40625 }, { 0.03125, 0.125 } }
    }
} )