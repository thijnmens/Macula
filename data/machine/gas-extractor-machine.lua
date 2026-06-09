local gas_extractor_machine = {
    type = "assembling-machine",
    name = "gas-extractor-machine",

    icon = "__macula__/graphics/machine/gas-extractor.png",
    icon_size = 1173,

    energy_usage = "500W",
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
    },
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "gas-extractor"},
    max_health = 300,
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    graphics_set = {
        animation = {
            filename = "__macula__/graphics/machine/gas-extractor.png",
            width = 1173,
            height = 1173,
            frame_count = 1,
            scale = 0.1
        }
    },
    crafting_speed = 1,
    crafting_categories = {
        "crafting"
    },
}

data:extend({gas_extractor_machine})