----------------------------------
-- Area: South Gustaberg
--  MOB: Ornery Sheep
-- Note: Place holder Carnero
-----------------------------------

require("scripts/zones/South_Gustaberg/MobIDs");

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    local mobID = mob:getID();
    if (Carnero_PH[mobID] ~= nil) then
        local ToD = GetServerVariable("[POP]Carnero");
        if (ToD <= os.time(t) and GetMobAction(Carnero) == 0) then
            -- set carner pop rate to 20% instead of 5% if window open
            if (math.random(1,5) == 2) then
                UpdateNMSpawnPoint(Carnero);
                GetMobByID(Carnero):setRespawnTime(GetMobRespawnTime(mobID));
                SetServerVariable("[PH]Carnero", mobID);
                DeterMob(mobID, true);
            end
        end
    end
end;