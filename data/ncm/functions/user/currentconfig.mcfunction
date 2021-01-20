# ...
# Description:  This function gets called by the NoCheatMinus-Loadup-function. The user can save his favorite configs into infinite slots, which can be accessed from the game.
# Author:       n33d4n4m3
# ...

# CurrentConfig Slot 1
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 1 run function ncm:user/configs/default
# CurrentConfig Slot 2
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 2 run function ncm:user/configs/default
# CurrentConfig Slot 3
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 3 run function ncm:user/configs/default
# CurrentConfig Slot 4
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 4 run function ncm:user/configs/default
# CurrentConfig Slot 5
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 5 run function ncm:user/configs/default
# CurrentConfig Slot 6
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 6 run function ncm:user/configs/default
# CurrentConfig Slot 7
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 7 run function ncm:user/configs/default
# CurrentConfig Slot 8
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 8 run function ncm:user/configs/default
# CurrentConfig Slot 9
execute as @e[type=minecraft:player] if score DataHolder ncmCC matches 9 run function ncm:user/configs/default
# ...

tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"The configuration file in slot ","color":"white"},{"score":{"name":"DataHolder","objective":"ncmCC"}},{"text":" has been loaded successfully.","color":"white"}]
