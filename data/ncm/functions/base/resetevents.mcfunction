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
# Description: This function resets all fired events.
# Author:      n33d4n4m3
# ...

# PlayerAttacksEntityEvent
tag @a[tag=ncmPlayerAttacksEntityEvent] remove ncmPlayerAttacksEntityEvent

tag @a[tag=ncmPlayerAttacksEntityEvent.opponentSurvived] remove ncmPlayerAttacksEntityEvent.opponentSurvived
tag @a[tag=ncmPlayerAttacksEntityEvent.criticalHit] remove ncmPlayerAttacksEntityEvent.criticalHit
scoreboard players set @a ncmePAEE.AtckDmg 0
scoreboard players set @a ncmePAEE.RealDmg 0
