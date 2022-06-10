
-- override missing door-definitions too to make them closeable with mesecons
local door_def = minetest.registered_items["doors:door_steel_a"]
minetest.override_item("doors:door_steel_c", {
    mesecons = door_def.mesecons
})
minetest.override_item("doors:door_steel_c", {
    mesecons = door_def.mesecons
})

minetest.register_on_joinplayer(function(player)
    player:set_clouds({ density=0 })
    player:set_sky({r=0, g=0, b=0}, "skybox", {
        "heaven_up.jpg^[transformR270",
        "heaven_dn.jpg^[transformR90",
        "heaven_ft.jpg",
        "heaven_bk.jpg",
        "heaven_lf.jpg",
        "heaven_rt.jpg"
    })
end)

local function move_to_spawn(player)
    player:set_pos({ x=0, y=2, z=0 })
end

minetest.register_on_respawnplayer(move_to_spawn)
minetest.register_on_newplayer(move_to_spawn)