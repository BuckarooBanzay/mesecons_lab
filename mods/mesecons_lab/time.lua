

-- periodically set a fixed time of day
local function set_time()
    minetest.set_timeofday(0.5)
    minetest.after(2, set_time)
end

minetest.after(0, set_time)