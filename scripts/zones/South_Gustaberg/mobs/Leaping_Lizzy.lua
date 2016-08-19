----------------------------------
-- Area: South Gustaberg
--  NM:  Leaping Lizzy
-----------------------------------

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    -- Set LL's ToD
    SetServerVariable("[POP]Leaping_Lizzy", os.time(t) + 1800); -- 30 minutes
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Leaping_Lizzy");
    SetServerVariable("[PH]Leaping_Lizzy", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

end;