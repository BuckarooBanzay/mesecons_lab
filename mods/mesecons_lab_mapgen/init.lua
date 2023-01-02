mapsync.register_backend("default-backend", {
    type = "fs",
    path = minetest.get_modpath("mesecons_lab_mapgen") .. "/map"
})