--[[
------------------------------------------------------------------
THE FACTORIO API DOCS

https://lua-api.factorio.com/latest/prototypes.html
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
THIS IS YOUR BEST FRIEND!
------------------------------------------------------------------

This file is the entry point of your mod and is one of the few files that will be run by Factorio itself.
You can put code directly in this file, but a better way to do things is to logically structure your project
in different files and directories and then import these files here.

!! IMPORTANT !!
Any file that is NOT imported here will not run!

Let's say we have a file structure like the following:

--
root
├───data
│   ├───planets
│   │   └───planet.lua
│   └───recipes
│       └───recipe.lua
└───graphics
    └───icon
--

If i want to run both planet.lua and recipe.lua, i would import them like so:

--
require("data.planets.planet")
require("data.recipes.recipe")
--

The directories are seperated by dots (.) and the file extension is ommited.

Import order matters, if my planet needs the recipe to exist when running its code it should be imported BEFORE the planet.
]]

-- Terrain
require("data.tile.achromatic-grass-1")
require("data.tile.achromatic-grass-2")
require("data.tile.achromatic-grass-3")
require("data.tile.achromatic-grass-4")

-- Items
require("data.item.light-refraction-crystal")
require("data.item.gas-extractor")

-- Machines
require("data.machine.gas-extractor-machine")

-- Recipes
require("data.recipe.achronium-recipe")
require("data.recipe.gas-extractor-recipe")

-- Planets
require("data.planet.macula")

-- Space connections
require('data.planet.connection.vulcanus-macula')

-- Research
require('data.research.planet-discovery-macula')