local achronium_recipe = {
    type = "recipe",
    name = "achronium-recipe",
    enabled = false,

    category = "crafting",
    energy_required = 60,
    icon = "__macula__/graphics/item/light-refracting-crystal.png",
    icon_size = 64,

    ingredients = {
        {
            type = "item",
            name = "barrel",
            amount = 4
        }
    },

    results = {
        {
            type = "item",
            name = "light-refraction-crystal", -- TODO: Update to achronium
            amount = 4
        }
    }
}

data:extend({achronium_recipe})