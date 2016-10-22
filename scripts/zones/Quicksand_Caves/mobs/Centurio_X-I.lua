-----------------------------------
-- Area: Quicksand Caves
--  NM: Centurio X-I
-----------------------------------
package.loaded["scripts/zones/Quicksand_Caves/TextIDs"] = nil;
package.loaded["scripts/zones/Quicksand_Caves/MobIDs"] = nil;
-----------------------------------

require("scripts/zones/Quicksand_Caves/MobIDs");
require("scripts/zones/Quicksand_Caves/TextIDs");

-----------------------------------
-- onMobSpawn Action
-----------------------------------
function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath Action
-----------------------------------
function onMobDeath(mob, player, isKiller)
end;

-----------------------------------
-- onMobDespawn Action
-----------------------------------
function onMobDespawn(mob)
    -- Set Centurio X-I's TOD
    SetServerVariable("[POP]Centurio_X_I", os.time(t) + 8100); -- 2 hours 15 minutes
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Centurio_X_I");
    SetServerVariable("[PH]Centurio_X_I", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));
end;
