data:extend({
  {
    type = "recipe-category",
    name = "crafting-blue-crude"
  },
  {
    type = "recipe",
    name = "blue-crude-refining",
	category = "oil-processing",
	enabled = false,
    energy_required = 5,
    enabled = "false",
	order = "a[oil-processing]-d[blue-crude-refining]",
    ingredients =
    {
		{type="fluid", name="water", amount=5},
		{type="fluid", name="blue-crude", amount=10},
    },
      results=
    {
      {type="fluid", name="heavy-oil", amount=2},
      {type="fluid", name="light-oil", amount=2},
      {type="fluid", name="petroleum-gas", amount=3}
    },
	  main_product= "",
	  icon = "__Power_To_Liquid__/graphics/blue-crude-refining.png",
      subgroup = "fluid-recipes"
  },
  {
    type = "recipe",
    name = "blue-crude-plant",
    icon = "__Power_To_Liquid__/graphics/blue-crude-plant.png",
    energy_required = 10.0,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 10},
      {"iron-gear-wheel", 5},
	  {"advanced-circuit", 10},
      {"pipe", 5}
    },
    result = "blue-crude-plant"
  },
  {
    type = "recipe",
    name = "blue-crude",
	category = "crafting-blue-crude",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {type="fluid", name="water", amount=10}
    },
    results=
    {
      {type="fluid", name="blue-crude", amount=2}
    },
    main_product= "",
    icon = "__Power_To_Liquid__/graphics/blue-crude.png",
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-i"
  },
}
)
--Thanks to BlakeMW/FreeER for this method of enabling productivity modules
for k, v in pairs(data.raw.module) do
  if v.name:find("productivity%-module") and v.limitation then
    for _, recipe in ipairs({"blue-crude-refining", "blue-crude"}) do
      table.insert(v.limitation, recipe)
    end
  end
end