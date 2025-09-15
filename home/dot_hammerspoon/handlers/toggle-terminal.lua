-- Launches, or focuses Kitty if it's not an active window. Otherwise hides it.
--
-- Ensure that System Settings -> Privacy & Security -> Accessibility
-- -> Hammerspoon is enabled.

local handler = {}

function handler.Handler()
    local current = hs.application.frontmostApplication()

    if (current:name() == "kitty") then
        local ok = current:hide()

        -- fallback in case it didn't work
        if not ok then
            current:selectMenuItem({ "kitty", "Hide kitty" })
        end

        return
    end

    hs.application.launchOrFocus("kitty")
end

return handler
