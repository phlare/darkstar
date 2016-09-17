-----------------------------------
-- Area: Maze of Shakhrami
--  MOB: Argus (NM)
-----------------------------------

require("scripts/zones/Maze_of_Shakhrami/MobIDs");

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    local whichNM = math.random(0,19);

    if (whichNM < 10) then
        SetRespawnTime(Argus, 300, 600); -- 5-10 min
        DeterMob(Leech_King, true);
    else
        SetRespawnTime(Leech_King, 300, 600); -- 5-10 min
        DeterMob(Argus, true);
    end

end;
