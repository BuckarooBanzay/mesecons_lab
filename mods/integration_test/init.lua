if not minetest.settings:get_bool("enable_integration_test") then
    -- skip mod if not explicitly enabled
    return
end

-- mod namespace
integration_test = {}

local MP = minetest.get_modpath("integration_test")
dofile(MP.."/api.lua")
dofile(MP.."/export_nodenames.lua")
dofile(MP.."/check_nodenames.lua")

-- start tests after world is loaded
minetest.after(1, integration_test.execute_tests)