-----------------------------------
-- Area: East Sarutabaruta
--  NM:  Spiny Spipi
-----------------------------------

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    -- Set Spiny_Spipi's Window Open Time
    local wait = math.random(600,1800)
    SetServerVariable("[POP]Spiny_Spipi", os.time(t) + wait); -- 10 - 30 minutes
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Spiny_Spipi");
    SetServerVariable("[PH]Spiny_Spipi", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

end;