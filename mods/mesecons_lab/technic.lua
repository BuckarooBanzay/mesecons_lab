
-- prevent rubber trees from spawning on mapgen
local old_minetest_spawn_tree = minetest.spawn_tree
function minetest.spawn_tree(pos, model)
    if model == technic.rubber_tree_model then
        return
    else
        return old_minetest_spawn_tree(pos, model)
    end
end