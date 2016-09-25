-----------------------------------    
-- Area: Promyvion Mea
-- ??? map acquisition
-----------------------------------    
package.loaded["scripts/zones/Promyvion-Mea/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/zones/Promyvion-Mea/TextIDs");
    
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
 	if (trade:hasItemQty(1722,1) and trade:getItemCount() == 1 and player:hasKeyItem(438)==false) then
		player:addKeyItem(438); --add map
		player:tradeComplete();
		player:messageSpecial(KEYITEM_OBTAINED,438);
 	else
 		player:messageSpecial(NOTHING_HAPPENS);
	end
end;    
    

    
-----------------------------------    
-- onEventFinish Action    
-----------------------------------    
    
function onEventFinish(player,csid,option)    
end;    
