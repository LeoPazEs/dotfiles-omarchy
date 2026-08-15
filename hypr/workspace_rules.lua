local MY_WEBAPPS = require("my_webapps")
local function chain_commands(...)
	local commands = { ... }
	return table.concat(commands, " & ")
end
hl.workspace_rule({
	workspace = "6",
	on_created_empty = chain_commands(
		o.launch_webapp(MY_WEBAPPS.MY_CALENDAR),
		o.launch_webapp(MY_WEBAPPS.MY_EMAIL),
		o.launch_webapp(MY_WEBAPPS.MY_DIGITAL_WORKSPACE)
	),
})
hl.workspace_rule({
	workspace = "special:scratchpad",
	layout = "scrolling",
	on_created_empty = chain_commands(
		o.launch_webapp(MY_WEBAPPS.MY_MESSENGER),
		o.launch_webapp(MY_WEBAPPS.INSTAGRAM),
		o.launch_webapp(MY_WEBAPPS.TWITTER),
		o.launch_sole("Spotify", "spotify")
	),
})
