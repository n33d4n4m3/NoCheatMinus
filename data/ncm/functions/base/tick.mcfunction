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
function ncm:base/command/input
function ncm:base/command/report

# Running system routines
function ncm:base/identification/uuid

function ncm:base/identification/fightid

function ncm:base/reputation

function ncm:base/evaluation/fail

function ncm:base/evaluation/pass


# Running listeners
function ncm:checks/fight/fightlistener



# Running checks
function ncm:checks/fight/missingentity

# Only run Fight.Criticals-check when the player makes a critical hit.
execute as @a[nbt={Tags:["ncmPlayerAttacksEntityEvent","ncmPlayerAttacksEntityEvent.criticalHit"]}] run function ncm:checks/fight/criticals
function ncm:checks/movement/appropriate
function ncm:checks/movement/survivalfly
function ncm:checks/inventory/appropriate
function ncm:checks/net/unfittingpacket
function ncm:checks/net/appropriate
function ncm:checks/blockinteract/missingblock
function ncm:checks/blockplace/missingblock
function ncm:checks/blockplace/appropriate


# Running util functions
function ncm:checks/movement/util/sf_util

# Reset all fired events
function ncm:base/resetevents
