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
# Description: This manager oversees all checks and actions that need to be executed when checks are enabled or disabled.
# Author:      n33d4n4m3
# ...


# Enable BlockInteract.MissingBlock
execute if score DataHolder ncmcm_toggle_BIMB matches 1 run scoreboard players set DataHolder ncmcm_BIMB 1
# Disable BlockInteract.MissingBlock
execute if score DataHolder ncmcm_toggle_BIMB matches 2 run scoreboard players set DataHolder ncmcm_BIMB 0

execute if score DataHolder ncmcm_toggle_BIMB matches 1.. run scoreboard players set DataHolder ncmcm_toggle_BIMB 0


# Enable BlockPlace.MissingBlock
execute if score DataHolder ncmcm_toggle_BPMB matches 1 run scoreboard players set DataHolder ncmcm_BPMB 1
# Disable BlockPlace.MissingBlock
execute if score DataHolder ncmcm_toggle_BPMB matches 2 run scoreboard players set DataHolder ncmcm_BPMB 0

execute if score DataHolder ncmcm_toggle_BPMB matches 1.. run scoreboard players set DataHolder ncmcm_toggle_BPMB 0


# Enable Movement.SurvivalFly
execute if score DataHolder ncmcm_toggle_MVMSF matches 1 run scoreboard players set DataHolder ncmcm_MVMSF 1
# Disable Movement.SurvivalFly
execute if score DataHolder ncmcm_toggle_MVMSF matches 2 run scoreboard players set DataHolder ncmcm_MVMSF 0

execute if score DataHolder ncmcm_toggle_MVMSF matches 1.. run scoreboard players set DataHolder ncmcm_toggle_MVMSF 0


# Enable Movement.Appropriate
execute if score DataHolder ncmcm_toggle_MVMAP matches 1 run scoreboard players set DataHolder ncmcm_MVMAP 1
# Disable Movement.Appropriate
execute if score DataHolder ncmcm_toggle_MVMAP matches 2 run scoreboard players set DataHolder ncmcm_MVMAP 0

execute if score DataHolder ncmcm_toggle_MVMAP matches 1.. run scoreboard players set DataHolder ncmcm_toggle_MVMAP 0


# Enable Fight.MissingEntity
execute if score DataHolder ncmcm_toggle_FME matches 1 run scoreboard players set DataHolder ncmcm_FME 1
# Disable Fight.MissingEntity
execute if score DataHolder ncmcm_toggle_FME matches 2 run scoreboard players set DataHolder ncmcm_FME 0

execute if score DataHolder ncmcm_toggle_FME matches 1.. run scoreboard players set DataHolder ncmcm_toggle_FME 0


# Enable Fight.Criticals
execute if score DataHolder ncmcm_toggle_FCR matches 1 run scoreboard players set DataHolder ncmcm_FCR 1
# Disable Fight.Criticals
execute if score DataHolder ncmcm_toggle_FCR matches 2 run scoreboard players set DataHolder ncmcm_FCR 0

execute if score DataHolder ncmcm_toggle_FCR matches 1.. run scoreboard players set DataHolder ncmcm_toggle_FCR 0


# Enable Fight.Reach
execute if score DataHolder ncmcm_toggle_FRC matches 1 run scoreboard players set DataHolder ncmcm_FRC 1
# Disable Fight.Reach
execute if score DataHolder ncmcm_toggle_FRC matches 2 run scoreboard players set DataHolder ncmcm_FRC 0

execute if score DataHolder ncmcm_toggle_FRC matches 1.. run scoreboard players set DataHolder ncmcm_toggle_FRC 0


# Enable BlockPlace.Appropriate
execute if score DataHolder ncmcm_toggle_BPAP matches 1 run scoreboard players set DataHolder ncmcm_BPAP 1
# Disable BlockPlace.Appropriate
execute if score DataHolder ncmcm_toggle_BPAP matches 2 run scoreboard players set DataHolder ncmcm_BPAP 0

execute if score DataHolder ncmcm_toggle_BPAP matches 1.. run scoreboard players set DataHolder ncmcm_toggle_BPAP 0


# Enable Combined.BedLeave
execute if score DataHolder ncmcm_toggle_COMBL matches 1 run scoreboard players set DataHolder ncmcm_COMBL 1
# Disable Combined.BedLeave
execute if score DataHolder ncmcm_toggle_COMBL matches 2 run scoreboard players set DataHolder ncmcm_COMBL 0

execute if score DataHolder ncmcm_toggle_COMBL matches 1.. run scoreboard players set DataHolder ncmcm_toggle_COMBL 0


# Enable Combined.Munchhausen
execute if score DataHolder ncmcm_toggle_COMMUN matches 1 run scoreboard players set DataHolder ncmcm_COMMUN 1
# Disable Combined.Munchhausen
execute if score DataHolder ncmcm_toggle_COMMUN matches 2 run scoreboard players set DataHolder ncmcm_COMMUN 0

execute if score DataHolder ncmcm_toggle_COMMUN matches 1.. run scoreboard players set DataHolder ncmcm_toggle_COMMUN 0


# Enable Inventory.Appropriate
execute if score DataHolder ncmcm_toggle_INVAP matches 1 run scoreboard players set DataHolder ncmcm_INVAP 1
# Disable Inventory.Appropriate
execute if score DataHolder ncmcm_toggle_INVAP matches 2 run scoreboard players set DataHolder ncmcm_INVAP 0

execute if score DataHolder ncmcm_toggle_INVAP matches 1.. run scoreboard players set DataHolder ncmcm_toggle_INVAP 0


# Enable Net.Appropriate
execute if score DataHolder ncmcm_toggle_NETAP matches 1 run scoreboard players set DataHolder ncmcm_NETAP 1
# Disable Net.Appropriate
execute if score DataHolder ncmcm_toggle_NETAP matches 2 run scoreboard players set DataHolder ncmcm_NETAP 0

execute if score DataHolder ncmcm_toggle_NETAP matches 1.. run scoreboard players set DataHolder ncmcm_toggle_NETAP 0


# Enable Net.UnfittingPacket
execute if score DataHolder ncmcm_toggle_NETUP matches 1 run scoreboard players set DataHolder ncmcm_NETUP 1
# Disable Net.UnfittingPacket
execute if score DataHolder ncmcm_toggle_NETUP matches 2 run scoreboard players set DataHolder ncmcm_NETUP 0

execute if score DataHolder ncmcm_toggle_NETUP matches 1.. run scoreboard players set DataHolder ncmcm_toggle_NETUP 0