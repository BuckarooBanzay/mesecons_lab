globals = {
	"default",
	"player_api",
	"sfinv",
	"creative",
	"screwdriver",
	"mesecon",
	"digilines"
}

read_globals = {
	-- Stdlib
	string = {fields = {"split", "trim"}},
	table = {fields = {"copy", "getn"}},

	-- Minetest
	"minetest",
	"vector", "ItemStack",
	"dump", "dump2",
	"VoxelArea"
}

files["mods/modgen"] = {
	globals = {
		"worldedit",
		"modgen"
	}
}

files["mods/default"] = {
	unused_args = false,
}

files["mods/screwdriver"] = {
	unused_args = false,
}

files["mods/player_api/api.lua"] = {
	globals = {
		"minetest"
	}
}
