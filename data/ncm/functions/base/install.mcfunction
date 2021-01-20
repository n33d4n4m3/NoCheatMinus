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
# Description:  This function gets fired after an update or during the first installation routine. It updates/adds the essential scoreboard objectives, loads the default configuration file, and sets necessary (constant) values.
# Sort:         The "scoreboard objectives add" commands are sorted by their affiliation to a check/system routine.
# Author:       n33d4n4m3
# ...

# -----------------
# NoCheatMinus base
# -----------------

scoreboard objectives add ncmMainVersion dummy
scoreboard objectives add ncmSubVersion dummy
scoreboard objectives add ncmRevVersion dummy

scoreboard players set DataHolder ncmMainVersion 0
scoreboard players set DataHolder ncmSubVersion 0
scoreboard players set DataHolder ncmRevVersion 0

scoreboard objectives add ncmIsSnapshot dummy
scoreboard objectives add ncmYear dummy
scoreboard objectives add ncmWeek dummy
scoreboard objectives add ncmChar dummy

scoreboard players set DataHolder ncmIsSnapshot 0
scoreboard players set DataHolder ncmYear 0
scoreboard players set DataHolder ncmWeek 0
scoreboard players set DataHolder ncmChar 0

# UUID
scoreboard objectives add globalUUID dummy
scoreboard objectives add hasUUID dummy
scoreboard objectives add UUID dummy

# --------------------
# Configuration values
# --------------------

scoreboard objectives add ncmCC dummy


# Appropriate (NoFall/FallDamage)
scoreboard objectives add ncmc_ap_nf_1 dummy

# Appropriate (Speed (WalkSpeed))
# Maximum walk value (no ice) 230
scoreboard objectives add ncmc_ap_ws_1 dummy

# Maximum walk value (on ice) 260
scoreboard objectives add ncmc_ap_ws_2 dummy

# Maximum walk value (no ice, speed I) 280
scoreboard objectives add ncmc_ap_ws_3 dummy

# Maximum walk value (on ice, speed I) 290
scoreboard objectives add ncmc_ap_ws_4 dummy

# Maximum walk value (no ice, speed II) 290
scoreboard objectives add ncmc_ap_ws_5 dummy

# Maximum walk value (on ice, speed II) 310
scoreboard objectives add ncmc_ap_ws_6 dummy

# Maximum ticks 10
scoreboard objectives add ncmc_ap_ws_7 dummy

# Lost sprint counter 20
scoreboard objectives add ncmc_ap_ws_8 dummy


# Appropriate (Speed (SprintSpeed))
# Maximum asynchronous Sprint jump false positive timer 20
scoreboard objectives add ncmc_ap_sp_1 dummy
# Maximum asynchronous Sprint jump false positive timer 20
scoreboard objectives add ncmc_ap_sp_2 dummy
# Maximum on ice false positive timer 20
scoreboard objectives add ncmc_ap_sp_3 dummy
# Maximum cm in one tick without effect 30
scoreboard objectives add ncmc_ap_sp_4 dummy
# Maximum cm in one tick with speed I 35
scoreboard objectives add ncmc_ap_sp_5 dummy
# Maximum cm in one tick with speed II 40
scoreboard objectives add ncmc_ap_sp_6 dummy
# On Ice balance maxium value 17
scoreboard objectives add ncmc_ap_sp_7 dummy
# Maximum ivl value to increase lvl 7
scoreboard objectives add ncmc_ap_sp_8 dummy
# Counter after ivl value gets resetted 10
scoreboard objectives add ncmc_ap_sp_9 dummy


# Appropriate (Speed (SneakSpeed))
# Lost walk movement state reset counter 20
scoreboard objectives add ncmc_ap_sn_1 dummy
# Counter after the cm value gets resetted 20
scoreboard objectives add ncmc_ap_sn_2 dummy

# Max sneak cm without effects 180
scoreboard objectives add ncmc_ap_sn_3 dummy
# Max sneak cm with speed I 220
scoreboard objectives add ncmc_ap_sn_4 dummy
# Max sneak cm with speed II 260
scoreboard objectives add ncmc_ap_sn_5 dummy


# Appropriate (FastConsume)
# How many items the player is allowed to eat until the counter is resetted? 1
scoreboard objectives add ncmc_ap_fc_1 dummy

# Counter max length. 43
scoreboard objectives add ncmc_ap_fc_2 dummy


# Appropriate (GameOverGUI)
scoreboard objectives add ncmc_ap_go_1 dummy




# SurvivalFly (Distance)
# Maximum ivl value to increase lvl 1
scoreboard objectives add ncmc_sf_ds_1 dummy
# Ticks after the lvl gets resetted 1
scoreboard objectives add ncmc_sf_ds_2 dummy

# SurvivalFly (LostGround)
# Maxiumum ivl value to increase lvl 20
scoreboard objectives add ncmc_sf_lg_1 dummy
# Ticks after the lvl gets resetted 10
scoreboard objectives add ncmc_sf_lg_2 dummy




# --------------------
# Net check objectives
# --------------------


# Appropriate (GameOverGUI)
scoreboard objectives add ncmGameOverScr dummy
scoreboard objectives add ncmDeaths minecraft.custom:minecraft.deaths

# UnfittingPacket (PlayerMoveC2SPacket/OffGround)
scoreboard objectives add ncmFallPackets minecraft.custom:minecraft.fall_one_cm

# UnfittingPacket (PlayerRespawnS2CPacket/Alive)
scoreboard objectives add ncmPlayerDeath minecraft.custom:minecraft.deaths
scoreboard objectives add timeInRespawnScr dummy
scoreboard objectives add ncmUPIR_ivl dummy



# -------------------------
# Movement check objectives
# -------------------------

# SurvivalFly (Distance)
scoreboard objectives add ncmLeaveGame minecraft.custom:minecraft.leave_game
scoreboard objectives add ncmJoinGame minecraft.custom:minecraft.play_one_minute
scoreboard objectives add ncmDecent dummy
scoreboard objectives add ncmPlayerY dummy
scoreboard objectives add ncmLastPlayerY dummy
scoreboard objectives add ncmSFDS_ivl dummy
scoreboard objectives add ncmSFDS_ivlrc dummy

# SurvivalFly (LostGround)
scoreboard objectives add ncmSFLG_ivl dummy
scoreboard objectives add ncmSFLG_ivlrc dummy

# Appropriate (NoFall/FallDamage)
scoreboard objectives add noFallField1 dummy
scoreboard objectives add noFallDebug dummy
scoreboard objectives add noFallReset dummy
scoreboard objectives add calcFall dummy
scoreboard objectives add calcHealth dummy
scoreboard objectives add storeHealth dummy
scoreboard objectives add const_100 dummy
scoreboard players set DataHolder const_100 100
scoreboard objectives add const_n1 dummy
scoreboard players set DataHolder const_n1 -1
scoreboard objectives add playerHealth health
scoreboard objectives add fall minecraft.custom:minecraft.fall_one_cm


# Appropriate (Speed (General))
scoreboard objectives add walkOneCm minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add sprintOneCm minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add sneakOneCm minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add ladderOneCm minecraft.custom:minecraft.climb_one_cm

scoreboard objectives add hasSpeedEffI dummy
scoreboard objectives add hasSpeedEffII dummy


# Appropriate (Speed (WalkSpeed))
scoreboard objectives add speedResetC dummy
scoreboard objectives add lostSprintA minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add lostSprintB minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add lostSprintIgn dummy
scoreboard objectives add standsOnIce dummy

# Appropriate (Speed (SprintSpeed))
scoreboard objectives add speedResetCS dummy
scoreboard objectives add sprintJumpFP minecraft.custom:minecraft.jump
scoreboard objectives add sprintJumpFPII minecraft.custom:minecraft.jump
scoreboard objectives add invVLSprint dummy
scoreboard objectives add invVLSprRC dummy
scoreboard objectives add stOnIceC dummy

# Appropriate (Speed (SneakSpeed))
scoreboard objectives add speedResetCSn dummy
scoreboard objectives add lostWalkFP dummy


# --------------------------
# Inventory check objectives
# --------------------------

# Appropriate (FastConsume)
scoreboard objectives add ncmConsume dummy
scoreboard objectives add ncmConsumeC dummy



# Load up default config
scoreboard players set DataHolder ncmCC 1



scoreboard players set DataHolder ncmAddObj 1
execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 0 run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus v"},{"score":{"name":"DataHolder","objective":"ncmMainVersion"}},{"text":".","color":"white"},{"score":{"name":"DataHolder","objective":"ncmSubVersion"}},{"text":"."},{"score":{"name":"DataHolder","objective":"ncmRevVersion"}},{"text":" has been installed successfully."}]

execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 1 if score DataHolder ncmWeek matches 10.. run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"a","color":"white"},{"text":" has been installed successfully.","color":"white"}]
execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 2 if score DataHolder ncmWeek matches 10.. run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"b","color":"white"},{"text":" has been installed successfully.","color":"white"}]
execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 3 if score DataHolder ncmWeek matches 10.. run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"c","color":"white"},{"text":" has been installed successfully.","color":"white"}]
execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 4 if score DataHolder ncmWeek matches 10.. run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"d","color":"white"},{"text":" has been installed successfully.","color":"white"}]
execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 5 if score DataHolder ncmWeek matches 10.. run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"e","color":"white"},{"text":" has been installed successfully.","color":"white"}]
execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 6 if score DataHolder ncmWeek matches 10.. run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"f","color":"white"},{"text":" has been installed successfully.","color":"white"}]
execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 7 if score DataHolder ncmWeek matches 10.. run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"g","color":"white"},{"text":" has been installed successfully.","color":"white"}]
execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 8 if score DataHolder ncmWeek matches 10.. run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"h","color":"white"},{"text":" has been installed successfully.","color":"white"}]

execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 1 if score DataHolder ncmWeek matches 1..9 run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w0","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"a","color":"white"},{"text":" has been installed successfully.","color":"white"}]
execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 2 if score DataHolder ncmWeek matches 1..9 run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w0","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"b","color":"white"},{"text":" has been installed successfully.","color":"white"}]
execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 3 if score DataHolder ncmWeek matches 1..9 run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w0","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"c","color":"white"},{"text":" has been installed successfully.","color":"white"}]
execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 4 if score DataHolder ncmWeek matches 1..9 run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w0","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"d","color":"white"},{"text":" has been installed successfully.","color":"white"}]
execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 5 if score DataHolder ncmWeek matches 1..9 run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w0","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"e","color":"white"},{"text":" has been installed successfully.","color":"white"}]
execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 6 if score DataHolder ncmWeek matches 1..9 run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w0","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"f","color":"white"},{"text":" has been installed successfully.","color":"white"}]
execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 7 if score DataHolder ncmWeek matches 1..9 run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w0","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"g","color":"white"},{"text":" has been installed successfully.","color":"white"}]
execute as @e[type=minecraft:player] if score DataHolder ncmIsSnapshot matches 1 if score DataHolder ncmChar matches 8 if score DataHolder ncmWeek matches 1..9 run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Snapshot "},{"score":{"name":"DataHolder","objective":"ncmYear"}},{"text":"w0","color":"white"},{"score":{"name":"DataHolder","objective":"ncmWeek"}},{"text":"h","color":"white"},{"text":" has been installed successfully.","color":"white"}]
