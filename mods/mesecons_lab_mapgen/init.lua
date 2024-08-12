local MP = minetest.get_modpath("mesecons_lab_mapgen")

mapsync.register_backend("default-backend", {
    type = "fs",
    path = MP .. "/map"
})

mapsync.register_data_backend({
    type = "fs",
    path = MP .. "/data"
})
