-----------------------------------
-- Area: Outer Horutoto Ruins (194)
--   NM: Bomb_King
-----------------------------------

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    -- Set Lilac Tower NMs Window Open Time
    local wait = math.random(180,300); -- between 3 and 5 minute spawn timer
    SetServerVariable("[POP]MultiNM_Zone_194", os.time(t) + wait);
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]MultiNM_Zone_194");
    SetServerVariable("[PH]MultiNM_Zone_194", 0);
    SetServerVariable("[NM]MultiNM_Zone_194", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

end;
