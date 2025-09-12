# Run function to determine the players movement state.
function ncm:event/movementstates

# PlayerGameModeChangeEvent
execute run function ncm:event/player/playergamemodechangeevent

# PlayerMoveEvent
execute run function ncm:event/player/playermoveevent

# PlayerMovementStateTransitionEvent
execute run function ncm:event/player/playermovementstatetransitionevent

# EntityHealthUpdateEvent
execute run function ncm:event/entity/entityhealthupdateevent

# PlayerAttackEvent
execute as @a[advancements={ncm:e_player_hurt_entity=true}] run function ncm:event/player/playerattackevent