
minetest.register_node("images:circuit_demo", {
	description = "Circuit demo",
	drawtype = "signlike",
	tiles = {"images_circuit_demo_schematics.jpg"},
	visual_scale = 3.0,
	inventory_image = "images_circuit_demo_schematics.jpg",
	wield_image = "images_circuit_demo_schematics.jpg",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
	},
	groups = {
		choppy = 1
	}
})
