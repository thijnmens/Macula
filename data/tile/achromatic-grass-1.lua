local achromatic_grass_1 = table.deepcopy(data.raw.tile["grass-1"])

achromatic_grass_1.name = "achromatic-grass-1"

for _, variant in pairs(achromatic_grass_1.variants.main) do
    variant.picture = "__macula__/graphics/terrain/achromatic-grass-1.png"
end

achromatic_grass_1.map_color = {r = 0.30588, g = 0.30588, b = 0.30588}

data:extend({achromatic_grass_1})