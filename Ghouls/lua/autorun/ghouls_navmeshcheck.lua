hook.Add( "PlayerInitialSpawn", "Ghouls_NavMeshCheck", function(ply)
	if !navmesh.IsLoaded() then
		ply:ChatPrint( "This map does not have a navmesh. Please use nav_generate in the console or risk the ghouls not working. (note, this command will lag for a few minutes, and then restart the map)" )
	end
end )