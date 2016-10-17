//Thanks for teaching me how this works cherry!
function AddonTrack()
	timer.Simple(5, function()
		if GetConVar("ip"):GetString() == "localhost" then return end
		print("Sending Addon Tracking Info...")
		http.Post("url to addontracking.php", {
			["addon_name"] = "Your addon name here",
			["server_name"] = GetHostName(),
			["server_ip"] = GetConVar("ip"):GetString()
		})
	end)
end
hook.Add("Initialize", "track_addon", AddonTrack)