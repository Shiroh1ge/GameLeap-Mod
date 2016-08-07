
function CheckAbilityName(player, abilityname)

  if abilityname == "sven_storm_bolt" then
      local hero = player:GetAssignedHero() 
      local war_cry = hero:GetAbilityByIndex(2)

    ActivateAbility(hero, war_cry)
  end
  if abilityname == "sven_gods_strength" then
      local hero = player:GetAssignedHero() 
      local storm_hammer = hero:GetAbilityByIndex(0)
      local enemies = FindUnitsInRadius(hero:GetTeamNumber(), 
      hero:GetAbsOrigin(), 
      nil, 
      500, 
      storm_hammer:GetAbilityTargetTeam(), 
      storm_hammer:GetAbilityTargetType(), 
      storm_hammer:GetAbilityTargetFlags(), 
      FIND_CLOSEST, 
      false)
   for i,enemy in ipairs(enemies) do
     print(enemy:GetName())
   end

  hero:CastAbilityOnTarget(enemies[1], storm_hammer, 0)

  end
end

function ActivateAbility(hero, ability)
  hero:CastAbilityImmediately(ability, 0)

end