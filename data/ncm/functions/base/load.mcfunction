# ...
# Description:  This function gets fired whenever the resources of Datapacks get reloaded. It contains essential command routines for loading up NoCheatMinus and its configuration correctly.
# Author:   n33d4n4m3
# ...

# Check if NoCheatMinus is installed already. If it isn't, set up essential objectives.
scoreboard objectives add ncmAddObj dummy

execute as @e[type=minecraft:player] unless score DataHolder ncmAddObj matches 1 run function ncm:base/install
schedule function ncm:user/currentconfig 3s
