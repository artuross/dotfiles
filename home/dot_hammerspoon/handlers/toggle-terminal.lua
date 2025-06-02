local handler = {}

local prevApp

function handler.Handler()
    -- get previous app
    if (prevApp == nil) then
        prevApp = hs.application.frontmostApplication()
    end

    -- get current app
    local current = hs.application.frontmostApplication()

    -- get prev app and save current as prev
    local prev = prevApp
    prevApp = current

    -- what I most likely want is Kitty
    if (current:name() == "kitty" and prev:name() == "kitty") then
        current:hide()
        hs.application.launchOrFocus("Zed")
        return
    end

    if (current:name() == "kitty") then
        current:hide()
        prev:activate()
        return
    end

    hs.application.launchOrFocus("kitty")
end

return handler
