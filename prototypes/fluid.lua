data:extend(
{
    {
        type = "fluid",
        name = "steam-lp",
        default_temperature = 15,
        max_temperature = 121,
        heat_capacity = "1.5KJ",
        base_color = {r=0, g=0.34, b=0.6},
        flow_color = {r=0.7, g=0.7, b=0.7},
        icon = "__base__/graphics/icons/fluid/water.png",
        order = "a[fluid]-a[steam-lp]",
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59
    },
    {
        type = "fluid",
        name = "steam-hp",
        default_temperature = 15,
        max_temperature = 185,
        heat_capacity = "4.25KJ",
        base_color = {r=0, g=0.34, b=0.6},
        flow_color = {r=0.7, g=0.7, b=0.7},
        icon = "__base__/graphics/icons/fluid/water.png",
        order = "a[fluid]-a[steam-hp]",
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59
    }
})