-----------------------------------
-- Area: Valkurm Dunes
--  MOB: Damselfly
-- Note: Place holder Valkurm Emperor
-----------------------------------

require("scripts/zones/Valkurm_Dunes/MobIDs");
require("scripts/globals/fieldsofvalor");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    checkRegime(player,mob,9,1);
    checkRegime(player,mob,10,2);

end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    local mobID = mob:getID();

    -- Check if Damselfly is within the Valkurm_Emperor_PH table
    if (Valkurm_Emperor_PH[mobID] ~= nil) then
        -- printf("%u is a PH",mobID);
        -- Get VE's previous ToD
        local VE_ToD = GetServerVariable("[POP]Valkurm_Emperor");
        -- Check if VE window is open, and there is not an VE popped already(ACTION_NONE = 0)
        if (VE_ToD <= os.time(t) and GetMobAction(Valkurm_Emperor) == 0) then
            -- printf("VE window open");
            -- Give Damselfly 20 percent chance to pop VE
            if (math.random(1,5) == 2) then
                -- printf("VE will pop");
                UpdateNMSpawnPoint(Valkurm_Emperor);
                GetMobByID(Valkurm_Emperor):setRespawnTime(GetMobRespawnTime(mobID));
                SetServerVariable("[PH]Valkurm_Emperor", mobID);
                DeterMob(mobID, true);
            end
        end
    end
end;

