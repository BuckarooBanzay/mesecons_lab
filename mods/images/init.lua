
local images = {
	{
		texture = "images_circuit_demo_schematics.jpg",
		name = "circuit_demo",
		description = "Circuit demo"
	},
	{
		texture = "images_decoder_demo_schematics.jpg",
		name = "decoder_demo",
		description = "Decoder demo"
	}
}

for _, def in ipairs(images) do
	minetest.register_node("images:" .. def.name, {
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
