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
# Description:  This check is responsible for evaluating if the player looks at the last placed block.
# Fail:         This check fails if the player places a block out of range or out of sight.
# Subchecks:    /
# Author:       n33d4n4m3
# ...

# TODO (Code): Add many comments, which are explaining the subroutines.



execute as @a at @s anchored eyes if score @s ncmBPMB0 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB0 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB1 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB1 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB2 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB2 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB3 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB3 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB4 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB4 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB5 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB5 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB6 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB6 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB7 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB7 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB8 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB8 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB9 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB9 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB10 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB10 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB11 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB11 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB12 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB12 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB12 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB14 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB14 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB15 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB15 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB16 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB16 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB17 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB17 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB18 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB18 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB19 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB19 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB20 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB20 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB21 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB21 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB22 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB22 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB22 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB22 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB25 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB25 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB26 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB26 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB26 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB28 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB28 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB29 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB29 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB30 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB30 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB31 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB31 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB32 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB32 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB33 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB33 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB33 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB35 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB35 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB36 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB36 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB37 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB37 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB38 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB38 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB39 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB39 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB40 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB40 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB41 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB41 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB42 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB42 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB43 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB43 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB44 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB44 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB45 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB45 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB46 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB46 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB47 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB47 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB48 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB48 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB48 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB50 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB50 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB50 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB52 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB52 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB53 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB53 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB54 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB54 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB55 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB55 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB56 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB56 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB57 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB57 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB58 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB58 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB59 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB59 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB60 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB60 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB60 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB62 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB62 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB63 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB63 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB64 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB64 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB65 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB65 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB66 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB66 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB67 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB67 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB68 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB68 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB69 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB69 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB70 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB70 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB71 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB71 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB72 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB72 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB73 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB73 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB74 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB74 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB75 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB75 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB75 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB77 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB77 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB78 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB78 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB79 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB79 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB80 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB80 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB81 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB81 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB82 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB82 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB82 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB84 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB84 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB85 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB85 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB86 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB86 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB87 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB87 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB88 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB88 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB89 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB89 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB90 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB90 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB91 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB91 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB92 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB92 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB93 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB93 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB94 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB94 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB95 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB95 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB96 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB96 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB97 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB97 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB98 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB98 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB99 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB99 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB100 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB100 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB100 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB102 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB102 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB102 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB104 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB104 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB105 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB105 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB106 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB106 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB106 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB108 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB108 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB109 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB109 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB110 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB110 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB110 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB112 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB112 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB113 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB113 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB114 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB114 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB114 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB116 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB116 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB117 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB117 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB118 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB118 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB119 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB119 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB120 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB120 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB121 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB121 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB122 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB122 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB123 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB123 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB124 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB124 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB125 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB125 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB126 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB126 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB127 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB127 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB128 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB128 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB129 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB129 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB130 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB130 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB131 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB131 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB132 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB132 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB133 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB133 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB133 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB135 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB135 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB136 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB136 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB137 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB137 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB138 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB138 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB139 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB139 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB140 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB140 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB141 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB141 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB142 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB142 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB142 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB144 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB144 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB145 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB145 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB146 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB146 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB147 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB147 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB148 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB148 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB149 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB149 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB150 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB150 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB151 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB151 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB152 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB152 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB153 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB153 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB154 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB154 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB155 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB155 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB156 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB156 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB157 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB157 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB157 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB159 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB159 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB160 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB160 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB161 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB161 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB162 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB162 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB163 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB163 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB164 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB164 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB165 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB165 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB166 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB166 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB167 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB167 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB168 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB168 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB169 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB169 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB170 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB170 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB171 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB171 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB172 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB172 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB173 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB173 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB174 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB174 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB174 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB176 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB176 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB177 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB177 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB178 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB178 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB179 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB179 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB180 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB180 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB181 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB181 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB182 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB182 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB183 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB183 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB183 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB185 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB185 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB186 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB186 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB187 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB187 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB187 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB189 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB189 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB190 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB190 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB191 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB191 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB192 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB192 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB192 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB194 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB194 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB195 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB195 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB196 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB196 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB196 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB198 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB198 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB199 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB199 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB200 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB200 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB200 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB202 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB202 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB203 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB203 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB204 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB204 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB205 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB205 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB206 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB206 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB207 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB207 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB208 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB208 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB209 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB209 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB210 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB210 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB211 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB211 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB212 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB212 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB212 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB214 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB214 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB215 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB215 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB216 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB216 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB217 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB217 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB218 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB218 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB218 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB218 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB218 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB222 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB222 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB223 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB223 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB224 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB224 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB225 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB225 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB226 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB226 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB227 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB227 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB228 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB228 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB229 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB229 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB230 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB230 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB230 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB232 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB232 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB233 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB233 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB234 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB234 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB234 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB236 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB236 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB237 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB237 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB237 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB237 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB241 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB241 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB242 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB242 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB243 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB243 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB244 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB244 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB245 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB245 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB246 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB246 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB247 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB247 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB248 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB248 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB249 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB249 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB250 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB250 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB251 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB251 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB252 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB252 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB253 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB253 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB254 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB254 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB255 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB255 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB256 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB256 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB257 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB257 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB258 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB258 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB259 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB259 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB260 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB260 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB261 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB261 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB262 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB262 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB263 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB263 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB264 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB264 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB264 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB266 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB266 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB267 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB267 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB268 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB268 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB269 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB269 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB270 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB270 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB271 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB271 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB272 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB272 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB273 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB273 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB274 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB274 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB275 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB275 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB276 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB276 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB276 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB279 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB279 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB280 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB280 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB281 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB281 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB282 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB282 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB283 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB283 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB284 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB284 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB285 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB285 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB286 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB286 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB287 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB287 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB287 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB289 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB289 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB290 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB290 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB291 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB291 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB292 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB292 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB293 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB293 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB294 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB294 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB295 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB295 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB296 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB296 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB297 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB297 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB298 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB298 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB299 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB299 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB300 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB300 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB301 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB301 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB302 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB302 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB303 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB303 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB304 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB304 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB305 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB305 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB306 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB306 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB307 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB307 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB308 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB308 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB309 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB309 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB310 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB310 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB311 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB311 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB312 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB312 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB313 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB313 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB314 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB314 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB315 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB315 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB316 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB316 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB316 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB318 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB318 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB319 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB319 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB319 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB321 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB321 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB322 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB322 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB323 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB323 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB324 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB324 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB325 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB325 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB325 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB327 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB327 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB328 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB328 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB329 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB329 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB330 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB330 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB331 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB331 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB332 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB332 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB333 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB333 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB334 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB334 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB335 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB335 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB336 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB336 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB337 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB337 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB338 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB338 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB338 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB340 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB340 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB341 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB341 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB342 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB342 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB343 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB343 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB344 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB344 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB345 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB345 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB346 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB346 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB347 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB347 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB348 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB348 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB349 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB349 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB350 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB350 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB350 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB352 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB352 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB353 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB353 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB354 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB354 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB355 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB355 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB356 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB356 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB357 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB357 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB358 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB358 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB359 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB359 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB360 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB360 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB361 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB361 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB362 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB362 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB363 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB363 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB364 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB364 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB365 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB365 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB366 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB366 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB366 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB368 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB368 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB369 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB369 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB370 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB370 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB371 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB371 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB372 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB372 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB373 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB373 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB374 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB374 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB375 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB375 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB376 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB376 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB377 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB377 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB378 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB378 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB379 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB379 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB379 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB381 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB381 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB382 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB382 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB383 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB383 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB383 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB385 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB385 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB386 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB386 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB387 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB387 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB388 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB388 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB389 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB389 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB390 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB390 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB391 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB391 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB392 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB392 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB392 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB394 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB394 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB395 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB395 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB396 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB396 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB397 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB397 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB398 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB398 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB399 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB399 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB400 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB400 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB400 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB402 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB402 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB403 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB403 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB404 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB404 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB405 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB405 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB406 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB406 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB407 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB407 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB408 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB408 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB409 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB409 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB410 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB410 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB411 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB411 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB412 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB412 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB413 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB413 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB414 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB414 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB415 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB415 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB416 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB416 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB417 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB417 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB418 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB418 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB419 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB419 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB419 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB421 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB421 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB422 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB422 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB423 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB423 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB424 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB424 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB425 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB425 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB426 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB426 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB427 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB427 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB428 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB428 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB429 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB429 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB430 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB430 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB431 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB431 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB432 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB432 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB433 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB433 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB434 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB434 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB434 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB436 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB436 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB437 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB437 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB438 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB438 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB439 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB439 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB440 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB440 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB441 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB441 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB442 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB442 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB443 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB443 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB444 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB444 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB445 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB445 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB446 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB446 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB447 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB447 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB448 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB448 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB449 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB449 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB450 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB450 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB451 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB451 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB451 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB453 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB453 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB453 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB455 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB455 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB456 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB456 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB456 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB458 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB458 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB459 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB459 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB460 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB460 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB461 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB461 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB462 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB462 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB463 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB463 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB464 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB464 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB465 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB465 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB466 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB466 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB467 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB467 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB468 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB468 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB495 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB495 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB496 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB496 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB497 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB497 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB498 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB498 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB499 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB499 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB500 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB500 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB501 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB501 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB502 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB502 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB503 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB503 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB503 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB505 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB505 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB506 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB506 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB507 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB507 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB508 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB508 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB509 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB509 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB510 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB510 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB511 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB511 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB512 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB512 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB513 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB513 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB514 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB514 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB514 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB516 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB516 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB517 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB517 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB518 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB518 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB519 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB519 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB520 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB520 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB521 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB521 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB522 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB522 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB523 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB523 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB524 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB524 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB525 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB525 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB526 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB526 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB527 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB527 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB528 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB528 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB529 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB529 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB530 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB530 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB531 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB531 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB532 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB532 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB533 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB533 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB534 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB534 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB535 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB535 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB536 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB536 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB537 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB537 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB538 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB538 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB539 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB539 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB540 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB540 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB541 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB541 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB542 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB542 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB543 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB543 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB544 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB544 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB545 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB545 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB546 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB546 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB547 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB547 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB547 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB549 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB549 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB550 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB550 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB551 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB551 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB552 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB552 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB553 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB553 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB553 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB553 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB556 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB556 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB557 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB557 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB558 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB558 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB559 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB559 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB560 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB560 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB561 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB561 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB562 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB562 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB563 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB563 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB564 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB564 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB565 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB565 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB566 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB566 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB567 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB567 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB568 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB568 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB569 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB569 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB569 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB571 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB571 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB572 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB572 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB573 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB573 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB574 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB574 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB575 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB575 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB576 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB576 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB577 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB577 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB578 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB578 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB579 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB579 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB580 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB580 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB581 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB581 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB582 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB582 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB583 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB583 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB584 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB584 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB585 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB585 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB586 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB586 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB587 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB587 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB588 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB588 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB589 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB589 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB590 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB590 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB591 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB591 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB592 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB592 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB593 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB593 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB594 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB594 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB595 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB595 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB596 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB596 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB597 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB597 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB598 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB598 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB599 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB599 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB600 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB600 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB601 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB601 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB602 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB602 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB602 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB604 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB604 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB605 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB605 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB606 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB606 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB607 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB607 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB608 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB608 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB609 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB609 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB610 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB610 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB611 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB611 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB612 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB612 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB613 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB613 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB614 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB614 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB615 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB615 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB616 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB616 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB617 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB617 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB618 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB618 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB619 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB619 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB620 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB620 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB621 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB621 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB622 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB622 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB623 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB623 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB624 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB624 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB625 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB625 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB626 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB626 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB627 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB627 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB628 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB628 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB629 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB629 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB630 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB630 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB631 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB631 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB631 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB633 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB633 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB634 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB634 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB634 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB636 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB636 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB637 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB637 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB638 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB638 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB639 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB639 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB639 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB641 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB641 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB642 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB642 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB643 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB643 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB643 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB645 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB645 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB646 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB646 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB646 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB646 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB646 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB650 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB650 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB651 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB651 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB652 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB652 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB653 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB653 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB654 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB654 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB655 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB655 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB656 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB656 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB657 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB657 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB658 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB658 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB659 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB659 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB660 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB660 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB661 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB661 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB662 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB662 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB662 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB664 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB664 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB665 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB665 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB666 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB666 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB666 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB668 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB668 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB669 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB669 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB670 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB670 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB671 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB671 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB672 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB672 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB673 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB673 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB674 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB674 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB675 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB675 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB676 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB676 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB677 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB677 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB677 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB679 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB679 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB680 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB680 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB680 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB682 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB682 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB683 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB683 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB684 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB684 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB685 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB685 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB686 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB686 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB687 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB687 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB688 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB688 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB689 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB689 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB690 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB690 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB691 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB691 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB692 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB692 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB693 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB693 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB694 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB694 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB695 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB695 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB695 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB697 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB697 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB698 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB698 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB699 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB699 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB700 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB700 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB701 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB701 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB702 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB702 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB703 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB703 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB704 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB704 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB705 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB705 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB706 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB706 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB707 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB707 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB708 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB708 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB709 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB709 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB710 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB710 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB711 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB711 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB712 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB712 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB712 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB714 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB714 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB715 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB715 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB716 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB716 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB717 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB717 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB718 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB718 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB719 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB719 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB720 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB720 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB720 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB722 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB722 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s if score @s ncmBPMB722 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB724 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB724 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB725 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB725 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB726 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB726 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB727 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB727 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB728 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB728 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB729 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB729 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB730 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB730 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB731 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB731 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB732 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB732 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB733 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB733 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB734 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB734 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB735 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB735 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB736 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB736 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB737 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB737 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB738 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB738 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB739 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB739 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB740 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB740 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB741 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB741 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB742 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB742 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB743 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB743 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB744 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB744 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB745 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB745 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB746 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB746 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB747 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB747 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB748 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB748 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB749 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB749 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB750 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB750 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB751 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB751 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB752 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB752 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB753 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB753 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB754 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB754 matches 1.. run scoreboard players set @s ncmBPMBFire 1
execute as @a at @s anchored eyes if score @s ncmBPMB756 matches 1.. run function ncm:checks/blockplace/util/mb_ray
execute as @a at @s if score @s ncmBPMB756 matches 1.. run scoreboard players set @s ncmBPMBFire 1









execute as @a if score @s ncmBPMBFire matches 1 run scoreboard players set @s ncmFailedBPMB 0
execute as @a if score @s ncmBPMBFire matches 1 run tellraw @s[scores={inputR=1}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"BlockPlace","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"MissingBlock","color":"light_purple"},{"text":" {...}","color":"gray"}]
execute as @a if score @s ncmBPMBFire matches 1 run tellraw @a[scores={inputR=2}] ["",{"text":"NCM","color":"dark_gray"},{"text":": ","color":"gray"},{"selector":"@s","color":"gray"},{"text":">> ","color":"gray"},{"text":"BlockPlace","color":"light_purple"},{"text":".","color":"light_purple"},{"text":"MissingBlock","color":"light_purple"},{"text":" {...}","color":"gray"}]



scoreboard players set @a ncmBPMBRange 0
scoreboard players set @a ncmBPMBFire 0


scoreboard players set @a ncmBPMB0 0
scoreboard players set @a ncmBPMB1 0
scoreboard players set @a ncmBPMB2 0
scoreboard players set @a ncmBPMB3 0
scoreboard players set @a ncmBPMB4 0
scoreboard players set @a ncmBPMB5 0
scoreboard players set @a ncmBPMB6 0
scoreboard players set @a ncmBPMB7 0
scoreboard players set @a ncmBPMB8 0
scoreboard players set @a ncmBPMB9 0
scoreboard players set @a ncmBPMB10 0
scoreboard players set @a ncmBPMB11 0
scoreboard players set @a ncmBPMB12 0
scoreboard players set @a ncmBPMB14 0
scoreboard players set @a ncmBPMB15 0
scoreboard players set @a ncmBPMB16 0
scoreboard players set @a ncmBPMB17 0
scoreboard players set @a ncmBPMB18 0
scoreboard players set @a ncmBPMB19 0
scoreboard players set @a ncmBPMB20 0
scoreboard players set @a ncmBPMB21 0
scoreboard players set @a ncmBPMB22 0
scoreboard players set @a ncmBPMB25 0
scoreboard players set @a ncmBPMB26 0
scoreboard players set @a ncmBPMB28 0
scoreboard players set @a ncmBPMB29 0
scoreboard players set @a ncmBPMB30 0
scoreboard players set @a ncmBPMB31 0
scoreboard players set @a ncmBPMB32 0
scoreboard players set @a ncmBPMB33 0
scoreboard players set @a ncmBPMB35 0
scoreboard players set @a ncmBPMB36 0
scoreboard players set @a ncmBPMB37 0
scoreboard players set @a ncmBPMB38 0
scoreboard players set @a ncmBPMB39 0
scoreboard players set @a ncmBPMB40 0
scoreboard players set @a ncmBPMB41 0
scoreboard players set @a ncmBPMB42 0
scoreboard players set @a ncmBPMB43 0
scoreboard players set @a ncmBPMB44 0
scoreboard players set @a ncmBPMB45 0
scoreboard players set @a ncmBPMB46 0
scoreboard players set @a ncmBPMB47 0
scoreboard players set @a ncmBPMB48 0
scoreboard players set @a ncmBPMB50 0
scoreboard players set @a ncmBPMB52 0
scoreboard players set @a ncmBPMB53 0
scoreboard players set @a ncmBPMB54 0
scoreboard players set @a ncmBPMB55 0
scoreboard players set @a ncmBPMB56 0
scoreboard players set @a ncmBPMB57 0
scoreboard players set @a ncmBPMB58 0
scoreboard players set @a ncmBPMB59 0
scoreboard players set @a ncmBPMB60 0
scoreboard players set @a ncmBPMB62 0
scoreboard players set @a ncmBPMB63 0
scoreboard players set @a ncmBPMB64 0
scoreboard players set @a ncmBPMB65 0
scoreboard players set @a ncmBPMB66 0
scoreboard players set @a ncmBPMB67 0
scoreboard players set @a ncmBPMB68 0
scoreboard players set @a ncmBPMB69 0
scoreboard players set @a ncmBPMB70 0
scoreboard players set @a ncmBPMB71 0
scoreboard players set @a ncmBPMB72 0
scoreboard players set @a ncmBPMB73 0
scoreboard players set @a ncmBPMB74 0
scoreboard players set @a ncmBPMB75 0
scoreboard players set @a ncmBPMB77 0
scoreboard players set @a ncmBPMB78 0
scoreboard players set @a ncmBPMB79 0
scoreboard players set @a ncmBPMB80 0
scoreboard players set @a ncmBPMB81 0
scoreboard players set @a ncmBPMB82 0
scoreboard players set @a ncmBPMB84 0
scoreboard players set @a ncmBPMB85 0
scoreboard players set @a ncmBPMB86 0
scoreboard players set @a ncmBPMB87 0
scoreboard players set @a ncmBPMB88 0
scoreboard players set @a ncmBPMB89 0
scoreboard players set @a ncmBPMB90 0
scoreboard players set @a ncmBPMB91 0
scoreboard players set @a ncmBPMB92 0
scoreboard players set @a ncmBPMB93 0
scoreboard players set @a ncmBPMB94 0
scoreboard players set @a ncmBPMB95 0
scoreboard players set @a ncmBPMB96 0
scoreboard players set @a ncmBPMB97 0
scoreboard players set @a ncmBPMB98 0
scoreboard players set @a ncmBPMB99 0
scoreboard players set @a ncmBPMB100 0
scoreboard players set @a ncmBPMB102 0
scoreboard players set @a ncmBPMB104 0
scoreboard players set @a ncmBPMB105 0
scoreboard players set @a ncmBPMB106 0
scoreboard players set @a ncmBPMB108 0
scoreboard players set @a ncmBPMB109 0
scoreboard players set @a ncmBPMB110 0
scoreboard players set @a ncmBPMB112 0
scoreboard players set @a ncmBPMB113 0
scoreboard players set @a ncmBPMB114 0
scoreboard players set @a ncmBPMB116 0
scoreboard players set @a ncmBPMB117 0
scoreboard players set @a ncmBPMB118 0
scoreboard players set @a ncmBPMB119 0
scoreboard players set @a ncmBPMB120 0
scoreboard players set @a ncmBPMB121 0
scoreboard players set @a ncmBPMB122 0
scoreboard players set @a ncmBPMB123 0
scoreboard players set @a ncmBPMB124 0
scoreboard players set @a ncmBPMB125 0
scoreboard players set @a ncmBPMB126 0
scoreboard players set @a ncmBPMB127 0
scoreboard players set @a ncmBPMB128 0
scoreboard players set @a ncmBPMB129 0
scoreboard players set @a ncmBPMB130 0
scoreboard players set @a ncmBPMB131 0
scoreboard players set @a ncmBPMB132 0
scoreboard players set @a ncmBPMB133 0
scoreboard players set @a ncmBPMB135 0
scoreboard players set @a ncmBPMB136 0
scoreboard players set @a ncmBPMB137 0
scoreboard players set @a ncmBPMB138 0
scoreboard players set @a ncmBPMB139 0
scoreboard players set @a ncmBPMB140 0
scoreboard players set @a ncmBPMB141 0
scoreboard players set @a ncmBPMB142 0
scoreboard players set @a ncmBPMB144 0
scoreboard players set @a ncmBPMB145 0
scoreboard players set @a ncmBPMB146 0
scoreboard players set @a ncmBPMB147 0
scoreboard players set @a ncmBPMB148 0
scoreboard players set @a ncmBPMB149 0
scoreboard players set @a ncmBPMB150 0
scoreboard players set @a ncmBPMB151 0
scoreboard players set @a ncmBPMB152 0
scoreboard players set @a ncmBPMB153 0
scoreboard players set @a ncmBPMB154 0
scoreboard players set @a ncmBPMB155 0
scoreboard players set @a ncmBPMB156 0
scoreboard players set @a ncmBPMB157 0
scoreboard players set @a ncmBPMB159 0
scoreboard players set @a ncmBPMB160 0
scoreboard players set @a ncmBPMB161 0
scoreboard players set @a ncmBPMB162 0
scoreboard players set @a ncmBPMB163 0
scoreboard players set @a ncmBPMB164 0
scoreboard players set @a ncmBPMB165 0
scoreboard players set @a ncmBPMB166 0
scoreboard players set @a ncmBPMB167 0
scoreboard players set @a ncmBPMB168 0
scoreboard players set @a ncmBPMB169 0
scoreboard players set @a ncmBPMB170 0
scoreboard players set @a ncmBPMB171 0
scoreboard players set @a ncmBPMB172 0
scoreboard players set @a ncmBPMB173 0
scoreboard players set @a ncmBPMB174 0
scoreboard players set @a ncmBPMB176 0
scoreboard players set @a ncmBPMB177 0
scoreboard players set @a ncmBPMB178 0
scoreboard players set @a ncmBPMB179 0
scoreboard players set @a ncmBPMB180 0
scoreboard players set @a ncmBPMB181 0
scoreboard players set @a ncmBPMB182 0
scoreboard players set @a ncmBPMB183 0
scoreboard players set @a ncmBPMB185 0
scoreboard players set @a ncmBPMB186 0
scoreboard players set @a ncmBPMB187 0
scoreboard players set @a ncmBPMB189 0
scoreboard players set @a ncmBPMB190 0
scoreboard players set @a ncmBPMB191 0
scoreboard players set @a ncmBPMB192 0
scoreboard players set @a ncmBPMB194 0
scoreboard players set @a ncmBPMB195 0
scoreboard players set @a ncmBPMB196 0
scoreboard players set @a ncmBPMB198 0
scoreboard players set @a ncmBPMB199 0
scoreboard players set @a ncmBPMB200 0
scoreboard players set @a ncmBPMB202 0
scoreboard players set @a ncmBPMB203 0
scoreboard players set @a ncmBPMB204 0
scoreboard players set @a ncmBPMB205 0
scoreboard players set @a ncmBPMB206 0
scoreboard players set @a ncmBPMB207 0
scoreboard players set @a ncmBPMB208 0
scoreboard players set @a ncmBPMB209 0
scoreboard players set @a ncmBPMB210 0
scoreboard players set @a ncmBPMB211 0
scoreboard players set @a ncmBPMB212 0
scoreboard players set @a ncmBPMB214 0
scoreboard players set @a ncmBPMB215 0
scoreboard players set @a ncmBPMB216 0
scoreboard players set @a ncmBPMB217 0
scoreboard players set @a ncmBPMB218 0
scoreboard players set @a ncmBPMB222 0
scoreboard players set @a ncmBPMB223 0
scoreboard players set @a ncmBPMB224 0
scoreboard players set @a ncmBPMB225 0
scoreboard players set @a ncmBPMB226 0
scoreboard players set @a ncmBPMB227 0
scoreboard players set @a ncmBPMB228 0
scoreboard players set @a ncmBPMB229 0
scoreboard players set @a ncmBPMB230 0
scoreboard players set @a ncmBPMB232 0
scoreboard players set @a ncmBPMB233 0
scoreboard players set @a ncmBPMB234 0
scoreboard players set @a ncmBPMB236 0
scoreboard players set @a ncmBPMB237 0
scoreboard players set @a ncmBPMB241 0
scoreboard players set @a ncmBPMB242 0
scoreboard players set @a ncmBPMB243 0
scoreboard players set @a ncmBPMB244 0
scoreboard players set @a ncmBPMB245 0
scoreboard players set @a ncmBPMB246 0
scoreboard players set @a ncmBPMB247 0
scoreboard players set @a ncmBPMB248 0
scoreboard players set @a ncmBPMB249 0
scoreboard players set @a ncmBPMB250 0
scoreboard players set @a ncmBPMB251 0
scoreboard players set @a ncmBPMB252 0
scoreboard players set @a ncmBPMB253 0
scoreboard players set @a ncmBPMB254 0
scoreboard players set @a ncmBPMB255 0
scoreboard players set @a ncmBPMB256 0
scoreboard players set @a ncmBPMB257 0
scoreboard players set @a ncmBPMB258 0
scoreboard players set @a ncmBPMB259 0
scoreboard players set @a ncmBPMB260 0
scoreboard players set @a ncmBPMB261 0
scoreboard players set @a ncmBPMB262 0
scoreboard players set @a ncmBPMB263 0
scoreboard players set @a ncmBPMB264 0
scoreboard players set @a ncmBPMB266 0
scoreboard players set @a ncmBPMB267 0
scoreboard players set @a ncmBPMB268 0
scoreboard players set @a ncmBPMB269 0
scoreboard players set @a ncmBPMB270 0
scoreboard players set @a ncmBPMB271 0
scoreboard players set @a ncmBPMB272 0
scoreboard players set @a ncmBPMB273 0
scoreboard players set @a ncmBPMB274 0
scoreboard players set @a ncmBPMB275 0
scoreboard players set @a ncmBPMB276 0
scoreboard players set @a ncmBPMB279 0
scoreboard players set @a ncmBPMB280 0
scoreboard players set @a ncmBPMB281 0
scoreboard players set @a ncmBPMB282 0
scoreboard players set @a ncmBPMB283 0
scoreboard players set @a ncmBPMB284 0
scoreboard players set @a ncmBPMB285 0
scoreboard players set @a ncmBPMB286 0
scoreboard players set @a ncmBPMB287 0
scoreboard players set @a ncmBPMB289 0
scoreboard players set @a ncmBPMB290 0
scoreboard players set @a ncmBPMB291 0
scoreboard players set @a ncmBPMB292 0
scoreboard players set @a ncmBPMB293 0
scoreboard players set @a ncmBPMB294 0
scoreboard players set @a ncmBPMB295 0
scoreboard players set @a ncmBPMB296 0
scoreboard players set @a ncmBPMB297 0
scoreboard players set @a ncmBPMB298 0
scoreboard players set @a ncmBPMB299 0
scoreboard players set @a ncmBPMB300 0
scoreboard players set @a ncmBPMB301 0
scoreboard players set @a ncmBPMB302 0
scoreboard players set @a ncmBPMB303 0
scoreboard players set @a ncmBPMB304 0
scoreboard players set @a ncmBPMB305 0
scoreboard players set @a ncmBPMB306 0
scoreboard players set @a ncmBPMB307 0
scoreboard players set @a ncmBPMB308 0
scoreboard players set @a ncmBPMB309 0
scoreboard players set @a ncmBPMB310 0
scoreboard players set @a ncmBPMB311 0
scoreboard players set @a ncmBPMB312 0
scoreboard players set @a ncmBPMB313 0
scoreboard players set @a ncmBPMB314 0
scoreboard players set @a ncmBPMB315 0
scoreboard players set @a ncmBPMB316 0
scoreboard players set @a ncmBPMB318 0
scoreboard players set @a ncmBPMB319 0
scoreboard players set @a ncmBPMB321 0
scoreboard players set @a ncmBPMB322 0
scoreboard players set @a ncmBPMB323 0
scoreboard players set @a ncmBPMB324 0
scoreboard players set @a ncmBPMB325 0
scoreboard players set @a ncmBPMB327 0
scoreboard players set @a ncmBPMB328 0
scoreboard players set @a ncmBPMB329 0
scoreboard players set @a ncmBPMB330 0
scoreboard players set @a ncmBPMB331 0
scoreboard players set @a ncmBPMB332 0
scoreboard players set @a ncmBPMB333 0
scoreboard players set @a ncmBPMB334 0
scoreboard players set @a ncmBPMB335 0
scoreboard players set @a ncmBPMB336 0
scoreboard players set @a ncmBPMB337 0
scoreboard players set @a ncmBPMB338 0
scoreboard players set @a ncmBPMB340 0
scoreboard players set @a ncmBPMB341 0
scoreboard players set @a ncmBPMB342 0
scoreboard players set @a ncmBPMB343 0
scoreboard players set @a ncmBPMB344 0
scoreboard players set @a ncmBPMB345 0
scoreboard players set @a ncmBPMB346 0
scoreboard players set @a ncmBPMB347 0
scoreboard players set @a ncmBPMB348 0
scoreboard players set @a ncmBPMB349 0
scoreboard players set @a ncmBPMB350 0
scoreboard players set @a ncmBPMB352 0
scoreboard players set @a ncmBPMB353 0
scoreboard players set @a ncmBPMB354 0
scoreboard players set @a ncmBPMB355 0
scoreboard players set @a ncmBPMB356 0
scoreboard players set @a ncmBPMB357 0
scoreboard players set @a ncmBPMB358 0
scoreboard players set @a ncmBPMB359 0
scoreboard players set @a ncmBPMB360 0
scoreboard players set @a ncmBPMB361 0
scoreboard players set @a ncmBPMB362 0
scoreboard players set @a ncmBPMB363 0
scoreboard players set @a ncmBPMB364 0
scoreboard players set @a ncmBPMB365 0
scoreboard players set @a ncmBPMB366 0
scoreboard players set @a ncmBPMB368 0
scoreboard players set @a ncmBPMB369 0
scoreboard players set @a ncmBPMB370 0
scoreboard players set @a ncmBPMB371 0
scoreboard players set @a ncmBPMB372 0
scoreboard players set @a ncmBPMB373 0
scoreboard players set @a ncmBPMB374 0
scoreboard players set @a ncmBPMB375 0
scoreboard players set @a ncmBPMB376 0
scoreboard players set @a ncmBPMB377 0
scoreboard players set @a ncmBPMB378 0
scoreboard players set @a ncmBPMB379 0
scoreboard players set @a ncmBPMB381 0
scoreboard players set @a ncmBPMB382 0
scoreboard players set @a ncmBPMB383 0
scoreboard players set @a ncmBPMB385 0
scoreboard players set @a ncmBPMB386 0
scoreboard players set @a ncmBPMB387 0
scoreboard players set @a ncmBPMB388 0
scoreboard players set @a ncmBPMB389 0
scoreboard players set @a ncmBPMB390 0
scoreboard players set @a ncmBPMB391 0
scoreboard players set @a ncmBPMB392 0
scoreboard players set @a ncmBPMB394 0
scoreboard players set @a ncmBPMB395 0
scoreboard players set @a ncmBPMB396 0
scoreboard players set @a ncmBPMB397 0
scoreboard players set @a ncmBPMB398 0
scoreboard players set @a ncmBPMB399 0
scoreboard players set @a ncmBPMB400 0
scoreboard players set @a ncmBPMB402 0
scoreboard players set @a ncmBPMB403 0
scoreboard players set @a ncmBPMB404 0
scoreboard players set @a ncmBPMB405 0
scoreboard players set @a ncmBPMB406 0
scoreboard players set @a ncmBPMB407 0
scoreboard players set @a ncmBPMB408 0
scoreboard players set @a ncmBPMB409 0
scoreboard players set @a ncmBPMB410 0
scoreboard players set @a ncmBPMB411 0
scoreboard players set @a ncmBPMB412 0
scoreboard players set @a ncmBPMB413 0
scoreboard players set @a ncmBPMB414 0
scoreboard players set @a ncmBPMB415 0
scoreboard players set @a ncmBPMB416 0
scoreboard players set @a ncmBPMB417 0
scoreboard players set @a ncmBPMB418 0
scoreboard players set @a ncmBPMB419 0
scoreboard players set @a ncmBPMB421 0
scoreboard players set @a ncmBPMB422 0
scoreboard players set @a ncmBPMB423 0
scoreboard players set @a ncmBPMB424 0
scoreboard players set @a ncmBPMB425 0
scoreboard players set @a ncmBPMB426 0
scoreboard players set @a ncmBPMB427 0
scoreboard players set @a ncmBPMB428 0
scoreboard players set @a ncmBPMB429 0
scoreboard players set @a ncmBPMB430 0
scoreboard players set @a ncmBPMB431 0
scoreboard players set @a ncmBPMB432 0
scoreboard players set @a ncmBPMB433 0
scoreboard players set @a ncmBPMB434 0
scoreboard players set @a ncmBPMB436 0
scoreboard players set @a ncmBPMB437 0
scoreboard players set @a ncmBPMB438 0
scoreboard players set @a ncmBPMB439 0
scoreboard players set @a ncmBPMB440 0
scoreboard players set @a ncmBPMB441 0
scoreboard players set @a ncmBPMB442 0
scoreboard players set @a ncmBPMB443 0
scoreboard players set @a ncmBPMB444 0
scoreboard players set @a ncmBPMB445 0
scoreboard players set @a ncmBPMB446 0
scoreboard players set @a ncmBPMB447 0
scoreboard players set @a ncmBPMB448 0
scoreboard players set @a ncmBPMB449 0
scoreboard players set @a ncmBPMB450 0
scoreboard players set @a ncmBPMB451 0
scoreboard players set @a ncmBPMB453 0
scoreboard players set @a ncmBPMB455 0
scoreboard players set @a ncmBPMB456 0
scoreboard players set @a ncmBPMB458 0
scoreboard players set @a ncmBPMB459 0
scoreboard players set @a ncmBPMB460 0
scoreboard players set @a ncmBPMB461 0
scoreboard players set @a ncmBPMB462 0
scoreboard players set @a ncmBPMB463 0
scoreboard players set @a ncmBPMB464 0
scoreboard players set @a ncmBPMB465 0
scoreboard players set @a ncmBPMB466 0
scoreboard players set @a ncmBPMB467 0
scoreboard players set @a ncmBPMB468 0
scoreboard players set @a ncmBPMB495 0
scoreboard players set @a ncmBPMB496 0
scoreboard players set @a ncmBPMB497 0
scoreboard players set @a ncmBPMB498 0
scoreboard players set @a ncmBPMB499 0
scoreboard players set @a ncmBPMB500 0
scoreboard players set @a ncmBPMB501 0
scoreboard players set @a ncmBPMB502 0
scoreboard players set @a ncmBPMB503 0
scoreboard players set @a ncmBPMB505 0
scoreboard players set @a ncmBPMB506 0
scoreboard players set @a ncmBPMB507 0
scoreboard players set @a ncmBPMB508 0
scoreboard players set @a ncmBPMB509 0
scoreboard players set @a ncmBPMB510 0
scoreboard players set @a ncmBPMB511 0
scoreboard players set @a ncmBPMB512 0
scoreboard players set @a ncmBPMB513 0
scoreboard players set @a ncmBPMB514 0
scoreboard players set @a ncmBPMB516 0
scoreboard players set @a ncmBPMB517 0
scoreboard players set @a ncmBPMB518 0
scoreboard players set @a ncmBPMB519 0
scoreboard players set @a ncmBPMB520 0
scoreboard players set @a ncmBPMB521 0
scoreboard players set @a ncmBPMB522 0
scoreboard players set @a ncmBPMB523 0
scoreboard players set @a ncmBPMB524 0
scoreboard players set @a ncmBPMB525 0
scoreboard players set @a ncmBPMB526 0
scoreboard players set @a ncmBPMB527 0
scoreboard players set @a ncmBPMB528 0
scoreboard players set @a ncmBPMB529 0
scoreboard players set @a ncmBPMB530 0
scoreboard players set @a ncmBPMB531 0
scoreboard players set @a ncmBPMB532 0
scoreboard players set @a ncmBPMB533 0
scoreboard players set @a ncmBPMB534 0
scoreboard players set @a ncmBPMB535 0
scoreboard players set @a ncmBPMB536 0
scoreboard players set @a ncmBPMB537 0
scoreboard players set @a ncmBPMB538 0
scoreboard players set @a ncmBPMB539 0
scoreboard players set @a ncmBPMB540 0
scoreboard players set @a ncmBPMB541 0
scoreboard players set @a ncmBPMB542 0
scoreboard players set @a ncmBPMB543 0
scoreboard players set @a ncmBPMB544 0
scoreboard players set @a ncmBPMB545 0
scoreboard players set @a ncmBPMB546 0
scoreboard players set @a ncmBPMB547 0
scoreboard players set @a ncmBPMB549 0
scoreboard players set @a ncmBPMB550 0
scoreboard players set @a ncmBPMB551 0
scoreboard players set @a ncmBPMB552 0
scoreboard players set @a ncmBPMB553 0
scoreboard players set @a ncmBPMB556 0
scoreboard players set @a ncmBPMB557 0
scoreboard players set @a ncmBPMB558 0
scoreboard players set @a ncmBPMB559 0
scoreboard players set @a ncmBPMB560 0
scoreboard players set @a ncmBPMB561 0
scoreboard players set @a ncmBPMB562 0
scoreboard players set @a ncmBPMB563 0
scoreboard players set @a ncmBPMB564 0
scoreboard players set @a ncmBPMB565 0
scoreboard players set @a ncmBPMB566 0
scoreboard players set @a ncmBPMB567 0
scoreboard players set @a ncmBPMB568 0
scoreboard players set @a ncmBPMB569 0
scoreboard players set @a ncmBPMB571 0
scoreboard players set @a ncmBPMB572 0
scoreboard players set @a ncmBPMB573 0
scoreboard players set @a ncmBPMB574 0
scoreboard players set @a ncmBPMB575 0
scoreboard players set @a ncmBPMB576 0
scoreboard players set @a ncmBPMB577 0
scoreboard players set @a ncmBPMB578 0
scoreboard players set @a ncmBPMB579 0
scoreboard players set @a ncmBPMB580 0
scoreboard players set @a ncmBPMB581 0
scoreboard players set @a ncmBPMB582 0
scoreboard players set @a ncmBPMB583 0
scoreboard players set @a ncmBPMB584 0
scoreboard players set @a ncmBPMB585 0
scoreboard players set @a ncmBPMB586 0
scoreboard players set @a ncmBPMB587 0
scoreboard players set @a ncmBPMB588 0
scoreboard players set @a ncmBPMB589 0
scoreboard players set @a ncmBPMB590 0
scoreboard players set @a ncmBPMB591 0
scoreboard players set @a ncmBPMB592 0
scoreboard players set @a ncmBPMB593 0
scoreboard players set @a ncmBPMB594 0
scoreboard players set @a ncmBPMB595 0
scoreboard players set @a ncmBPMB596 0
scoreboard players set @a ncmBPMB597 0
scoreboard players set @a ncmBPMB598 0
scoreboard players set @a ncmBPMB599 0
scoreboard players set @a ncmBPMB600 0
scoreboard players set @a ncmBPMB601 0
scoreboard players set @a ncmBPMB602 0
scoreboard players set @a ncmBPMB604 0
scoreboard players set @a ncmBPMB605 0
scoreboard players set @a ncmBPMB606 0
scoreboard players set @a ncmBPMB607 0
scoreboard players set @a ncmBPMB608 0
scoreboard players set @a ncmBPMB609 0
scoreboard players set @a ncmBPMB610 0
scoreboard players set @a ncmBPMB611 0
scoreboard players set @a ncmBPMB612 0
scoreboard players set @a ncmBPMB613 0
scoreboard players set @a ncmBPMB614 0
scoreboard players set @a ncmBPMB615 0
scoreboard players set @a ncmBPMB616 0
scoreboard players set @a ncmBPMB617 0
scoreboard players set @a ncmBPMB618 0
scoreboard players set @a ncmBPMB619 0
scoreboard players set @a ncmBPMB620 0
scoreboard players set @a ncmBPMB621 0
scoreboard players set @a ncmBPMB622 0
scoreboard players set @a ncmBPMB623 0
scoreboard players set @a ncmBPMB624 0
scoreboard players set @a ncmBPMB625 0
scoreboard players set @a ncmBPMB626 0
scoreboard players set @a ncmBPMB627 0
scoreboard players set @a ncmBPMB628 0
scoreboard players set @a ncmBPMB629 0
scoreboard players set @a ncmBPMB630 0
scoreboard players set @a ncmBPMB631 0
scoreboard players set @a ncmBPMB633 0
scoreboard players set @a ncmBPMB634 0
scoreboard players set @a ncmBPMB636 0
scoreboard players set @a ncmBPMB637 0
scoreboard players set @a ncmBPMB638 0
scoreboard players set @a ncmBPMB639 0
scoreboard players set @a ncmBPMB641 0
scoreboard players set @a ncmBPMB642 0
scoreboard players set @a ncmBPMB643 0
scoreboard players set @a ncmBPMB645 0
scoreboard players set @a ncmBPMB646 0
scoreboard players set @a ncmBPMB650 0
scoreboard players set @a ncmBPMB651 0
scoreboard players set @a ncmBPMB652 0
scoreboard players set @a ncmBPMB653 0
scoreboard players set @a ncmBPMB654 0
scoreboard players set @a ncmBPMB655 0
scoreboard players set @a ncmBPMB656 0
scoreboard players set @a ncmBPMB657 0
scoreboard players set @a ncmBPMB658 0
scoreboard players set @a ncmBPMB659 0
scoreboard players set @a ncmBPMB660 0
scoreboard players set @a ncmBPMB661 0
scoreboard players set @a ncmBPMB662 0
scoreboard players set @a ncmBPMB664 0
scoreboard players set @a ncmBPMB665 0
scoreboard players set @a ncmBPMB666 0
scoreboard players set @a ncmBPMB668 0
scoreboard players set @a ncmBPMB669 0
scoreboard players set @a ncmBPMB670 0
scoreboard players set @a ncmBPMB671 0
scoreboard players set @a ncmBPMB672 0
scoreboard players set @a ncmBPMB673 0
scoreboard players set @a ncmBPMB674 0
scoreboard players set @a ncmBPMB675 0
scoreboard players set @a ncmBPMB676 0
scoreboard players set @a ncmBPMB677 0
scoreboard players set @a ncmBPMB679 0
scoreboard players set @a ncmBPMB680 0
scoreboard players set @a ncmBPMB682 0
scoreboard players set @a ncmBPMB683 0
scoreboard players set @a ncmBPMB684 0
scoreboard players set @a ncmBPMB685 0
scoreboard players set @a ncmBPMB686 0
scoreboard players set @a ncmBPMB687 0
scoreboard players set @a ncmBPMB688 0
scoreboard players set @a ncmBPMB689 0
scoreboard players set @a ncmBPMB690 0
scoreboard players set @a ncmBPMB691 0
scoreboard players set @a ncmBPMB692 0
scoreboard players set @a ncmBPMB693 0
scoreboard players set @a ncmBPMB694 0
scoreboard players set @a ncmBPMB695 0
scoreboard players set @a ncmBPMB697 0
scoreboard players set @a ncmBPMB698 0
scoreboard players set @a ncmBPMB699 0
scoreboard players set @a ncmBPMB700 0
scoreboard players set @a ncmBPMB701 0
scoreboard players set @a ncmBPMB702 0
scoreboard players set @a ncmBPMB703 0
scoreboard players set @a ncmBPMB704 0
scoreboard players set @a ncmBPMB705 0
scoreboard players set @a ncmBPMB706 0
scoreboard players set @a ncmBPMB707 0
scoreboard players set @a ncmBPMB708 0
scoreboard players set @a ncmBPMB709 0
scoreboard players set @a ncmBPMB710 0
scoreboard players set @a ncmBPMB711 0
scoreboard players set @a ncmBPMB712 0
scoreboard players set @a ncmBPMB714 0
scoreboard players set @a ncmBPMB715 0
scoreboard players set @a ncmBPMB716 0
scoreboard players set @a ncmBPMB717 0
scoreboard players set @a ncmBPMB718 0
scoreboard players set @a ncmBPMB719 0
scoreboard players set @a ncmBPMB720 0
scoreboard players set @a ncmBPMB722 0
scoreboard players set @a ncmBPMB724 0
scoreboard players set @a ncmBPMB725 0
scoreboard players set @a ncmBPMB726 0
scoreboard players set @a ncmBPMB727 0
scoreboard players set @a ncmBPMB728 0
scoreboard players set @a ncmBPMB729 0
scoreboard players set @a ncmBPMB730 0
scoreboard players set @a ncmBPMB731 0
scoreboard players set @a ncmBPMB732 0
scoreboard players set @a ncmBPMB733 0
scoreboard players set @a ncmBPMB734 0
scoreboard players set @a ncmBPMB735 0
scoreboard players set @a ncmBPMB736 0
scoreboard players set @a ncmBPMB737 0
scoreboard players set @a ncmBPMB738 0
scoreboard players set @a ncmBPMB739 0
scoreboard players set @a ncmBPMB740 0
scoreboard players set @a ncmBPMB741 0
scoreboard players set @a ncmBPMB742 0
scoreboard players set @a ncmBPMB743 0
scoreboard players set @a ncmBPMB744 0
scoreboard players set @a ncmBPMB745 0
scoreboard players set @a ncmBPMB746 0
scoreboard players set @a ncmBPMB747 0
scoreboard players set @a ncmBPMB748 0
scoreboard players set @a ncmBPMB749 0
scoreboard players set @a ncmBPMB750 0
scoreboard players set @a ncmBPMB751 0
scoreboard players set @a ncmBPMB752 0
scoreboard players set @a ncmBPMB753 0
scoreboard players set @a ncmBPMB754 0
scoreboard players set @a ncmBPMB756 0
