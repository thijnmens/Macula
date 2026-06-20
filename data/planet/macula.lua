require("data.terrain.planet-gen")

--[[
**NOTES**

When talking about angles. they are represented as a number from 0 to 1. Here is a compass to help you make sense of this
        (0)
         N
(0.75) W + E (0.25)
         S
       (0.5)

]]


local macula = {
    -- Prototype settings, these exist for every single object in the game
    type = "planet",                                            -- Specify that this is a planet
    subgroup = "planets",                                       -- Tells the game part of the planets subgroup
    name = "macula",                                            -- Name of the planet

    -- Planet settings
    gravity_pull = 100,                                         -- Modified speed platform, when going towards the planet it is added, when leaving the planet it is substracted
    distance = 42,                                              -- Distance from the sun
    orientation = 0.84,                                         -- Angle in relation to the sun
    magnitude = 3.14,                                           -- The size of the planet on the map
    parked_platforms_orientation = 0.1,                         -- Angle in relation to the planet where the parked space platforms will be drawn
    label_orientation = 0.25,                                   -- Angle in relation to the planet where the label should be drawn
    draw_orbit = true,                                          -- True if the orbit circle should be drawn on the map
    --solar_power_in_space = ?,                                   -- ?
    fly_condition = false,                                      -- True if the location offers fly conditions instead of wait conditions
    auto_save_on_first_trip = false,                            -- True if the game should autosave when you first travel to this location
    --procession_graphic_catalogue = ?,                           -- ?
    --procession_audio_catalogue = ?,                             -- ?
    --platform_procession_set = ?,                                -- These transitions are used for any platform stopped at this location
    --planet_procession_set = ?,                                  -- These transitions are used for anything traveling from the surface associated with this location
    asteroid_spawn_influence = 5,                               -- How many asteroids should spawn at the planet, set to 0 to disable astroid spawning
    asteroid_spawn_definitions = {                              -- Defines what astroids spawn, how they spawn and how many spawn.
        {
            type = "asteroid-chunk",                            -- Either "entity" or "asteroid-chunk". entity must inherit from "asteroid"
            asteroid = "metallic-asteroid-chunk",               -- Either an "EntityID" or an "AsteroidChunkId" depending on the type
            probability = 1,                                    -- Probability of spawning, calculated based on the percentage of this value vs the combined value of all items in the array. I recommend keeping this between 0 and 100 to make things easier
            speed = 5,                                          -- The speed the asteroid travels at
            angle_when_stopped = 0.85                           -- The angle the asteroids come from when a space platform is parked at the planet
        }
    },



    -- UI settings
    icon = "__macula__/graphics/icon/macula.png",               -- Path to icon of the planet
    icon_size = 64,                                             -- Size of the icon, 64 is the default
    starmap_icon = "__macula__/graphics/icon/macula.png",       -- Path to the icon of the planet on the starmap
    starmap_icon_size = 64,                                     -- Size of the icon on the starmap, 64 is the default
    starmap_icon_orientation = 0,                               -- Angle in relation to the planet where the top of the sprite points towards


    map_gen_settings = {                                        -- Generation settings for the planet terrain
        property_expression_names = {                           -- Object to map property names to the name of a noise expression
            ["elevation"] = "mecula-elevation"
        },

        autoplace_settings = {                                  -- Collection of entities, tiles and/or decorative ID's to automatically generate based on the noise expressions
            ["tile"] = {
                settings = {
                    ["achromatic-grass-1"] = {},
                    ["achromatic-grass-2"] = {},
                    ["achromatic-grass-3"] = {},
                    ["achromatic-grass-4"] = {}
                }
            }
        },

        autoplace_controls = {},                                -- Allows you to configure under what conditions auto-place can place certain things
        cliff_settings = {                                      -- Configures the settins for clifs
            name = "cliff",
            cliff_elevation_interval = 0
        }
    }
}

data:extend({macula})