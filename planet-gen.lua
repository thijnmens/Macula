data:extend({
  {
    type = "noise-expression",
    name = "advanced_fractal_elevation",
    intended_property = "elevation",
    expression = "multioctave_noise{x = x, y = y, persistence = 0.6, seed0 = map_seed, seed1 = 12, octaves = 5, input_scale = 1/250, output_scale = 40} " ..
            "+ basis_noise{x = x, y = y, seed0 = map_seed, seed1 = 55, input_scale = 1/15, output_scale = 4} - 5"
  }
})