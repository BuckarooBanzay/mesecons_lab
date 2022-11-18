minetest.register_on_mods_loaded(function()
	minetest.log("warning", "[integration_test] exporting all nodenames")
	local f = io.open(minetest.get_worldpath() .. "/nodenames.txt", "w")
	for nodename in pairs(minetest.registered_nodes) do
		f:write(nodename .. "\n")
	end
	f:close()
end)