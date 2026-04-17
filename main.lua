--- @since 25.2.7

local function info(content)
    return ya.notify {
        title = "just information",
        content = content,
        timeout = 5,
    }
end

return {
    entry = function()
        local out, err = Command("just"):output()
        if out or err then
            return info("Ran yazi: " out, err)
        end
    end,
}
