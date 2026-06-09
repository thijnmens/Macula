local gas_extractor_recipe = {
    type = "recipe",
    name = "gas-extractor-recipe",
    enabled = false,

    ingredients = {
        {
            type = "item",
            name = "barrel",
            amount = 10
        },
        {
            type = "item",
            name = "iron-plate",
            amount = 30
        },
        {
            type = "item",
            name = "electric-engine-unit",
            amount = 5
        }
    },
    results = {
        {
            type = "item",
            name = "gas-extractor",
            amount = 1
        }
    }
}

data:extend({gas_extractor_recipe})