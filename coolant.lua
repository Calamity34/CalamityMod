local C = table.deepcopy(data.raw["fluid"]["water"])

C.name = "coolant"
C.default_temperature = -30
C.max_temperature = 0
C.base_color = {r=0.11,g=0.8,b=0.73}
C.flow_color = {r=0.7,g=0.7,b=0.7}
C.icons = {{
    icon = "__base__/graphics/icons/fluid/water.png",
    tint = {r=0.6,g=0.9,b=0.85,a=0.6}
}}

local recipe = {
    type = "recipe",
    name = "coolant",
    category = "chemistry",
    energy_required = 8,
    ingredients = {
        {type="fluid",name="water",amount=1000},
        {type="fluid",name="lubricant",amount=200},
        {"iron-plate",5}
    },
    results = {{type="fluid",name="coolant",amount=100}},
    crafting_machine_tint = {
        primary = {r = 0.246, g = 0.769, b = 0.777, a = 1.000}, -- #44b838ff
        secondary = {r = 0.429, g = 0.808, b = 0.726, a = 1.000}, -- #6eca62ff
        tertiary = {r = 0.644, g = 0.632, b = 0.781, a = 1.000}, -- #a57865ff
        quaternary = {r = 0.500, g = 0.500, b = 0.818, a = 1.000}, -- #ff6420ff
    }
}

data:extend{C,recipe}