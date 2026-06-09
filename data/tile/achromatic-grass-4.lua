local achromatic_grass_4 = table.deepcopy(data.raw.tile["grass-4"])

achromatic_grass_4.name = "achromatic-grass-4"

for _, variant in pairs(achromatic_grass_4.variants.main) do
    variant.picture = "__macula__/graphics/terrain/achromatic-grass-4.png"
end

achromatic_grass_4.map_color = {r = 0.13333, g = 0.13333, b = 0.13333}

data:extend({achromatic_grass_4})