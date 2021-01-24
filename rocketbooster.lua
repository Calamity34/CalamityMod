local rB = table.deepcopy(data.raw["item"]["nuclear-fuel"]) -- copy the table that defines the heavy armor item into the rB variable

rB.name = "rocket-booster"
rB.icons = {
  {
    icon = rB.icon,
    tint = {r=1,g=1,b=1,a=0.4}
  },
}

rB.fuel_value = "1TJ"
rB.fuel_acceleration_multiplier = 3.0
rB.fuel_top_speed_multiplier = 4.5

local recipe = {
    type = "recipe",
    name = "rocket-booster",
    category = "chemistry",
    energy_required = 120,
    ingredients = {
        {type="item",name="processing-unit",amount=100},
        {type="item",name="iron-plate",amount=1000},
        {type="item",name="speed-module-3",amount=1},
        {type="fluid",name="lubricant",amount=200},
        {type="fluid",name="crude-oil",amount=100}
    },
    result = "rocket-booster"
}

data:extend{rB,recipe}
