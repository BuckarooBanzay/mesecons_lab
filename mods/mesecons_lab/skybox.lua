
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
