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
    },
    {
    type = "assembling-machine",
    name = "steam-separator",
    icon = "__base__/graphics/icons/chemical-plant.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "steam-separator"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "huge-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    animation =
    {
      north =
      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      },
      west =
      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
        x = 156,
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      },
      south =
      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
        x = 312,
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      },
      east =
      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
        x = 468,
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      }
    },
    working_visualisations =
    {
      {
        north_position = {0.94, -0.73},
        west_position = {-0.3, 0.02},
        south_position = {-0.97, -1.47},
        east_position = {0.05, -1.46},
        animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/boiling-green-patch.png",
          frame_count = 35,
          width = 17,
          height = 12,
          animation_speed = 0.15
        }
      },
      {
        north_position = {1.4, -0.23},
        west_position = {-0.3, 0.55},
        south_position = {-1, -1},
        east_position = {0.05, -0.96},
        north_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
          frame_count = 1,
          width = 21,
          height = 10
        },
        west_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
          x = 21,
          frame_count = 1,
          width = 21,
          height = 10
        },
        south_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
          x = 42,
          frame_count = 1,
          width = 21,
          height = 10
        }
      }
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/chemical-plant.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_speed = 1.25,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "210kW",
    ingredient_count = 4,
    crafting_categories = {"chemistry"},
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 0} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, -2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, 0} }}
      }
    }
  },
} )