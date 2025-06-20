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
execute as @a run function ncm:command/input
function ncm:command/prereport
execute as @a run function ncm:command/checks
function ncm:command/tour
execute as @a run function ncm:command/help
function ncm:command/replay
function ncm:command/stats
function ncm:command/reset

# Running system routines

function ncm:evaluation/reputation

function ncm:evaluation/fail

execute as @e[type=minecraft:player] if score DataHolder ncmc_bs_ps_2 matches 1.. if score DataHolder ncmc_bs_ps_2 matches 1.. if score @s ncmRepRegCounter >= DataHolder ncmc_bs_ps_2 run function ncm:evaluation/pass
scoreboard players set @a ncmRepRegTotal 0

execute as @a if score @s ncmOperator matches 1 run function ncm:base/permission

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
execute if score DataHolder ncmcm_COMEX matches 1 run function ncm:checks/combined/exploit
execute if score DataHolder ncmcm_MVMTS matches 1 run function ncm:checks/movement/tickstride
execute if score DataHolder ncmcm_FWT matches 1 run function ncm:checks/fight/wrongturn
execute if score DataHolder ncmcm_FCV matches 1 run function ncm:checks/fight/compliantvelocity
execute if score DataHolder ncmcm_FD matches 1 run function ncm:checks/fight/direction
execute if score DataHolder ncmcm_IIB matches 1 run function ncm:checks/inventory/instantbow


# Running util functions
function ncm:checks/movement/util/sf_util

# Reset all fired events
function ncm:base/resetevents

# Make sure that this commands get executed last.
execute as @a if score @s ncmLeaveGame matches 1.. run scoreboard players set @s ncmLeaveGame 0
execute as @a if score @s ncmDeaths matches 1.. run scoreboard players set @s ncmDeaths 0
execute as @a if score @s ncmUsedEnderPearl matches 1.. run scoreboard players set @s ncmUsedEnderPearl 0