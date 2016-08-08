if CAddonTemplateGameMode == nil then
	CAddonTemplateGameMode = class({})
end

function Precache( context )
	--[[
		Precache things we know we'll use.  Possible file types include (but not limited to):
			PrecacheResource( "model", "*.vmdl", context )
			PrecacheResource( "soundfile", "*.vsndevts", context )
			PrecacheResource( "particle", "*.vpcf", context )
			PrecacheResource( "particle_folder", "particles/folder", context )
	]]
end

function Activate()
	GameRules.AddonTemplate = CAddonTemplateGameMode()
	GameRules.AddonTemplate:InitGameMode()

end

function CAddonTemplateGameMode:InitGameMode()
	print( "Template addon is loaded." )
	PlayerResource:SetCustomTeamAssignment( 0, DOTA_TEAM_GOODGUYS ) -- Sets team to player automatically
   	GameRules:SetCustomGameSetupTimeout( 0 ) -- removes team picking phase

	CustomGameEventManager:RegisterListener("event_test", Dynamic_Wrap(CAddonTemplateGameMode, 'OnTest'))

end

function CAddonTemplateGameMode:OnTest( keys )
	for k,v in pairs(keys) do
		print(k,v)
	end
end