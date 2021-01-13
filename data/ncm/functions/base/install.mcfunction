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


# Appropriate
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


# ----------------
# Check objectives
# ----------------

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

# Playground
scoreboard objectives add hasArmorStand dummy
scoreboard objectives add leave minecraft.custom:minecraft.leave_game


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
