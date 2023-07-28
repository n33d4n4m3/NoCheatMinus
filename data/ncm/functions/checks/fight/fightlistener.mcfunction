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
# For:      This listener waits for combat-related events and calls the associated functions.
# Listens to / Calls: VE.PlayerAttackEvent / Fight.Criticals
# Author:   n33d4n4m3
# ...

# PlayerAttackEvent
execute if score DataHolder ncmcm_FCR matches 1 as @a[tag=VE.PlayerAttackEvent] if score @s VE.PlayerAttackEvent.criticalHit matches 1 run function ncm:checks/fight/criticals
