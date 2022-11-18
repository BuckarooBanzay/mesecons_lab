
local tests = {}

function integration_test.register_test(fn)
    table.insert(tests, fn)
end

function integration_test.execute_tests()
    for _, fn in ipairs(tests) do
        -- TODO: callback/async api
        local success, msg = fn()
        if not success then
            error(msg)
        end
    end

    -- everything ok
    minetest.request_shutdown("success")
end