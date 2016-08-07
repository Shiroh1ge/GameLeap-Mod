
function CreateUnit( keys )
  local spawn_location = Entities:FindByName(nil, "last_hitting_hero_spawner"):GetAbsOrigin()
  local unit = CreateUnitByName("npc_dota_hero_sven", spawn_location, true, nil, nil, DOTA_TEAM_BADGUYS)
end