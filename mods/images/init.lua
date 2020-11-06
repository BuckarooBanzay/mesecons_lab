
local images = {
	["circuit_demo"] = {
		texture = "images_circuit_demo_schematics.jpg",
		description = "Circuit demo",
	},
	["decoder_demo"] = {
		texture = "images_decoder_demo_schematics.jpg",
		description = "Decoder demo"
	}
}

for name, def in pairs(images) do
	minetest.register_node("images:" .. name, {
		description = def.description,
		drawtype = "signlike",
		tiles = {
			def.texture
		},
		visual_scale = 3.0,
		inventory_image = def.texture,
		wield_image = def.texture,
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
end
