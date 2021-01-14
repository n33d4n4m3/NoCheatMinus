# ...
# Description:  This function is a sub-function of "ncm:load".
# Author:   n33d4n4m3
# ...


execute as @e[type=minecraft:player] unless score DataHolder ncmAddObj matches 1 run schedule function ncm:user/currentconfig 5s
execute as @e[type=minecraft:player] unless score DataHolder ncmAddObj matches 1 run function ncm:base/install
