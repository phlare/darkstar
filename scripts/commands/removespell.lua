---------------------------------------------------------------------------------------------------
-- func: @removespell <spellID> <player>
-- desc: removes the ability to use a spell from the player
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "is"
};

function onTrigger(player, spellId, target)
    if (spellId == nil) then
        player:PrintToPlayer( "You must enter a valid spell ID." );
        player:PrintToPlayer( "@removeSpell <spellID> <player>" );
        return;
    end

    if (target == nil) then
        player:delSpell(spellId);
    else
        local targ = GetPlayerByName(target);
        if (targ ~= nil) then
            targ:delSpell(spellId);
        else
            player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
            player:PrintToPlayer( "@removeSpell <spellID> <player>" );
        end
    end
end;