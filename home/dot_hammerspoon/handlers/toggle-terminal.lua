-- Launches, or focuses Kitty if it's not an active window. Otherwise hides it.

local handler = {}

function handler.Handler()
    local current = hs.application.frontmostApplication()

    if (current:name() == "kitty") then
        local ok = current:hide()
        return
    end

    hs.application.launchOrFocus("kitty")
end

return handler
