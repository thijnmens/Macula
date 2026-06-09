local achromatic_grass_3 = table.deepcopy(data.raw.tile["grass-3"])

achromatic_grass_3.name = "achromatic-grass-3"

for _, variant in pairs(achromatic_grass_3.variants.main) do
    variant.picture = "__macula__/graphics/terrain/achromatic-grass-3.png"
end

achromatic_grass_3.map_color = {r = 0.22745, g = 0.22745, b = 0.22745}

data:extend({achromatic_grass_3})