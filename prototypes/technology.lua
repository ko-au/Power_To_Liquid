data:extend({
  {
    type = "technology",
    name = "Power-to-Liquid",
    icon = "__Power_To_Liquid__/graphics/blue-crude-technology.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "blue-crude-refining"
      },
	  {
        type = "unlock-recipe",
        recipe = "blue-crude-plant"
      },
	  {
        type = "unlock-recipe",
        recipe = "blue-crude"
      },
	  
     
    },
    prerequisites = {"advanced-oil-processing", "advanced-electronics"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1}
      },
      time = 30
    },
    order = "d-a-c",
  },
  }
  )
  