
integration_test.register_test(function()
    minetest.log("warning", "[integration_test] checking nodenames")

    local assert_nodes = {}
    for nodename in io.lines(minetest.get_modpath("integration_test") .. "/nodenames.txt") do
        table.insert(assert_nodes, nodename)
    end

    -- assemble node-list from registered lbm's
    local lbm_nodes = {}
    for _, lbm in ipairs(minetest.registered_lbms) do
        if type(lbm.nodenames) == "string" then
            -- duh, list as string
            lbm_nodes[lbm.nodenames] = true
        else
            -- proper list, add all regardless if they are a "group:*"
            for _, nodename in ipairs(lbm.nodenames) do
                lbm_nodes[nodename] = true
            end
        end
    end

    -- check nodes
    local all_nodes_present = true
    for _, nodename in ipairs(assert_nodes) do
        if not minetest.registered_nodes[nodename]
            and not minetest.registered_aliases[nodename]
            and not lbm_nodes[nodename] then
                all_nodes_present = false
                minetest.log("error", "Node not present and not available in an alias/lbm: " .. nodename)
        end
    end

    if not all_nodes_present then
        return false, "some of the required nodes are not present and not aliased!"
    end

    return true
end)