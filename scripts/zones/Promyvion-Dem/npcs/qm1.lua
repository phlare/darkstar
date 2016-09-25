-----------------------------------    
-- Area: Promyvion Dem
-- ??? map acquisition
-----------------------------------    
package.loaded["scripts/zones/Promyvion-Dem/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/zones/Promyvion-Dem/TextIDs");
    
-----------------------------------    
-- onTrigger Action    
-----------------------------------    
    
function onTrigger(player,npc)    
    player:messageSpecial(NOTHING_OUT_OF_ORDINARY);
end;    
    
-----------------------------------    
-- onTrade Action    
-----------------------------------    
    
function onTrade(player,npc,trade)    
 	if (trade:hasItemQty(1721,1) and trade:getItemCount() == 1 and player:hasKeyItem(437)==false) then
		player:addKeyItem(437); --add map
		player:tradeComplete();
		player:messageSpecial(KEYITEM_OBTAINED,437);
 	else
 		player:messageSpecial(NOTHING_HAPPENS);
	end
end;    
    

    
-----------------------------------    
-- onEventFinish Action    
-----------------------------------    
    
function onEventFinish(player,csid,option)    
end;    
