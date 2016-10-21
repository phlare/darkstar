-----------------------------------
-- Area: Quicksand Caves
--  MOB: Antican Signifer
-----------------------------------

require("scripts/zones/Quicksand_Caves/MobIDs");
require("scripts/globals/groundsofvalor");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    checkGoVregime(player,mob,812,2);
    checkGoVregime(player,mob,813,2);
    checkGoVregime(player,mob,814,2);
    checkGoVregime(player,mob,815,1);
    checkGoVregime(player,mob,816,2);
    checkGoVregime(player,mob,817,2);
    checkGoVregime(player,mob,818,2);
    checkGoVregime(player,mob,819,2);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    -- Get Antican Signifier ID and check if it is a PH of Centurio X-I
    local mobID = mob:getID();
    -- Check if Antican Signifier is within the Centurio_X_I_PH table
    if (Centurio_X_I_PH[mobID] ~= nil) then
        -- Get Centurio's previous ToD
        local Centurio_X_I_ToD = GetServerVariable("[POP]Centurio_X_I");
        -- Check if window is open, and there is not a Centurio_X_I popped already(ACTION_NONE = 0)
        if (Centurio_X_I_ToD <= os.time(t) and GetMobAction(Centurio_X_I) == 0) then
        	-- Give Antican Signifier 20 percent chance to pop Centurio X_I
            if (math.random(1,5) == 2) then
                UpdateNMSpawnPoint(Centurio_X_I);
                GetMobByID(Centurio_X_I):setRespawnTime(GetMobRespawnTime(mobID));
                SetServerVariable("[PH]Centurio_X_I", mobID);
                DeterMob(mobID, true);
            end
        end
    end
end;