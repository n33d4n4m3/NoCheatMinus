#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#
# ...
# For:      This listener waits for combat-related events and fires the associated functions.
# Fires:    - PlayerAttacksEntityEvent
# Author:   n33d4n4m3
# ...

# PlayerAttacksEntityEvent

execute as @a[advancements={ncm:player_hurt_entity=true}] run function ncm:event/playerattacksentityevent
execute as @a[advancements={ncm:player_hurt_entity=true}] run advancement revoke @s only ncm:player_hurt_entity
