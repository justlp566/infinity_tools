-- Infinity Tools Mod
-- End-game purple and black tools that never break and mine extremely fast

-- Define infinity pickaxe
minetest.register_tool("infinity_tools:infinity_pickaxe", {
	description = "Infinity Pickaxe",
	inventory_image = "infinity_tools_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.2,
		max_drop_level = 4,
		groupcaps = {
			cracky = {times = {0.05, 0.02, 0.01}, uses = 0, maxlevel = 4},
		},
		damage_groups = {fleshy = 12},
	},
})

-- Define infinity axe
minetest.register_tool("infinity_tools:infinity_axe", {
	description = "Infinity Axe",
	inventory_image = "infinity_tools_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.2,
		max_drop_level = 4,
		groupcaps = {
			choppy = {times = {0.05, 0.02, 0.01}, uses = 0, maxlevel = 4},
		},
		damage_groups = {fleshy = 14},
	},
})

-- Define infinity shovel
minetest.register_tool("infinity_tools:infinity_shovel", {
	description = "Infinity Shovel",
	inventory_image = "infinity_tools_shovel.png",
	tool_capabilities = {
		full_punch_interval = 0.2,
		max_drop_level = 4,
		groupcaps = {
			crumbly = {times = {0.05, 0.02, 0.01}, uses = 0, maxlevel = 4},
		},
		damage_groups = {fleshy = 10},
	},
})

-- Define infinity sword
minetest.register_tool("infinity_tools:infinity_sword", {
	description = "Infinity Sword",
	inventory_image = "infinity_tools_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.15,
		max_drop_level = 4,
		groupcaps = {
			snappy = {times = {0.02, 0.01, 0.005}, uses = 0, maxlevel = 4},
		},
		damage_groups = {fleshy = 20},
	},
})

-- End-game crafting recipes using mese and diamonds
minetest.register_craft({
	output = "infinity_tools:infinity_pickaxe",
	recipe = {
		{"default:diamond", "default:diamond", "default:diamond"},
		{"", "default:mese", ""},
		{"", "default:mese", ""},
	}
})

minetest.register_craft({
	output = "infinity_tools:infinity_axe",
	recipe = {
		{"default:diamond", "default:diamond", ""},
		{"default:diamond", "default:mese", ""},
		{"", "default:mese", ""},
	}
})

minetest.register_craft({
	output = "infinity_tools:infinity_shovel",
	recipe = {
		{"default:diamond"},
		{"default:mese"},
		{"default:mese"},
	}
})

minetest.register_craft({
	output = "infinity_tools:infinity_sword",
	recipe = {
		{"default:diamond"},
		{"default:diamond"},
		{"default:mese"},
	}
})

minetest.log("action", "[Infinity Tools] End-game infinity tools mod loaded!")
