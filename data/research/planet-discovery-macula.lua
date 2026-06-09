local planet_discovery_macula = {
    type = "technology",
    name = "planet-discovery-macula",
    icon = "__macula__/graphics/icon/macula.png",
    icon_size = 64,

    upgrade = false,
    enabled = nil,
    essential = false,
    visible_when_disabled = true,
    ignore_tech_cost_multiplier = false,
    allows_productivity = true,
    research_trigger = nil,
    unit = {
        count = 1000,
        count_formula = nil,
        time = 60,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1}
        }
    },
    max_level = nil,
    prerequisites = {
        "space-platform-thruster",
        "planet-discovery-vulcanus"
    },
    show_levels_info = false,
    effects = {
        {
            type = "unlock-space-location",
            space_location = "macula",
            use_icon_overlay_constant = true
        },
        {
            type = "give-item",
            item = "light-refraction-crystal",
            count = 200
        },
        {
            type = "unlock-recipe",
            recipe = "achronium-recipe"
        },
        {
            type = "unlock-recipe",
            recipe = "gas-extractor-recipe"
        }
    }
}

data:extend({planet_discovery_macula})