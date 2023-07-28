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
# Description:  This function gets fired every server tick.
# Author:       n33d4n4m3
# ...


# Running command functions
function ncm:command/input
function ncm:command/report
function ncm:command/checks


# Running system routines
function ncm:identification/uuid

function ncm:identification/fightid

function ncm:evaluation/reputation

function ncm:evaluation/fail

function ncm:evaluation/pass

function ncm:base/permission

# Running listeners
function ncm:checks/fight/fightlistener
function ncm:checks/movement/movementlistener



# Running checks

function ncm:checks/checkmanager

execute if score DataHolder ncmcm_FME matches 1 run function ncm:checks/fight/missingentity
# Fight.Criticals check is triggered by VE's PlayerAttackEvents.
# Combined.Munchhausen check is triggered by conditional player_fished_himself advancements.
# Fight.Reach check is triggered by conditional player_hurt_entity advancements.
execute if score DataHolder ncmcm_MVMAP matches 1 run function ncm:checks/movement/appropriate
execute if score DataHolder ncmcm_MVMSF matches 1 run function ncm:checks/movement/survivalfly
execute if score DataHolder ncmcm_INVAP matches 1 run function ncm:checks/inventory/appropriate
execute if score DataHolder ncmcm_NETUP matches 1 run function ncm:checks/net/unfittingpacket
execute if score DataHolder ncmcm_NETAP matches 1 run function ncm:checks/net/appropriate
execute if score DataHolder ncmcm_BIMB matches 1 run function ncm:checks/blockinteract/missingblock
execute if score DataHolder ncmcm_BPMB matches 1 run function ncm:checks/blockplace/missingblock
execute if score DataHolder ncmcm_BPAP matches 1 run function ncm:checks/blockplace/appropriate
execute if score DataHolder ncmcm_COMBL matches 1 run function ncm:checks/combined/bedleave


# Running util functions
function ncm:checks/movement/util/sf_util

# Reset all fired events
function ncm:base/resetevents
