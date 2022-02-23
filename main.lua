
function Initialize(Plugin)
	Plugin:SetName(g_PluginInfo.Name)
	Plugin:SetVersion(g_PluginInfo.Version)

	-- Hooks
	PLUGIN = Plugin
	cPluginManager:AddHook(cPluginManager.HOOK_PLAYER_FOOD_LEVEL_CHANGE, MyOnPlayerFoodLevelChange);


	dofile(cPluginManager:GetPluginsPath() .. "/InfoReg.lua")
    	RegisterPluginInfoCommands()

	LOG("Initialised version " .. Plugin:GetVersion())
	return true
end


function OnDisable()
	LOG("NoHunger Has Been Disabled :(")
end
