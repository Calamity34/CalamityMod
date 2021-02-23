local sx = table.deepcopy(data.raw["module"]["speed-module-3"])

sx.name = "speed-module-x"
sx.icons = {{
    icon = "__base__/graphics/technology/speed-module-3.png",
    tint = {r=1,g=1,b=1,a=0.6}
}}
sx.tier = 10
sx.effect = { speed = {bonus = 3}, consumption = {bonus = 4}}

local recipe = {
    type = "recipe",
    name = "speed-module-x",
    category = "crafting-with-fluid",
    energy_required = 120,
    ingredients = {
        {"advanced-circuit",20},
        {"processing-unit",20},
        {"speed-module-3",10},
        {"rocket-fuel",10},
        {type="fluid",name="coolant",amount=500}
    },
    result="speed-module-x"
}

data:extend{sx,recipe}