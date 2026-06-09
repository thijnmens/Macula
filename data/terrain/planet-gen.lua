local mecula_elevation = {
    type = "noise-expression",
    name = "mecula-elevation",
    intended_property = "elevation",
    expression = "multioctave_noise{x = x, y = y, persistence = 0.5, seed0 = 8472, seed1 = map_seed, octaves = 5, input_scale = 1/300, output_scale = 50} - 10"
}


data:extend({mecula_elevation})