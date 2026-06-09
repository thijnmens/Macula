local achromatic_grass_2 = table.deepcopy(data.raw.tile["grass-2"])

achromatic_grass_2.name = "achromatic-grass-2"

for _, variant in pairs(achromatic_grass_2.variants.main) do
    variant.picture = "__macula__/graphics/terrain/achromatic-grass-2.png"
end

achromatic_grass_2.map_color = {r = 0.25098, g = 0.25098, b = 0.25098}

data:extend({achromatic_grass_2})