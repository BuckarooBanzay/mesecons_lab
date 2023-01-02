
-- override missing door-definitions too to make them closeable with mesecons
local door_def = minetest.registered_items["doors:door_steel_a"]
minetest.override_item("doors:door_steel_c", {
    mesecons = door_def.mesecons
})
minetest.override_item("doors:door_steel_c", {
    mesecons = door_def.mesecons
})
