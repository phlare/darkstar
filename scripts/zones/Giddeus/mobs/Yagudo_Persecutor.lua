-----------------------------------
-- Area: Giddeus (145)
--  MOB: Yagudo_Persecutor
-----------------------------------

require("scripts/zones/Giddeus/MobIDs");

-----------------------------------
-- onMobDeath
-----------------------------------
function onMobDeath(mob)
    -- luautils throwing errors if this isn't here
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    local mobID = mob:getID();
    if (Juu_Duzu_the_Whirlwind_PH[mobID] ~= nil) then
        if (ToD <= os.time(t) and GetMobAction(Juu_Duzu_the_Whirlwind) == 0) then
            -- alerts to phlare on pops
            -- local player = GetPlayerByName('Phlare');
            -- player:PrintToPlayer("Juu Duzu the Whirlwind PH despawned.");
            local ToD = GetServerVariable("[POP]Juu_Duzu_the_Whirlwind");
            if (math.random(1,5) == 3) then
                -- player:PrintToPlayer("Juu Duzu the Whirlwind will pop.");
                UpdateNMSpawnPoint(Juu_Duzu_the_Whirlwind);
                GetMobByID(Juu_Duzu_the_Whirlwind):setRespawnTime(GetMobRespawnTime(mobID));
                SetServerVariable("[PH]Juu_Duzu_the_Whirlwind", mobID);
                DeterMob(mobID, true);
            end
        end
    end

end;

