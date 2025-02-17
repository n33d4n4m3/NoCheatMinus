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
function ncm:command/tour
function ncm:command/help
function ncm:command/replay

# Running system routines

function ncm:evaluation/reputation

function ncm:evaluation/fail

function ncm:evaluation/pass

function ncm:base/permission

function ncm:lag/lagmanager

# Running replay system
function ncm:replay/tick

# Running listeners
function ncm:checks/fight/fightlistener
function ncm:checks/movement/movementlistener

# Running utils
function ncm:checks/movement/util/falsepositive

# Running checks

function ncm:checks/checkmanager

# Fight.Criticals check is triggered by VE's PlayerAttackEvents.
# Combined.Munchhausen check is triggered by conditional player_fished_himself advancements.
# Fight.Reach check is triggered by conditional player_hurt_entity advancements.


execute if score DataHolder ncmcm_MVMSF matches 1 run function ncm:checks/movement/survivalfly
execute if score DataHolder ncmcm_MVMNF matches 1 run function ncm:checks/movement/nofall
execute if score DataHolder ncmcm_INVAP matches 1 run function ncm:checks/inventory/appropriate
execute if score DataHolder ncmcm_NETUP matches 1 run function ncm:checks/net/unfittingpacket
execute if score DataHolder ncmcm_NETAP matches 1 run function ncm:checks/net/appropriate
execute if score DataHolder ncmcm_BIMB matches 1 run function ncm:checks/blockinteract/missingblock
execute if score DataHolder ncmcm_BPAP matches 1 run function ncm:checks/blockplace/appropriate
execute if score DataHolder ncmcm_COMBL matches 1 run function ncm:checks/combined/bedleave
execute if score DataHolder ncmcm_MVMTS matches 1 run function ncm:checks/movement/tickstride
execute if score DataHolder ncmcm_FWT matches 1 run function ncm:checks/fight/wrongturn
execute if score DataHolder ncmcm_FCV matches 1 run function ncm:checks/fight/compliantvelocity
execute if score DataHolder ncmcm_FD matches 1 run function ncm:checks/fight/direction
execute if score DataHolder ncmcm_IIB matches 1 run function ncm:checks/inventory/instantbow

# Running util functions
function ncm:checks/movement/util/sf_util

# Reset all fired events
function ncm:base/resetevents
