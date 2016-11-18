---------------------------------------------------------------------------------------------------
-- func: gotoMob
-- desc: Goes to the target mob.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player, target)
    if (target == nil) then
        player:PrintToPlayer("You must enter a valid mob ID.");
        return;
    end

    local targ = GetMobByID(target);
    if (targ ~= nil) then
        if (targ:getZoneID() == player:getZoneID()) then
            player:setPos(targ:getXPos(), targ:getYPos(), targ:getZPos(),0);
        else 
            player:setPos( targ:getXPos(), targ:getYPos(), targ:getZPos(), 0, targ:getZoneID() );    
        end
    else
        player:PrintToPlayer( string.format( "Mob with ID '%s' not found!", target ) );
    end
end