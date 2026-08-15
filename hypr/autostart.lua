-- Extra autostart processes.
-- o.launch_on_start("my-service")
-- If using the Solaar to config the movements in the logitech mouse.
o.launch_on_start("solaar -w hide")

--  o.launch_on_start does not recieve options that is why I am doing like this. I need to set in which monitor I want it executed.
--  I am using the omarchy-launch-terminal and not the function command_from because the function is local in the helpers.lua!
hl.on("hyprland.start", function()
	hl.exec_cmd("omarchy-launch-terminal", { workspace = "1 silent" })
	hl.exec_cmd("omarchy-launch-browser", { workspace = "2 silent" })
end)
