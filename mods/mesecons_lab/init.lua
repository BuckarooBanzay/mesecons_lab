local MP = minetest.get_modpath(minetest.get_current_modname())

dofile(MP .. "/doors_hacks.lua")
dofile(MP .. "/skybox.lua")
dofile(MP .. "/spawn.lua")
dofile(MP .. "/time.lua")
dofile(MP .. "/technic.lua")

if minetest.get_modpath("mtt") and mtt.enabled then
    dofile(MP .. "/mtt.lua")
end