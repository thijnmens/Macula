require("planet-gen")

local macula = {
    type = "planet",                                            -- Specify that this is a planet
    name = "macula",                                            -- Name of the planet
    icon = "__macula__/graphics/icons/macula.png",              -- Path to icon of the planet
    icon_size = 64,                                             -- Size of the icon, 64 is the default
    starmap_icon = "__macula__/graphics/icons/macula.png",      -- Path to the icon of the planet on the starmap
    starmap_icon_size = 64,                                     -- Size of the icon on the starmap, 64 is the default

    -- Navigation settings in Space Age, this influences space travel
    gravity_pull = 10,                                          --
    distance = 15,
    orientation = 0.25,
    magnitude = 1.0,
    order = "z[custom]-a",
    subgroup = "planets",

    map_gen_settings = {
        -- 1. Hook up your custom noise
        property_expression_names = {
            ["elevation"] = "advanced_fractal_elevation"
        },

        -- 2. Define the only allowed tiles (Land & Water)
        autoplace_settings = {
            ["tile"] = {
                settings = {
                    ["water"] = {},
                    ["grass-1"] = {}
                }
            }
        },

        -- 3. Explicitly leave these empty so nothing else spawns
        autoplace_controls = {},
        cliff_settings = { name = "cliff", cliff_elevation_interval = 0 }
    }
}

data:extend({macula})
