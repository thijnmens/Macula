local vulcanus_macula = {     --
    type = "space-connection",                                  -- Specify that this is a space connection
    name = "vulcanus-macula",                                   -- Name of the connection, i would recommend naming them in this way: "otherPlanet-yourPlanet"
    from = "vulcanus",                                          -- SpaceLocationID of the start position
    to = "macula",                                              -- SpaceLocationID of the end position
    length = 7500000                                            -- Length of the route, i would reference the space map to compare the length of the generated segment to existing segments
}

data:extend({vulcanus_macula})