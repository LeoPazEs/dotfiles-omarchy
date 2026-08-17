-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")
local MY_WEBAPPS = require("my_webapps")
o.bind("SUPER + E", "TUI File Manager", { omarchy = "terminal -e bash -i -c 'y; exec env SKIP_FASTFETCH=1 bash'" })
o.bind("SUPER + SHIFT + T", "Activity", { tui = "btop", focus = true })
hl.unbind("SUPER + SHIFT + W") -- Omawrite
o.bind("SUPER + A", "Omawrite", { launch = "omawrite" })
o.bind("SUPER + SHIFT + W", "WhatsApp", { webapp = MY_WEBAPPS.MY_MESSENGER, focus = true })
hl.unbind("SUPER + SHIFT + SLASH")
o.bind("SUPER + SHIFT + SLASH", "Passwords", { launch = "bitwarden-desktop", focus = true })
hl.unbind("SUPER + SHIFT + A")
o.bind("SUPER + SHIFT + A", "Gemini", { webapp = MY_WEBAPPS.MY_AI })
hl.unbind("SUPER + SHIFT + C")
o.bind("SUPER + SHIFT + C", "Calendar", { webapp = MY_WEBAPPS.MY_CALENDAR, focus = true })
hl.unbind("SUPER + SHIFT + E")
o.bind("SUPER + SHIFT + E", "Email", { webapp = MY_WEBAPPS.MY_EMAIL })
o.bind("SUPER + SHIFT + I", "Instagram", { webapp = MY_WEBAPPS.INSTAGRAM, focus = true })
o.bind("SUPER + SHIFT + ALT + D", "Discord", { webapp = MY_WEBAPPS.DISCORD, focus = true })
-- Utilities
o.bind("SUPER + M", "Omarchy menu", "omarchy-menu toggle")
o.bind("SUPER + R", "Apps menu", "omarchy-menu toggle apps")
-- Move focus with SUPER
o.bind("SUPER + H", "Focus on left window", hl.dsp.focus({ direction = "l" }))

hl.unbind("SUPER + L")
o.bind("SUPER + ALT + L", "Toggle workspace layout", "omarchy-hyprland-workspace-layout-toggle")
o.bind("SUPER + L", "Focus on right window", hl.dsp.focus({ direction = "r" }))

hl.unbind("SUPER + K")
o.bind("SUPER + SHIFT + K", "Keybindings", "omarchy-menu-keybindings")
o.bind("SUPER + K", "Focus on above window", hl.dsp.focus({ direction = "u" }))

hl.unbind("SUPER + J")
o.bind("SUPER + X", "Toggle window split", hl.dsp.layout("togglesplit"))
o.bind("SUPER + J", "Focus on below window", hl.dsp.focus({ direction = "d" }))
