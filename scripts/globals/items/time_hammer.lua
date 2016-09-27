-----------------------------------------
-- ID: 17083
-- Item: Time Hammer
-- Additional Effect: Slow
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local chance = 20;

    local dMND = (player:getStat(MOD_MND) - target:getStat(MOD_MND));

    --Power.
    local power = 150 + dMND * 2;
    if (power > 300) then
        power = 300;
    end

    local duration = 120;
    
    if (math.random(0,99) >= chance or applyResistanceAddEffect(player,target,ELE_EARTH,0) <= 0.5) then
        return 0,0,0;
    else
    	target:addStatusEffect(EFFECT_SLOW, power, 0, duration);
        return SUBEFFECT_SLOW, MSGBASIC_ADD_EFFECT_STATUS, EFFECT_SLOW;
    end
end;