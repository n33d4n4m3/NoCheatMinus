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





scoreboard objectives add ncmInstalled dummy

scoreboard objectives add ncmOperator dummy

scoreboard objectives add ncmInputR dummy


scoreboard objectives add ncmBuildNumber dummy

scoreboard players set DataHolder ncmBuildNumber 215


scoreboard objectives add ncm.100 dummy
scoreboard players set DataHolder ncm.100 100
scoreboard objectives add ncm.-1 dummy
scoreboard players set DataHolder ncm.-1 -1
scoreboard objectives add ncmPlayerHealth health


scoreboard objectives add ncm.5 dummy
scoreboard players set DataHolder ncm.5 5

scoreboard objectives add ncm.25 dummy
scoreboard players set DataHolder ncm.25 25

scoreboard objectives add ncmCalc dummy

# -----------------
# Listeners
# -----------------
scoreboard objectives add ncmLastXOnGrd dummy
scoreboard objectives add ncmLastYOnGrd dummy
scoreboard objectives add ncmLastZOnGrd dummy
scoreboard objectives add ncmLastRotXOnGrd dummy
scoreboard objectives add ncmLastRotYOnGrd dummy
scoreboard objectives add ncmPlayerIsInBed dummy



# --------------
# False Positves
# --------------
scoreboard objectives add ncmWasOnGround dummy
scoreboard objectives add ncmFPDamageReset minecraft.custom:minecraft.damage_taken

# -----------------
# Replay
# -----------------
scoreboard objectives add ncmReplayTick dummy
scoreboard objectives add ncmReplayState dummy
scoreboard objectives add ncmFirstRunFinished dummy
scoreboard objectives add ncmReplayStoreTick dummy
scoreboard objectives add ncmReplayFlag dummy
scoreboard objectives add ncmReplayAfterFlagStoreTick dummy
scoreboard objectives add ncmHasSavedReplay dummy
scoreboard objectives add ncmReplayAfterFlagTick dummy

scoreboard objectives add ncmInReplayMode dummy
scoreboard objectives add ncmStartReplay dummy

scoreboard objectives add ncmReplayCounter dummy

scoreboard objectives add ncmReplayXBeforeStart dummy
scoreboard objectives add ncmReplayYBeforeStart dummy
scoreboard objectives add ncmReplayZBeforeStart dummy
scoreboard objectives add ncmReplayYawBeforeStart dummy
scoreboard objectives add ncmReplayPitchBeforeStart dummy
scoreboard objectives add ncmReplayGamemodeBeforeStart dummy
scoreboard objectives add ncmReplayStarted dummy

scoreboard objectives add ncmReplayNameSet dummy
scoreboard objectives add ncmReplayNameCheckPassed dummy
scoreboard objectives add ncmReplaySlot1Occupied dummy
scoreboard objectives add ncmReplaySlot2Occupied dummy
scoreboard objectives add ncmReplaySlot3Occupied dummy
scoreboard objectives add ncmReplaySlot4Occupied dummy
scoreboard objectives add ncmReplaySlot5Occupied dummy
scoreboard objectives add ncmReplaySlot6Occupied dummy
scoreboard objectives add ncmReplaySlot7Occupied dummy
scoreboard objectives add ncmReplaySlot8Occupied dummy
scoreboard objectives add ncmReplaySlot9Occupied dummy
scoreboard objectives add ncmReplaySlotSave dummy
scoreboard objectives add ncmReplayDeleteNameSet dummy
scoreboard objectives add ncmReplayTimeInReplayMode dummy
scoreboard objectives add ncmReplayModePlayers dummy
scoreboard objectives add ncmReplaySlotsOccupied dummy


scoreboard objectives add ncmReplayX1 dummy
scoreboard objectives add ncmReplayY1 dummy
scoreboard objectives add ncmReplayZ1 dummy
scoreboard objectives add ncmReplayYaw1 dummy
scoreboard objectives add ncmReplayPitch1 dummy
scoreboard objectives add ncmReplayX2 dummy
scoreboard objectives add ncmReplayY2 dummy
scoreboard objectives add ncmReplayZ2 dummy
scoreboard objectives add ncmReplayYaw2 dummy
scoreboard objectives add ncmReplayPitch2 dummy
scoreboard objectives add ncmReplayX3 dummy
scoreboard objectives add ncmReplayY3 dummy
scoreboard objectives add ncmReplayZ3 dummy
scoreboard objectives add ncmReplayYaw3 dummy
scoreboard objectives add ncmReplayPitch3 dummy
scoreboard objectives add ncmReplayX4 dummy
scoreboard objectives add ncmReplayY4 dummy
scoreboard objectives add ncmReplayZ4 dummy
scoreboard objectives add ncmReplayYaw4 dummy
scoreboard objectives add ncmReplayPitch4 dummy
scoreboard objectives add ncmReplayX5 dummy
scoreboard objectives add ncmReplayY5 dummy
scoreboard objectives add ncmReplayZ5 dummy
scoreboard objectives add ncmReplayYaw5 dummy
scoreboard objectives add ncmReplayPitch5 dummy
scoreboard objectives add ncmReplayX6 dummy
scoreboard objectives add ncmReplayY6 dummy
scoreboard objectives add ncmReplayZ6 dummy
scoreboard objectives add ncmReplayYaw6 dummy
scoreboard objectives add ncmReplayPitch6 dummy
scoreboard objectives add ncmReplayX7 dummy
scoreboard objectives add ncmReplayY7 dummy
scoreboard objectives add ncmReplayZ7 dummy
scoreboard objectives add ncmReplayYaw7 dummy
scoreboard objectives add ncmReplayPitch7 dummy
scoreboard objectives add ncmReplayX8 dummy
scoreboard objectives add ncmReplayY8 dummy
scoreboard objectives add ncmReplayZ8 dummy
scoreboard objectives add ncmReplayYaw8 dummy
scoreboard objectives add ncmReplayPitch8 dummy
scoreboard objectives add ncmReplayX9 dummy
scoreboard objectives add ncmReplayY9 dummy
scoreboard objectives add ncmReplayZ9 dummy
scoreboard objectives add ncmReplayYaw9 dummy
scoreboard objectives add ncmReplayPitch9 dummy
scoreboard objectives add ncmReplayX10 dummy
scoreboard objectives add ncmReplayY10 dummy
scoreboard objectives add ncmReplayZ10 dummy
scoreboard objectives add ncmReplayYaw10 dummy
scoreboard objectives add ncmReplayPitch10 dummy
scoreboard objectives add ncmReplayX11 dummy
scoreboard objectives add ncmReplayY11 dummy
scoreboard objectives add ncmReplayZ11 dummy
scoreboard objectives add ncmReplayYaw11 dummy
scoreboard objectives add ncmReplayPitch11 dummy
scoreboard objectives add ncmReplayX12 dummy
scoreboard objectives add ncmReplayY12 dummy
scoreboard objectives add ncmReplayZ12 dummy
scoreboard objectives add ncmReplayYaw12 dummy
scoreboard objectives add ncmReplayPitch12 dummy
scoreboard objectives add ncmReplayX13 dummy
scoreboard objectives add ncmReplayY13 dummy
scoreboard objectives add ncmReplayZ13 dummy
scoreboard objectives add ncmReplayYaw13 dummy
scoreboard objectives add ncmReplayPitch13 dummy
scoreboard objectives add ncmReplayX14 dummy
scoreboard objectives add ncmReplayY14 dummy
scoreboard objectives add ncmReplayZ14 dummy
scoreboard objectives add ncmReplayYaw14 dummy
scoreboard objectives add ncmReplayPitch14 dummy
scoreboard objectives add ncmReplayX15 dummy
scoreboard objectives add ncmReplayY15 dummy
scoreboard objectives add ncmReplayZ15 dummy
scoreboard objectives add ncmReplayYaw15 dummy
scoreboard objectives add ncmReplayPitch15 dummy
scoreboard objectives add ncmReplayX16 dummy
scoreboard objectives add ncmReplayY16 dummy
scoreboard objectives add ncmReplayZ16 dummy
scoreboard objectives add ncmReplayYaw16 dummy
scoreboard objectives add ncmReplayPitch16 dummy
scoreboard objectives add ncmReplayX17 dummy
scoreboard objectives add ncmReplayY17 dummy
scoreboard objectives add ncmReplayZ17 dummy
scoreboard objectives add ncmReplayYaw17 dummy
scoreboard objectives add ncmReplayPitch17 dummy
scoreboard objectives add ncmReplayX18 dummy
scoreboard objectives add ncmReplayY18 dummy
scoreboard objectives add ncmReplayZ18 dummy
scoreboard objectives add ncmReplayYaw18 dummy
scoreboard objectives add ncmReplayPitch18 dummy
scoreboard objectives add ncmReplayX19 dummy
scoreboard objectives add ncmReplayY19 dummy
scoreboard objectives add ncmReplayZ19 dummy
scoreboard objectives add ncmReplayYaw19 dummy
scoreboard objectives add ncmReplayPitch19 dummy
scoreboard objectives add ncmReplayX20 dummy
scoreboard objectives add ncmReplayY20 dummy
scoreboard objectives add ncmReplayZ20 dummy
scoreboard objectives add ncmReplayYaw20 dummy
scoreboard objectives add ncmReplayPitch20 dummy
scoreboard objectives add ncmReplayX21 dummy
scoreboard objectives add ncmReplayY21 dummy
scoreboard objectives add ncmReplayZ21 dummy
scoreboard objectives add ncmReplayYaw21 dummy
scoreboard objectives add ncmReplayPitch21 dummy
scoreboard objectives add ncmReplayX22 dummy
scoreboard objectives add ncmReplayY22 dummy
scoreboard objectives add ncmReplayZ22 dummy
scoreboard objectives add ncmReplayYaw22 dummy
scoreboard objectives add ncmReplayPitch22 dummy
scoreboard objectives add ncmReplayX23 dummy
scoreboard objectives add ncmReplayY23 dummy
scoreboard objectives add ncmReplayZ23 dummy
scoreboard objectives add ncmReplayYaw23 dummy
scoreboard objectives add ncmReplayPitch23 dummy
scoreboard objectives add ncmReplayX24 dummy
scoreboard objectives add ncmReplayY24 dummy
scoreboard objectives add ncmReplayZ24 dummy
scoreboard objectives add ncmReplayYaw24 dummy
scoreboard objectives add ncmReplayPitch24 dummy
scoreboard objectives add ncmReplayX25 dummy
scoreboard objectives add ncmReplayY25 dummy
scoreboard objectives add ncmReplayZ25 dummy
scoreboard objectives add ncmReplayYaw25 dummy
scoreboard objectives add ncmReplayPitch25 dummy
scoreboard objectives add ncmReplayX26 dummy
scoreboard objectives add ncmReplayY26 dummy
scoreboard objectives add ncmReplayZ26 dummy
scoreboard objectives add ncmReplayYaw26 dummy
scoreboard objectives add ncmReplayPitch26 dummy
scoreboard objectives add ncmReplayX27 dummy
scoreboard objectives add ncmReplayY27 dummy
scoreboard objectives add ncmReplayZ27 dummy
scoreboard objectives add ncmReplayYaw27 dummy
scoreboard objectives add ncmReplayPitch27 dummy
scoreboard objectives add ncmReplayX28 dummy
scoreboard objectives add ncmReplayY28 dummy
scoreboard objectives add ncmReplayZ28 dummy
scoreboard objectives add ncmReplayYaw28 dummy
scoreboard objectives add ncmReplayPitch28 dummy
scoreboard objectives add ncmReplayX29 dummy
scoreboard objectives add ncmReplayY29 dummy
scoreboard objectives add ncmReplayZ29 dummy
scoreboard objectives add ncmReplayYaw29 dummy
scoreboard objectives add ncmReplayPitch29 dummy
scoreboard objectives add ncmReplayX30 dummy
scoreboard objectives add ncmReplayY30 dummy
scoreboard objectives add ncmReplayZ30 dummy
scoreboard objectives add ncmReplayYaw30 dummy
scoreboard objectives add ncmReplayPitch30 dummy
scoreboard objectives add ncmReplayX31 dummy
scoreboard objectives add ncmReplayY31 dummy
scoreboard objectives add ncmReplayZ31 dummy
scoreboard objectives add ncmReplayYaw31 dummy
scoreboard objectives add ncmReplayPitch31 dummy
scoreboard objectives add ncmReplayX32 dummy
scoreboard objectives add ncmReplayY32 dummy
scoreboard objectives add ncmReplayZ32 dummy
scoreboard objectives add ncmReplayYaw32 dummy
scoreboard objectives add ncmReplayPitch32 dummy
scoreboard objectives add ncmReplayX33 dummy
scoreboard objectives add ncmReplayY33 dummy
scoreboard objectives add ncmReplayZ33 dummy
scoreboard objectives add ncmReplayYaw33 dummy
scoreboard objectives add ncmReplayPitch33 dummy
scoreboard objectives add ncmReplayX34 dummy
scoreboard objectives add ncmReplayY34 dummy
scoreboard objectives add ncmReplayZ34 dummy
scoreboard objectives add ncmReplayYaw34 dummy
scoreboard objectives add ncmReplayPitch34 dummy
scoreboard objectives add ncmReplayX35 dummy
scoreboard objectives add ncmReplayY35 dummy
scoreboard objectives add ncmReplayZ35 dummy
scoreboard objectives add ncmReplayYaw35 dummy
scoreboard objectives add ncmReplayPitch35 dummy
scoreboard objectives add ncmReplayX36 dummy
scoreboard objectives add ncmReplayY36 dummy
scoreboard objectives add ncmReplayZ36 dummy
scoreboard objectives add ncmReplayYaw36 dummy
scoreboard objectives add ncmReplayPitch36 dummy
scoreboard objectives add ncmReplayX37 dummy
scoreboard objectives add ncmReplayY37 dummy
scoreboard objectives add ncmReplayZ37 dummy
scoreboard objectives add ncmReplayYaw37 dummy
scoreboard objectives add ncmReplayPitch37 dummy
scoreboard objectives add ncmReplayX38 dummy
scoreboard objectives add ncmReplayY38 dummy
scoreboard objectives add ncmReplayZ38 dummy
scoreboard objectives add ncmReplayYaw38 dummy
scoreboard objectives add ncmReplayPitch38 dummy
scoreboard objectives add ncmReplayX39 dummy
scoreboard objectives add ncmReplayY39 dummy
scoreboard objectives add ncmReplayZ39 dummy
scoreboard objectives add ncmReplayYaw39 dummy
scoreboard objectives add ncmReplayPitch39 dummy
scoreboard objectives add ncmReplayX40 dummy
scoreboard objectives add ncmReplayY40 dummy
scoreboard objectives add ncmReplayZ40 dummy
scoreboard objectives add ncmReplayYaw40 dummy
scoreboard objectives add ncmReplayPitch40 dummy
scoreboard objectives add ncmReplayX41 dummy
scoreboard objectives add ncmReplayY41 dummy
scoreboard objectives add ncmReplayZ41 dummy
scoreboard objectives add ncmReplayYaw41 dummy
scoreboard objectives add ncmReplayPitch41 dummy
scoreboard objectives add ncmReplayX42 dummy
scoreboard objectives add ncmReplayY42 dummy
scoreboard objectives add ncmReplayZ42 dummy
scoreboard objectives add ncmReplayYaw42 dummy
scoreboard objectives add ncmReplayPitch42 dummy
scoreboard objectives add ncmReplayX43 dummy
scoreboard objectives add ncmReplayY43 dummy
scoreboard objectives add ncmReplayZ43 dummy
scoreboard objectives add ncmReplayYaw43 dummy
scoreboard objectives add ncmReplayPitch43 dummy
scoreboard objectives add ncmReplayX44 dummy
scoreboard objectives add ncmReplayY44 dummy
scoreboard objectives add ncmReplayZ44 dummy
scoreboard objectives add ncmReplayYaw44 dummy
scoreboard objectives add ncmReplayPitch44 dummy
scoreboard objectives add ncmReplayX45 dummy
scoreboard objectives add ncmReplayY45 dummy
scoreboard objectives add ncmReplayZ45 dummy
scoreboard objectives add ncmReplayYaw45 dummy
scoreboard objectives add ncmReplayPitch45 dummy
scoreboard objectives add ncmReplayX46 dummy
scoreboard objectives add ncmReplayY46 dummy
scoreboard objectives add ncmReplayZ46 dummy
scoreboard objectives add ncmReplayYaw46 dummy
scoreboard objectives add ncmReplayPitch46 dummy
scoreboard objectives add ncmReplayX47 dummy
scoreboard objectives add ncmReplayY47 dummy
scoreboard objectives add ncmReplayZ47 dummy
scoreboard objectives add ncmReplayYaw47 dummy
scoreboard objectives add ncmReplayPitch47 dummy
scoreboard objectives add ncmReplayX48 dummy
scoreboard objectives add ncmReplayY48 dummy
scoreboard objectives add ncmReplayZ48 dummy
scoreboard objectives add ncmReplayYaw48 dummy
scoreboard objectives add ncmReplayPitch48 dummy
scoreboard objectives add ncmReplayX49 dummy
scoreboard objectives add ncmReplayY49 dummy
scoreboard objectives add ncmReplayZ49 dummy
scoreboard objectives add ncmReplayYaw49 dummy
scoreboard objectives add ncmReplayPitch49 dummy
scoreboard objectives add ncmReplayX50 dummy
scoreboard objectives add ncmReplayY50 dummy
scoreboard objectives add ncmReplayZ50 dummy
scoreboard objectives add ncmReplayYaw50 dummy
scoreboard objectives add ncmReplayPitch50 dummy
scoreboard objectives add ncmReplayX51 dummy
scoreboard objectives add ncmReplayY51 dummy
scoreboard objectives add ncmReplayZ51 dummy
scoreboard objectives add ncmReplayYaw51 dummy
scoreboard objectives add ncmReplayPitch51 dummy
scoreboard objectives add ncmReplayX52 dummy
scoreboard objectives add ncmReplayY52 dummy
scoreboard objectives add ncmReplayZ52 dummy
scoreboard objectives add ncmReplayYaw52 dummy
scoreboard objectives add ncmReplayPitch52 dummy
scoreboard objectives add ncmReplayX53 dummy
scoreboard objectives add ncmReplayY53 dummy
scoreboard objectives add ncmReplayZ53 dummy
scoreboard objectives add ncmReplayYaw53 dummy
scoreboard objectives add ncmReplayPitch53 dummy
scoreboard objectives add ncmReplayX54 dummy
scoreboard objectives add ncmReplayY54 dummy
scoreboard objectives add ncmReplayZ54 dummy
scoreboard objectives add ncmReplayYaw54 dummy
scoreboard objectives add ncmReplayPitch54 dummy
scoreboard objectives add ncmReplayX55 dummy
scoreboard objectives add ncmReplayY55 dummy
scoreboard objectives add ncmReplayZ55 dummy
scoreboard objectives add ncmReplayYaw55 dummy
scoreboard objectives add ncmReplayPitch55 dummy
scoreboard objectives add ncmReplayX56 dummy
scoreboard objectives add ncmReplayY56 dummy
scoreboard objectives add ncmReplayZ56 dummy
scoreboard objectives add ncmReplayYaw56 dummy
scoreboard objectives add ncmReplayPitch56 dummy
scoreboard objectives add ncmReplayX57 dummy
scoreboard objectives add ncmReplayY57 dummy
scoreboard objectives add ncmReplayZ57 dummy
scoreboard objectives add ncmReplayYaw57 dummy
scoreboard objectives add ncmReplayPitch57 dummy
scoreboard objectives add ncmReplayX58 dummy
scoreboard objectives add ncmReplayY58 dummy
scoreboard objectives add ncmReplayZ58 dummy
scoreboard objectives add ncmReplayYaw58 dummy
scoreboard objectives add ncmReplayPitch58 dummy
scoreboard objectives add ncmReplayX59 dummy
scoreboard objectives add ncmReplayY59 dummy
scoreboard objectives add ncmReplayZ59 dummy
scoreboard objectives add ncmReplayYaw59 dummy
scoreboard objectives add ncmReplayPitch59 dummy
scoreboard objectives add ncmReplayX60 dummy
scoreboard objectives add ncmReplayY60 dummy
scoreboard objectives add ncmReplayZ60 dummy
scoreboard objectives add ncmReplayYaw60 dummy
scoreboard objectives add ncmReplayPitch60 dummy
scoreboard objectives add ncmReplayX61 dummy
scoreboard objectives add ncmReplayY61 dummy
scoreboard objectives add ncmReplayZ61 dummy
scoreboard objectives add ncmReplayYaw61 dummy
scoreboard objectives add ncmReplayPitch61 dummy
scoreboard objectives add ncmReplayX62 dummy
scoreboard objectives add ncmReplayY62 dummy
scoreboard objectives add ncmReplayZ62 dummy
scoreboard objectives add ncmReplayYaw62 dummy
scoreboard objectives add ncmReplayPitch62 dummy
scoreboard objectives add ncmReplayX63 dummy
scoreboard objectives add ncmReplayY63 dummy
scoreboard objectives add ncmReplayZ63 dummy
scoreboard objectives add ncmReplayYaw63 dummy
scoreboard objectives add ncmReplayPitch63 dummy
scoreboard objectives add ncmReplayX64 dummy
scoreboard objectives add ncmReplayY64 dummy
scoreboard objectives add ncmReplayZ64 dummy
scoreboard objectives add ncmReplayYaw64 dummy
scoreboard objectives add ncmReplayPitch64 dummy
scoreboard objectives add ncmReplayX65 dummy
scoreboard objectives add ncmReplayY65 dummy
scoreboard objectives add ncmReplayZ65 dummy
scoreboard objectives add ncmReplayYaw65 dummy
scoreboard objectives add ncmReplayPitch65 dummy
scoreboard objectives add ncmReplayX66 dummy
scoreboard objectives add ncmReplayY66 dummy
scoreboard objectives add ncmReplayZ66 dummy
scoreboard objectives add ncmReplayYaw66 dummy
scoreboard objectives add ncmReplayPitch66 dummy
scoreboard objectives add ncmReplayX67 dummy
scoreboard objectives add ncmReplayY67 dummy
scoreboard objectives add ncmReplayZ67 dummy
scoreboard objectives add ncmReplayYaw67 dummy
scoreboard objectives add ncmReplayPitch67 dummy
scoreboard objectives add ncmReplayX68 dummy
scoreboard objectives add ncmReplayY68 dummy
scoreboard objectives add ncmReplayZ68 dummy
scoreboard objectives add ncmReplayYaw68 dummy
scoreboard objectives add ncmReplayPitch68 dummy
scoreboard objectives add ncmReplayX69 dummy
scoreboard objectives add ncmReplayY69 dummy
scoreboard objectives add ncmReplayZ69 dummy
scoreboard objectives add ncmReplayYaw69 dummy
scoreboard objectives add ncmReplayPitch69 dummy
scoreboard objectives add ncmReplayX70 dummy
scoreboard objectives add ncmReplayY70 dummy
scoreboard objectives add ncmReplayZ70 dummy
scoreboard objectives add ncmReplayYaw70 dummy
scoreboard objectives add ncmReplayPitch70 dummy
scoreboard objectives add ncmReplayX71 dummy
scoreboard objectives add ncmReplayY71 dummy
scoreboard objectives add ncmReplayZ71 dummy
scoreboard objectives add ncmReplayYaw71 dummy
scoreboard objectives add ncmReplayPitch71 dummy
scoreboard objectives add ncmReplayX72 dummy
scoreboard objectives add ncmReplayY72 dummy
scoreboard objectives add ncmReplayZ72 dummy
scoreboard objectives add ncmReplayYaw72 dummy
scoreboard objectives add ncmReplayPitch72 dummy
scoreboard objectives add ncmReplayX73 dummy
scoreboard objectives add ncmReplayY73 dummy
scoreboard objectives add ncmReplayZ73 dummy
scoreboard objectives add ncmReplayYaw73 dummy
scoreboard objectives add ncmReplayPitch73 dummy
scoreboard objectives add ncmReplayX74 dummy
scoreboard objectives add ncmReplayY74 dummy
scoreboard objectives add ncmReplayZ74 dummy
scoreboard objectives add ncmReplayYaw74 dummy
scoreboard objectives add ncmReplayPitch74 dummy
scoreboard objectives add ncmReplayX75 dummy
scoreboard objectives add ncmReplayY75 dummy
scoreboard objectives add ncmReplayZ75 dummy
scoreboard objectives add ncmReplayYaw75 dummy
scoreboard objectives add ncmReplayPitch75 dummy
scoreboard objectives add ncmReplayX76 dummy
scoreboard objectives add ncmReplayY76 dummy
scoreboard objectives add ncmReplayZ76 dummy
scoreboard objectives add ncmReplayYaw76 dummy
scoreboard objectives add ncmReplayPitch76 dummy
scoreboard objectives add ncmReplayX77 dummy
scoreboard objectives add ncmReplayY77 dummy
scoreboard objectives add ncmReplayZ77 dummy
scoreboard objectives add ncmReplayYaw77 dummy
scoreboard objectives add ncmReplayPitch77 dummy
scoreboard objectives add ncmReplayX78 dummy
scoreboard objectives add ncmReplayY78 dummy
scoreboard objectives add ncmReplayZ78 dummy
scoreboard objectives add ncmReplayYaw78 dummy
scoreboard objectives add ncmReplayPitch78 dummy
scoreboard objectives add ncmReplayX79 dummy
scoreboard objectives add ncmReplayY79 dummy
scoreboard objectives add ncmReplayZ79 dummy
scoreboard objectives add ncmReplayYaw79 dummy
scoreboard objectives add ncmReplayPitch79 dummy
scoreboard objectives add ncmReplayX80 dummy
scoreboard objectives add ncmReplayY80 dummy
scoreboard objectives add ncmReplayZ80 dummy
scoreboard objectives add ncmReplayYaw80 dummy
scoreboard objectives add ncmReplayPitch80 dummy
scoreboard objectives add ncmReplayX81 dummy
scoreboard objectives add ncmReplayY81 dummy
scoreboard objectives add ncmReplayZ81 dummy
scoreboard objectives add ncmReplayYaw81 dummy
scoreboard objectives add ncmReplayPitch81 dummy
scoreboard objectives add ncmReplayX82 dummy
scoreboard objectives add ncmReplayY82 dummy
scoreboard objectives add ncmReplayZ82 dummy
scoreboard objectives add ncmReplayYaw82 dummy
scoreboard objectives add ncmReplayPitch82 dummy
scoreboard objectives add ncmReplayX83 dummy
scoreboard objectives add ncmReplayY83 dummy
scoreboard objectives add ncmReplayZ83 dummy
scoreboard objectives add ncmReplayYaw83 dummy
scoreboard objectives add ncmReplayPitch83 dummy
scoreboard objectives add ncmReplayX84 dummy
scoreboard objectives add ncmReplayY84 dummy
scoreboard objectives add ncmReplayZ84 dummy
scoreboard objectives add ncmReplayYaw84 dummy
scoreboard objectives add ncmReplayPitch84 dummy
scoreboard objectives add ncmReplayX85 dummy
scoreboard objectives add ncmReplayY85 dummy
scoreboard objectives add ncmReplayZ85 dummy
scoreboard objectives add ncmReplayYaw85 dummy
scoreboard objectives add ncmReplayPitch85 dummy
scoreboard objectives add ncmReplayX86 dummy
scoreboard objectives add ncmReplayY86 dummy
scoreboard objectives add ncmReplayZ86 dummy
scoreboard objectives add ncmReplayYaw86 dummy
scoreboard objectives add ncmReplayPitch86 dummy
scoreboard objectives add ncmReplayX87 dummy
scoreboard objectives add ncmReplayY87 dummy
scoreboard objectives add ncmReplayZ87 dummy
scoreboard objectives add ncmReplayYaw87 dummy
scoreboard objectives add ncmReplayPitch87 dummy
scoreboard objectives add ncmReplayX88 dummy
scoreboard objectives add ncmReplayY88 dummy
scoreboard objectives add ncmReplayZ88 dummy
scoreboard objectives add ncmReplayYaw88 dummy
scoreboard objectives add ncmReplayPitch88 dummy
scoreboard objectives add ncmReplayX89 dummy
scoreboard objectives add ncmReplayY89 dummy
scoreboard objectives add ncmReplayZ89 dummy
scoreboard objectives add ncmReplayYaw89 dummy
scoreboard objectives add ncmReplayPitch89 dummy
scoreboard objectives add ncmReplayX90 dummy
scoreboard objectives add ncmReplayY90 dummy
scoreboard objectives add ncmReplayZ90 dummy
scoreboard objectives add ncmReplayYaw90 dummy
scoreboard objectives add ncmReplayPitch90 dummy
scoreboard objectives add ncmReplayX91 dummy
scoreboard objectives add ncmReplayY91 dummy
scoreboard objectives add ncmReplayZ91 dummy
scoreboard objectives add ncmReplayYaw91 dummy
scoreboard objectives add ncmReplayPitch91 dummy
scoreboard objectives add ncmReplayX92 dummy
scoreboard objectives add ncmReplayY92 dummy
scoreboard objectives add ncmReplayZ92 dummy
scoreboard objectives add ncmReplayYaw92 dummy
scoreboard objectives add ncmReplayPitch92 dummy
scoreboard objectives add ncmReplayX93 dummy
scoreboard objectives add ncmReplayY93 dummy
scoreboard objectives add ncmReplayZ93 dummy
scoreboard objectives add ncmReplayYaw93 dummy
scoreboard objectives add ncmReplayPitch93 dummy
scoreboard objectives add ncmReplayX94 dummy
scoreboard objectives add ncmReplayY94 dummy
scoreboard objectives add ncmReplayZ94 dummy
scoreboard objectives add ncmReplayYaw94 dummy
scoreboard objectives add ncmReplayPitch94 dummy
scoreboard objectives add ncmReplayX95 dummy
scoreboard objectives add ncmReplayY95 dummy
scoreboard objectives add ncmReplayZ95 dummy
scoreboard objectives add ncmReplayYaw95 dummy
scoreboard objectives add ncmReplayPitch95 dummy
scoreboard objectives add ncmReplayX96 dummy
scoreboard objectives add ncmReplayY96 dummy
scoreboard objectives add ncmReplayZ96 dummy
scoreboard objectives add ncmReplayYaw96 dummy
scoreboard objectives add ncmReplayPitch96 dummy
scoreboard objectives add ncmReplayX97 dummy
scoreboard objectives add ncmReplayY97 dummy
scoreboard objectives add ncmReplayZ97 dummy
scoreboard objectives add ncmReplayYaw97 dummy
scoreboard objectives add ncmReplayPitch97 dummy
scoreboard objectives add ncmReplayX98 dummy
scoreboard objectives add ncmReplayY98 dummy
scoreboard objectives add ncmReplayZ98 dummy
scoreboard objectives add ncmReplayYaw98 dummy
scoreboard objectives add ncmReplayPitch98 dummy
scoreboard objectives add ncmReplayX99 dummy
scoreboard objectives add ncmReplayY99 dummy
scoreboard objectives add ncmReplayZ99 dummy
scoreboard objectives add ncmReplayYaw99 dummy
scoreboard objectives add ncmReplayPitch99 dummy
scoreboard objectives add ncmReplayX100 dummy
scoreboard objectives add ncmReplayY100 dummy
scoreboard objectives add ncmReplayZ100 dummy
scoreboard objectives add ncmReplayYaw100 dummy
scoreboard objectives add ncmReplayPitch100 dummy
scoreboard objectives add ncmReplayAfterFlagX1 dummy
scoreboard objectives add ncmReplayAfterFlagY1 dummy
scoreboard objectives add ncmReplayAfterFlagZ1 dummy
scoreboard objectives add ncmReplayAfterFlagYaw1 dummy
scoreboard objectives add ncmReplayAfterFlagPitch1 dummy
scoreboard objectives add ncmReplayAfterFlagX2 dummy
scoreboard objectives add ncmReplayAfterFlagY2 dummy
scoreboard objectives add ncmReplayAfterFlagZ2 dummy
scoreboard objectives add ncmReplayAfterFlagYaw2 dummy
scoreboard objectives add ncmReplayAfterFlagPitch2 dummy
scoreboard objectives add ncmReplayAfterFlagX3 dummy
scoreboard objectives add ncmReplayAfterFlagY3 dummy
scoreboard objectives add ncmReplayAfterFlagZ3 dummy
scoreboard objectives add ncmReplayAfterFlagYaw3 dummy
scoreboard objectives add ncmReplayAfterFlagPitch3 dummy
scoreboard objectives add ncmReplayAfterFlagX4 dummy
scoreboard objectives add ncmReplayAfterFlagY4 dummy
scoreboard objectives add ncmReplayAfterFlagZ4 dummy
scoreboard objectives add ncmReplayAfterFlagYaw4 dummy
scoreboard objectives add ncmReplayAfterFlagPitch4 dummy
scoreboard objectives add ncmReplayAfterFlagX5 dummy
scoreboard objectives add ncmReplayAfterFlagY5 dummy
scoreboard objectives add ncmReplayAfterFlagZ5 dummy
scoreboard objectives add ncmReplayAfterFlagYaw5 dummy
scoreboard objectives add ncmReplayAfterFlagPitch5 dummy
scoreboard objectives add ncmReplayAfterFlagX6 dummy
scoreboard objectives add ncmReplayAfterFlagY6 dummy
scoreboard objectives add ncmReplayAfterFlagZ6 dummy
scoreboard objectives add ncmReplayAfterFlagYaw6 dummy
scoreboard objectives add ncmReplayAfterFlagPitch6 dummy
scoreboard objectives add ncmReplayAfterFlagX7 dummy
scoreboard objectives add ncmReplayAfterFlagY7 dummy
scoreboard objectives add ncmReplayAfterFlagZ7 dummy
scoreboard objectives add ncmReplayAfterFlagYaw7 dummy
scoreboard objectives add ncmReplayAfterFlagPitch7 dummy
scoreboard objectives add ncmReplayAfterFlagX8 dummy
scoreboard objectives add ncmReplayAfterFlagY8 dummy
scoreboard objectives add ncmReplayAfterFlagZ8 dummy
scoreboard objectives add ncmReplayAfterFlagYaw8 dummy
scoreboard objectives add ncmReplayAfterFlagPitch8 dummy
scoreboard objectives add ncmReplayAfterFlagX9 dummy
scoreboard objectives add ncmReplayAfterFlagY9 dummy
scoreboard objectives add ncmReplayAfterFlagZ9 dummy
scoreboard objectives add ncmReplayAfterFlagYaw9 dummy
scoreboard objectives add ncmReplayAfterFlagPitch9 dummy
scoreboard objectives add ncmReplayAfterFlagX10 dummy
scoreboard objectives add ncmReplayAfterFlagY10 dummy
scoreboard objectives add ncmReplayAfterFlagZ10 dummy
scoreboard objectives add ncmReplayAfterFlagYaw10 dummy
scoreboard objectives add ncmReplayAfterFlagPitch10 dummy
scoreboard objectives add ncmReplayAfterFlagX11 dummy
scoreboard objectives add ncmReplayAfterFlagY11 dummy
scoreboard objectives add ncmReplayAfterFlagZ11 dummy
scoreboard objectives add ncmReplayAfterFlagYaw11 dummy
scoreboard objectives add ncmReplayAfterFlagPitch11 dummy
scoreboard objectives add ncmReplayAfterFlagX12 dummy
scoreboard objectives add ncmReplayAfterFlagY12 dummy
scoreboard objectives add ncmReplayAfterFlagZ12 dummy
scoreboard objectives add ncmReplayAfterFlagYaw12 dummy
scoreboard objectives add ncmReplayAfterFlagPitch12 dummy
scoreboard objectives add ncmReplayAfterFlagX13 dummy
scoreboard objectives add ncmReplayAfterFlagY13 dummy
scoreboard objectives add ncmReplayAfterFlagZ13 dummy
scoreboard objectives add ncmReplayAfterFlagYaw13 dummy
scoreboard objectives add ncmReplayAfterFlagPitch13 dummy
scoreboard objectives add ncmReplayAfterFlagX14 dummy
scoreboard objectives add ncmReplayAfterFlagY14 dummy
scoreboard objectives add ncmReplayAfterFlagZ14 dummy
scoreboard objectives add ncmReplayAfterFlagYaw14 dummy
scoreboard objectives add ncmReplayAfterFlagPitch14 dummy
scoreboard objectives add ncmReplayAfterFlagX15 dummy
scoreboard objectives add ncmReplayAfterFlagY15 dummy
scoreboard objectives add ncmReplayAfterFlagZ15 dummy
scoreboard objectives add ncmReplayAfterFlagYaw15 dummy
scoreboard objectives add ncmReplayAfterFlagPitch15 dummy
scoreboard objectives add ncmReplayAfterFlagX16 dummy
scoreboard objectives add ncmReplayAfterFlagY16 dummy
scoreboard objectives add ncmReplayAfterFlagZ16 dummy
scoreboard objectives add ncmReplayAfterFlagYaw16 dummy
scoreboard objectives add ncmReplayAfterFlagPitch16 dummy
scoreboard objectives add ncmReplayAfterFlagX17 dummy
scoreboard objectives add ncmReplayAfterFlagY17 dummy
scoreboard objectives add ncmReplayAfterFlagZ17 dummy
scoreboard objectives add ncmReplayAfterFlagYaw17 dummy
scoreboard objectives add ncmReplayAfterFlagPitch17 dummy
scoreboard objectives add ncmReplayAfterFlagX18 dummy
scoreboard objectives add ncmReplayAfterFlagY18 dummy
scoreboard objectives add ncmReplayAfterFlagZ18 dummy
scoreboard objectives add ncmReplayAfterFlagYaw18 dummy
scoreboard objectives add ncmReplayAfterFlagPitch18 dummy
scoreboard objectives add ncmReplayAfterFlagX19 dummy
scoreboard objectives add ncmReplayAfterFlagY19 dummy
scoreboard objectives add ncmReplayAfterFlagZ19 dummy
scoreboard objectives add ncmReplayAfterFlagYaw19 dummy
scoreboard objectives add ncmReplayAfterFlagPitch19 dummy
scoreboard objectives add ncmReplayAfterFlagX20 dummy
scoreboard objectives add ncmReplayAfterFlagY20 dummy
scoreboard objectives add ncmReplayAfterFlagZ20 dummy
scoreboard objectives add ncmReplayAfterFlagYaw20 dummy
scoreboard objectives add ncmReplayAfterFlagPitch20 dummy
scoreboard objectives add ncmReplayAfterFlagX21 dummy
scoreboard objectives add ncmReplayAfterFlagY21 dummy
scoreboard objectives add ncmReplayAfterFlagZ21 dummy
scoreboard objectives add ncmReplayAfterFlagYaw21 dummy
scoreboard objectives add ncmReplayAfterFlagPitch21 dummy
scoreboard objectives add ncmReplayAfterFlagX22 dummy
scoreboard objectives add ncmReplayAfterFlagY22 dummy
scoreboard objectives add ncmReplayAfterFlagZ22 dummy
scoreboard objectives add ncmReplayAfterFlagYaw22 dummy
scoreboard objectives add ncmReplayAfterFlagPitch22 dummy
scoreboard objectives add ncmReplayAfterFlagX23 dummy
scoreboard objectives add ncmReplayAfterFlagY23 dummy
scoreboard objectives add ncmReplayAfterFlagZ23 dummy
scoreboard objectives add ncmReplayAfterFlagYaw23 dummy
scoreboard objectives add ncmReplayAfterFlagPitch23 dummy
scoreboard objectives add ncmReplayAfterFlagX24 dummy
scoreboard objectives add ncmReplayAfterFlagY24 dummy
scoreboard objectives add ncmReplayAfterFlagZ24 dummy
scoreboard objectives add ncmReplayAfterFlagYaw24 dummy
scoreboard objectives add ncmReplayAfterFlagPitch24 dummy
scoreboard objectives add ncmReplayAfterFlagX25 dummy
scoreboard objectives add ncmReplayAfterFlagY25 dummy
scoreboard objectives add ncmReplayAfterFlagZ25 dummy
scoreboard objectives add ncmReplayAfterFlagYaw25 dummy
scoreboard objectives add ncmReplayAfterFlagPitch25 dummy
scoreboard objectives add ncmReplayAfterFlagX26 dummy
scoreboard objectives add ncmReplayAfterFlagY26 dummy
scoreboard objectives add ncmReplayAfterFlagZ26 dummy
scoreboard objectives add ncmReplayAfterFlagYaw26 dummy
scoreboard objectives add ncmReplayAfterFlagPitch26 dummy
scoreboard objectives add ncmReplayAfterFlagX27 dummy
scoreboard objectives add ncmReplayAfterFlagY27 dummy
scoreboard objectives add ncmReplayAfterFlagZ27 dummy
scoreboard objectives add ncmReplayAfterFlagYaw27 dummy
scoreboard objectives add ncmReplayAfterFlagPitch27 dummy
scoreboard objectives add ncmReplayAfterFlagX28 dummy
scoreboard objectives add ncmReplayAfterFlagY28 dummy
scoreboard objectives add ncmReplayAfterFlagZ28 dummy
scoreboard objectives add ncmReplayAfterFlagYaw28 dummy
scoreboard objectives add ncmReplayAfterFlagPitch28 dummy
scoreboard objectives add ncmReplayAfterFlagX29 dummy
scoreboard objectives add ncmReplayAfterFlagY29 dummy
scoreboard objectives add ncmReplayAfterFlagZ29 dummy
scoreboard objectives add ncmReplayAfterFlagYaw29 dummy
scoreboard objectives add ncmReplayAfterFlagPitch29 dummy
scoreboard objectives add ncmReplayAfterFlagX30 dummy
scoreboard objectives add ncmReplayAfterFlagY30 dummy
scoreboard objectives add ncmReplayAfterFlagZ30 dummy
scoreboard objectives add ncmReplayAfterFlagYaw30 dummy
scoreboard objectives add ncmReplayAfterFlagPitch30 dummy
scoreboard objectives add ncmReplayAfterFlagX31 dummy
scoreboard objectives add ncmReplayAfterFlagY31 dummy
scoreboard objectives add ncmReplayAfterFlagZ31 dummy
scoreboard objectives add ncmReplayAfterFlagYaw31 dummy
scoreboard objectives add ncmReplayAfterFlagPitch31 dummy
scoreboard objectives add ncmReplayAfterFlagX32 dummy
scoreboard objectives add ncmReplayAfterFlagY32 dummy
scoreboard objectives add ncmReplayAfterFlagZ32 dummy
scoreboard objectives add ncmReplayAfterFlagYaw32 dummy
scoreboard objectives add ncmReplayAfterFlagPitch32 dummy
scoreboard objectives add ncmReplayAfterFlagX33 dummy
scoreboard objectives add ncmReplayAfterFlagY33 dummy
scoreboard objectives add ncmReplayAfterFlagZ33 dummy
scoreboard objectives add ncmReplayAfterFlagYaw33 dummy
scoreboard objectives add ncmReplayAfterFlagPitch33 dummy
scoreboard objectives add ncmReplayAfterFlagX34 dummy
scoreboard objectives add ncmReplayAfterFlagY34 dummy
scoreboard objectives add ncmReplayAfterFlagZ34 dummy
scoreboard objectives add ncmReplayAfterFlagYaw34 dummy
scoreboard objectives add ncmReplayAfterFlagPitch34 dummy
scoreboard objectives add ncmReplayAfterFlagX35 dummy
scoreboard objectives add ncmReplayAfterFlagY35 dummy
scoreboard objectives add ncmReplayAfterFlagZ35 dummy
scoreboard objectives add ncmReplayAfterFlagYaw35 dummy
scoreboard objectives add ncmReplayAfterFlagPitch35 dummy
scoreboard objectives add ncmReplayAfterFlagX36 dummy
scoreboard objectives add ncmReplayAfterFlagY36 dummy
scoreboard objectives add ncmReplayAfterFlagZ36 dummy
scoreboard objectives add ncmReplayAfterFlagYaw36 dummy
scoreboard objectives add ncmReplayAfterFlagPitch36 dummy
scoreboard objectives add ncmReplayAfterFlagX37 dummy
scoreboard objectives add ncmReplayAfterFlagY37 dummy
scoreboard objectives add ncmReplayAfterFlagZ37 dummy
scoreboard objectives add ncmReplayAfterFlagYaw37 dummy
scoreboard objectives add ncmReplayAfterFlagPitch37 dummy
scoreboard objectives add ncmReplayAfterFlagX38 dummy
scoreboard objectives add ncmReplayAfterFlagY38 dummy
scoreboard objectives add ncmReplayAfterFlagZ38 dummy
scoreboard objectives add ncmReplayAfterFlagYaw38 dummy
scoreboard objectives add ncmReplayAfterFlagPitch38 dummy
scoreboard objectives add ncmReplayAfterFlagX39 dummy
scoreboard objectives add ncmReplayAfterFlagY39 dummy
scoreboard objectives add ncmReplayAfterFlagZ39 dummy
scoreboard objectives add ncmReplayAfterFlagYaw39 dummy
scoreboard objectives add ncmReplayAfterFlagPitch39 dummy
scoreboard objectives add ncmReplayAfterFlagX40 dummy
scoreboard objectives add ncmReplayAfterFlagY40 dummy
scoreboard objectives add ncmReplayAfterFlagZ40 dummy
scoreboard objectives add ncmReplayAfterFlagYaw40 dummy
scoreboard objectives add ncmReplayAfterFlagPitch40 dummy
scoreboard objectives add ncmReplayAfterFlagX41 dummy
scoreboard objectives add ncmReplayAfterFlagY41 dummy
scoreboard objectives add ncmReplayAfterFlagZ41 dummy
scoreboard objectives add ncmReplayAfterFlagYaw41 dummy
scoreboard objectives add ncmReplayAfterFlagPitch41 dummy
scoreboard objectives add ncmReplayAfterFlagX42 dummy
scoreboard objectives add ncmReplayAfterFlagY42 dummy
scoreboard objectives add ncmReplayAfterFlagZ42 dummy
scoreboard objectives add ncmReplayAfterFlagYaw42 dummy
scoreboard objectives add ncmReplayAfterFlagPitch42 dummy
scoreboard objectives add ncmReplayAfterFlagX43 dummy
scoreboard objectives add ncmReplayAfterFlagY43 dummy
scoreboard objectives add ncmReplayAfterFlagZ43 dummy
scoreboard objectives add ncmReplayAfterFlagYaw43 dummy
scoreboard objectives add ncmReplayAfterFlagPitch43 dummy
scoreboard objectives add ncmReplayAfterFlagX44 dummy
scoreboard objectives add ncmReplayAfterFlagY44 dummy
scoreboard objectives add ncmReplayAfterFlagZ44 dummy
scoreboard objectives add ncmReplayAfterFlagYaw44 dummy
scoreboard objectives add ncmReplayAfterFlagPitch44 dummy
scoreboard objectives add ncmReplayAfterFlagX45 dummy
scoreboard objectives add ncmReplayAfterFlagY45 dummy
scoreboard objectives add ncmReplayAfterFlagZ45 dummy
scoreboard objectives add ncmReplayAfterFlagYaw45 dummy
scoreboard objectives add ncmReplayAfterFlagPitch45 dummy
scoreboard objectives add ncmReplayAfterFlagX46 dummy
scoreboard objectives add ncmReplayAfterFlagY46 dummy
scoreboard objectives add ncmReplayAfterFlagZ46 dummy
scoreboard objectives add ncmReplayAfterFlagYaw46 dummy
scoreboard objectives add ncmReplayAfterFlagPitch46 dummy
scoreboard objectives add ncmReplayAfterFlagX47 dummy
scoreboard objectives add ncmReplayAfterFlagY47 dummy
scoreboard objectives add ncmReplayAfterFlagZ47 dummy
scoreboard objectives add ncmReplayAfterFlagYaw47 dummy
scoreboard objectives add ncmReplayAfterFlagPitch47 dummy
scoreboard objectives add ncmReplayAfterFlagX48 dummy
scoreboard objectives add ncmReplayAfterFlagY48 dummy
scoreboard objectives add ncmReplayAfterFlagZ48 dummy
scoreboard objectives add ncmReplayAfterFlagYaw48 dummy
scoreboard objectives add ncmReplayAfterFlagPitch48 dummy
scoreboard objectives add ncmReplayAfterFlagX49 dummy
scoreboard objectives add ncmReplayAfterFlagY49 dummy
scoreboard objectives add ncmReplayAfterFlagZ49 dummy
scoreboard objectives add ncmReplayAfterFlagYaw49 dummy
scoreboard objectives add ncmReplayAfterFlagPitch49 dummy
scoreboard objectives add ncmReplayAfterFlagX50 dummy
scoreboard objectives add ncmReplayAfterFlagY50 dummy
scoreboard objectives add ncmReplayAfterFlagZ50 dummy
scoreboard objectives add ncmReplayAfterFlagYaw50 dummy
scoreboard objectives add ncmReplayAfterFlagPitch50 dummy
scoreboard objectives add ncmReplayAfterFlagX51 dummy
scoreboard objectives add ncmReplayAfterFlagY51 dummy
scoreboard objectives add ncmReplayAfterFlagZ51 dummy
scoreboard objectives add ncmReplayAfterFlagYaw51 dummy
scoreboard objectives add ncmReplayAfterFlagPitch51 dummy
scoreboard objectives add ncmReplayAfterFlagX52 dummy
scoreboard objectives add ncmReplayAfterFlagY52 dummy
scoreboard objectives add ncmReplayAfterFlagZ52 dummy
scoreboard objectives add ncmReplayAfterFlagYaw52 dummy
scoreboard objectives add ncmReplayAfterFlagPitch52 dummy
scoreboard objectives add ncmReplayAfterFlagX53 dummy
scoreboard objectives add ncmReplayAfterFlagY53 dummy
scoreboard objectives add ncmReplayAfterFlagZ53 dummy
scoreboard objectives add ncmReplayAfterFlagYaw53 dummy
scoreboard objectives add ncmReplayAfterFlagPitch53 dummy
scoreboard objectives add ncmReplayAfterFlagX54 dummy
scoreboard objectives add ncmReplayAfterFlagY54 dummy
scoreboard objectives add ncmReplayAfterFlagZ54 dummy
scoreboard objectives add ncmReplayAfterFlagYaw54 dummy
scoreboard objectives add ncmReplayAfterFlagPitch54 dummy
scoreboard objectives add ncmReplayAfterFlagX55 dummy
scoreboard objectives add ncmReplayAfterFlagY55 dummy
scoreboard objectives add ncmReplayAfterFlagZ55 dummy
scoreboard objectives add ncmReplayAfterFlagYaw55 dummy
scoreboard objectives add ncmReplayAfterFlagPitch55 dummy
scoreboard objectives add ncmReplayAfterFlagX56 dummy
scoreboard objectives add ncmReplayAfterFlagY56 dummy
scoreboard objectives add ncmReplayAfterFlagZ56 dummy
scoreboard objectives add ncmReplayAfterFlagYaw56 dummy
scoreboard objectives add ncmReplayAfterFlagPitch56 dummy
scoreboard objectives add ncmReplayAfterFlagX57 dummy
scoreboard objectives add ncmReplayAfterFlagY57 dummy
scoreboard objectives add ncmReplayAfterFlagZ57 dummy
scoreboard objectives add ncmReplayAfterFlagYaw57 dummy
scoreboard objectives add ncmReplayAfterFlagPitch57 dummy
scoreboard objectives add ncmReplayAfterFlagX58 dummy
scoreboard objectives add ncmReplayAfterFlagY58 dummy
scoreboard objectives add ncmReplayAfterFlagZ58 dummy
scoreboard objectives add ncmReplayAfterFlagYaw58 dummy
scoreboard objectives add ncmReplayAfterFlagPitch58 dummy
scoreboard objectives add ncmReplayAfterFlagX59 dummy
scoreboard objectives add ncmReplayAfterFlagY59 dummy
scoreboard objectives add ncmReplayAfterFlagZ59 dummy
scoreboard objectives add ncmReplayAfterFlagYaw59 dummy
scoreboard objectives add ncmReplayAfterFlagPitch59 dummy
scoreboard objectives add ncmReplayAfterFlagX60 dummy
scoreboard objectives add ncmReplayAfterFlagY60 dummy
scoreboard objectives add ncmReplayAfterFlagZ60 dummy
scoreboard objectives add ncmReplayAfterFlagYaw60 dummy
scoreboard objectives add ncmReplayAfterFlagPitch60 dummy
scoreboard objectives add ncmReplayAfterFlagX61 dummy
scoreboard objectives add ncmReplayAfterFlagY61 dummy
scoreboard objectives add ncmReplayAfterFlagZ61 dummy
scoreboard objectives add ncmReplayAfterFlagYaw61 dummy
scoreboard objectives add ncmReplayAfterFlagPitch61 dummy
scoreboard objectives add ncmReplayAfterFlagX62 dummy
scoreboard objectives add ncmReplayAfterFlagY62 dummy
scoreboard objectives add ncmReplayAfterFlagZ62 dummy
scoreboard objectives add ncmReplayAfterFlagYaw62 dummy
scoreboard objectives add ncmReplayAfterFlagPitch62 dummy
scoreboard objectives add ncmReplayAfterFlagX63 dummy
scoreboard objectives add ncmReplayAfterFlagY63 dummy
scoreboard objectives add ncmReplayAfterFlagZ63 dummy
scoreboard objectives add ncmReplayAfterFlagYaw63 dummy
scoreboard objectives add ncmReplayAfterFlagPitch63 dummy
scoreboard objectives add ncmReplayAfterFlagX64 dummy
scoreboard objectives add ncmReplayAfterFlagY64 dummy
scoreboard objectives add ncmReplayAfterFlagZ64 dummy
scoreboard objectives add ncmReplayAfterFlagYaw64 dummy
scoreboard objectives add ncmReplayAfterFlagPitch64 dummy
scoreboard objectives add ncmReplayAfterFlagX65 dummy
scoreboard objectives add ncmReplayAfterFlagY65 dummy
scoreboard objectives add ncmReplayAfterFlagZ65 dummy
scoreboard objectives add ncmReplayAfterFlagYaw65 dummy
scoreboard objectives add ncmReplayAfterFlagPitch65 dummy
scoreboard objectives add ncmReplayAfterFlagX66 dummy
scoreboard objectives add ncmReplayAfterFlagY66 dummy
scoreboard objectives add ncmReplayAfterFlagZ66 dummy
scoreboard objectives add ncmReplayAfterFlagYaw66 dummy
scoreboard objectives add ncmReplayAfterFlagPitch66 dummy
scoreboard objectives add ncmReplayAfterFlagX67 dummy
scoreboard objectives add ncmReplayAfterFlagY67 dummy
scoreboard objectives add ncmReplayAfterFlagZ67 dummy
scoreboard objectives add ncmReplayAfterFlagYaw67 dummy
scoreboard objectives add ncmReplayAfterFlagPitch67 dummy
scoreboard objectives add ncmReplayAfterFlagX68 dummy
scoreboard objectives add ncmReplayAfterFlagY68 dummy
scoreboard objectives add ncmReplayAfterFlagZ68 dummy
scoreboard objectives add ncmReplayAfterFlagYaw68 dummy
scoreboard objectives add ncmReplayAfterFlagPitch68 dummy
scoreboard objectives add ncmReplayAfterFlagX69 dummy
scoreboard objectives add ncmReplayAfterFlagY69 dummy
scoreboard objectives add ncmReplayAfterFlagZ69 dummy
scoreboard objectives add ncmReplayAfterFlagYaw69 dummy
scoreboard objectives add ncmReplayAfterFlagPitch69 dummy
scoreboard objectives add ncmReplayAfterFlagX70 dummy
scoreboard objectives add ncmReplayAfterFlagY70 dummy
scoreboard objectives add ncmReplayAfterFlagZ70 dummy
scoreboard objectives add ncmReplayAfterFlagYaw70 dummy
scoreboard objectives add ncmReplayAfterFlagPitch70 dummy
scoreboard objectives add ncmReplayAfterFlagX71 dummy
scoreboard objectives add ncmReplayAfterFlagY71 dummy
scoreboard objectives add ncmReplayAfterFlagZ71 dummy
scoreboard objectives add ncmReplayAfterFlagYaw71 dummy
scoreboard objectives add ncmReplayAfterFlagPitch71 dummy
scoreboard objectives add ncmReplayAfterFlagX72 dummy
scoreboard objectives add ncmReplayAfterFlagY72 dummy
scoreboard objectives add ncmReplayAfterFlagZ72 dummy
scoreboard objectives add ncmReplayAfterFlagYaw72 dummy
scoreboard objectives add ncmReplayAfterFlagPitch72 dummy
scoreboard objectives add ncmReplayAfterFlagX73 dummy
scoreboard objectives add ncmReplayAfterFlagY73 dummy
scoreboard objectives add ncmReplayAfterFlagZ73 dummy
scoreboard objectives add ncmReplayAfterFlagYaw73 dummy
scoreboard objectives add ncmReplayAfterFlagPitch73 dummy
scoreboard objectives add ncmReplayAfterFlagX74 dummy
scoreboard objectives add ncmReplayAfterFlagY74 dummy
scoreboard objectives add ncmReplayAfterFlagZ74 dummy
scoreboard objectives add ncmReplayAfterFlagYaw74 dummy
scoreboard objectives add ncmReplayAfterFlagPitch74 dummy
scoreboard objectives add ncmReplayAfterFlagX75 dummy
scoreboard objectives add ncmReplayAfterFlagY75 dummy
scoreboard objectives add ncmReplayAfterFlagZ75 dummy
scoreboard objectives add ncmReplayAfterFlagYaw75 dummy
scoreboard objectives add ncmReplayAfterFlagPitch75 dummy
scoreboard objectives add ncmReplayAfterFlagX76 dummy
scoreboard objectives add ncmReplayAfterFlagY76 dummy
scoreboard objectives add ncmReplayAfterFlagZ76 dummy
scoreboard objectives add ncmReplayAfterFlagYaw76 dummy
scoreboard objectives add ncmReplayAfterFlagPitch76 dummy
scoreboard objectives add ncmReplayAfterFlagX77 dummy
scoreboard objectives add ncmReplayAfterFlagY77 dummy
scoreboard objectives add ncmReplayAfterFlagZ77 dummy
scoreboard objectives add ncmReplayAfterFlagYaw77 dummy
scoreboard objectives add ncmReplayAfterFlagPitch77 dummy
scoreboard objectives add ncmReplayAfterFlagX78 dummy
scoreboard objectives add ncmReplayAfterFlagY78 dummy
scoreboard objectives add ncmReplayAfterFlagZ78 dummy
scoreboard objectives add ncmReplayAfterFlagYaw78 dummy
scoreboard objectives add ncmReplayAfterFlagPitch78 dummy
scoreboard objectives add ncmReplayAfterFlagX79 dummy
scoreboard objectives add ncmReplayAfterFlagY79 dummy
scoreboard objectives add ncmReplayAfterFlagZ79 dummy
scoreboard objectives add ncmReplayAfterFlagYaw79 dummy
scoreboard objectives add ncmReplayAfterFlagPitch79 dummy
scoreboard objectives add ncmReplayAfterFlagX80 dummy
scoreboard objectives add ncmReplayAfterFlagY80 dummy
scoreboard objectives add ncmReplayAfterFlagZ80 dummy
scoreboard objectives add ncmReplayAfterFlagYaw80 dummy
scoreboard objectives add ncmReplayAfterFlagPitch80 dummy
scoreboard objectives add ncmReplayAfterFlagX81 dummy
scoreboard objectives add ncmReplayAfterFlagY81 dummy
scoreboard objectives add ncmReplayAfterFlagZ81 dummy
scoreboard objectives add ncmReplayAfterFlagYaw81 dummy
scoreboard objectives add ncmReplayAfterFlagPitch81 dummy
scoreboard objectives add ncmReplayAfterFlagX82 dummy
scoreboard objectives add ncmReplayAfterFlagY82 dummy
scoreboard objectives add ncmReplayAfterFlagZ82 dummy
scoreboard objectives add ncmReplayAfterFlagYaw82 dummy
scoreboard objectives add ncmReplayAfterFlagPitch82 dummy
scoreboard objectives add ncmReplayAfterFlagX83 dummy
scoreboard objectives add ncmReplayAfterFlagY83 dummy
scoreboard objectives add ncmReplayAfterFlagZ83 dummy
scoreboard objectives add ncmReplayAfterFlagYaw83 dummy
scoreboard objectives add ncmReplayAfterFlagPitch83 dummy
scoreboard objectives add ncmReplayAfterFlagX84 dummy
scoreboard objectives add ncmReplayAfterFlagY84 dummy
scoreboard objectives add ncmReplayAfterFlagZ84 dummy
scoreboard objectives add ncmReplayAfterFlagYaw84 dummy
scoreboard objectives add ncmReplayAfterFlagPitch84 dummy
scoreboard objectives add ncmReplayAfterFlagX85 dummy
scoreboard objectives add ncmReplayAfterFlagY85 dummy
scoreboard objectives add ncmReplayAfterFlagZ85 dummy
scoreboard objectives add ncmReplayAfterFlagYaw85 dummy
scoreboard objectives add ncmReplayAfterFlagPitch85 dummy
scoreboard objectives add ncmReplayAfterFlagX86 dummy
scoreboard objectives add ncmReplayAfterFlagY86 dummy
scoreboard objectives add ncmReplayAfterFlagZ86 dummy
scoreboard objectives add ncmReplayAfterFlagYaw86 dummy
scoreboard objectives add ncmReplayAfterFlagPitch86 dummy
scoreboard objectives add ncmReplayAfterFlagX87 dummy
scoreboard objectives add ncmReplayAfterFlagY87 dummy
scoreboard objectives add ncmReplayAfterFlagZ87 dummy
scoreboard objectives add ncmReplayAfterFlagYaw87 dummy
scoreboard objectives add ncmReplayAfterFlagPitch87 dummy
scoreboard objectives add ncmReplayAfterFlagX88 dummy
scoreboard objectives add ncmReplayAfterFlagY88 dummy
scoreboard objectives add ncmReplayAfterFlagZ88 dummy
scoreboard objectives add ncmReplayAfterFlagYaw88 dummy
scoreboard objectives add ncmReplayAfterFlagPitch88 dummy
scoreboard objectives add ncmReplayAfterFlagX89 dummy
scoreboard objectives add ncmReplayAfterFlagY89 dummy
scoreboard objectives add ncmReplayAfterFlagZ89 dummy
scoreboard objectives add ncmReplayAfterFlagYaw89 dummy
scoreboard objectives add ncmReplayAfterFlagPitch89 dummy
scoreboard objectives add ncmReplayAfterFlagX90 dummy
scoreboard objectives add ncmReplayAfterFlagY90 dummy
scoreboard objectives add ncmReplayAfterFlagZ90 dummy
scoreboard objectives add ncmReplayAfterFlagYaw90 dummy
scoreboard objectives add ncmReplayAfterFlagPitch90 dummy
scoreboard objectives add ncmReplayAfterFlagX91 dummy
scoreboard objectives add ncmReplayAfterFlagY91 dummy
scoreboard objectives add ncmReplayAfterFlagZ91 dummy
scoreboard objectives add ncmReplayAfterFlagYaw91 dummy
scoreboard objectives add ncmReplayAfterFlagPitch91 dummy
scoreboard objectives add ncmReplayAfterFlagX92 dummy
scoreboard objectives add ncmReplayAfterFlagY92 dummy
scoreboard objectives add ncmReplayAfterFlagZ92 dummy
scoreboard objectives add ncmReplayAfterFlagYaw92 dummy
scoreboard objectives add ncmReplayAfterFlagPitch92 dummy
scoreboard objectives add ncmReplayAfterFlagX93 dummy
scoreboard objectives add ncmReplayAfterFlagY93 dummy
scoreboard objectives add ncmReplayAfterFlagZ93 dummy
scoreboard objectives add ncmReplayAfterFlagYaw93 dummy
scoreboard objectives add ncmReplayAfterFlagPitch93 dummy
scoreboard objectives add ncmReplayAfterFlagX94 dummy
scoreboard objectives add ncmReplayAfterFlagY94 dummy
scoreboard objectives add ncmReplayAfterFlagZ94 dummy
scoreboard objectives add ncmReplayAfterFlagYaw94 dummy
scoreboard objectives add ncmReplayAfterFlagPitch94 dummy
scoreboard objectives add ncmReplayAfterFlagX95 dummy
scoreboard objectives add ncmReplayAfterFlagY95 dummy
scoreboard objectives add ncmReplayAfterFlagZ95 dummy
scoreboard objectives add ncmReplayAfterFlagYaw95 dummy
scoreboard objectives add ncmReplayAfterFlagPitch95 dummy
scoreboard objectives add ncmReplayAfterFlagX96 dummy
scoreboard objectives add ncmReplayAfterFlagY96 dummy
scoreboard objectives add ncmReplayAfterFlagZ96 dummy
scoreboard objectives add ncmReplayAfterFlagYaw96 dummy
scoreboard objectives add ncmReplayAfterFlagPitch96 dummy
scoreboard objectives add ncmReplayAfterFlagX97 dummy
scoreboard objectives add ncmReplayAfterFlagY97 dummy
scoreboard objectives add ncmReplayAfterFlagZ97 dummy
scoreboard objectives add ncmReplayAfterFlagYaw97 dummy
scoreboard objectives add ncmReplayAfterFlagPitch97 dummy
scoreboard objectives add ncmReplayAfterFlagX98 dummy
scoreboard objectives add ncmReplayAfterFlagY98 dummy
scoreboard objectives add ncmReplayAfterFlagZ98 dummy
scoreboard objectives add ncmReplayAfterFlagYaw98 dummy
scoreboard objectives add ncmReplayAfterFlagPitch98 dummy
scoreboard objectives add ncmReplayAfterFlagX99 dummy
scoreboard objectives add ncmReplayAfterFlagY99 dummy
scoreboard objectives add ncmReplayAfterFlagZ99 dummy
scoreboard objectives add ncmReplayAfterFlagYaw99 dummy
scoreboard objectives add ncmReplayAfterFlagPitch99 dummy
scoreboard objectives add ncmReplayAfterFlagX100 dummy
scoreboard objectives add ncmReplayAfterFlagY100 dummy
scoreboard objectives add ncmReplayAfterFlagZ100 dummy
scoreboard objectives add ncmReplayAfterFlagYaw100 dummy
scoreboard objectives add ncmReplayAfterFlagPitch100 dummy





# -----------------
# Lag
# -----------------
scoreboard objectives add ncmTPS dummy
scoreboard players set #10 ncmTPS 1
scoreboard objectives add ncmMVMTSLagTimeout dummy

scoreboard objectives add ncmTicksNeededToDecend dummy
scoreboard objectives add ncmLastLatencyLevel dummy
scoreboard objectives add ncmLastMinimumPing dummy
scoreboard objectives add ncmLastMaximumPing dummy

scoreboard objectives add ncmCheckPlayerLatency dummy
scoreboard objectives add ncmTicksUntilNextLatencyCheck dummy
scoreboard objectives add ncmTimesLatencyLevelMaintained dummy
scoreboard objectives add ncmCalc dummy
scoreboard players set $1 ncmCalc 1
scoreboard players set $2 ncmCalc 2
scoreboard players set $50 ncmCalc 50


# Start TPS checker
function ncm:lag/tps/start


# -----------------
# Event cancel
# -----------------
scoreboard objectives add ncmOffGrCnclBusy dummy





# -----------------
# Commands
# -----------------
# Command: input
scoreboard objectives add ncmInput trigger

# Command: report
scoreboard objectives add ncmReport trigger
scoreboard objectives add ncmPLNotifyC dummy

# Command: checks
scoreboard objectives add ncmChecks trigger

# Command: help
scoreboard objectives add ncmHelp trigger

# Command: replay
scoreboard objectives add ncmReplay trigger

# Command: tour
scoreboard objectives add ncmTour trigger







# --------------------
# False positives
# --------------------

# Disable some checks for a moment after respawn
scoreboard objectives add ncmFPdeathTime minecraft.custom:minecraft.time_since_death


# --------------------
# Repuation
# --------------------

scoreboard objectives add ncmRep dummy
scoreboard objectives add ncmAddRep dummy
scoreboard objectives add ncmLowerRep dummy

scoreboard objectives add ncmGainRepClDwn dummy
scoreboard objectives add ncmLowerRepClDwn dummy
scoreboard objectives add ncmGainRepCount dummy
scoreboard objectives add ncmLowerRepCount dummy
scoreboard objectives add ncmRepGainTotal dummy
scoreboard objectives add ncmRepLowerTotal dummy
scoreboard objectives add ncmRpGainTotal dummy
scoreboard objectives add ncmRpLowerTotal dummy

scoreboard objectives add ncmTotalTime minecraft.custom:minecraft.play_time

scoreboard objectives add ncmPL dummy

scoreboard objectives add ncmPLSuspectHLCT dummy
scoreboard objectives add ncmPLObserveT dummy
scoreboard objectives add ncmPLHighT dummy

scoreboard objectives add ncmVerbose dummy




# --------------------
# Fail
# --------------------
scoreboard objectives add ncmTicksSinceLastMovementViolation dummy
scoreboard objectives add ncmTicksInAdventureMode dummy
scoreboard objectives add ncmTicksWithWeaknessEffect dummy
scoreboard objectives add ncmFailedBIMB dummy
scoreboard objectives add ncmFailedBPMB dummy
scoreboard objectives add ncmFailedBPAP dummy
scoreboard objectives add ncmFailedFCC dummy
scoreboard objectives add ncmFailedFRNG dummy
scoreboard objectives add ncmFailedINVAP dummy
scoreboard objectives add ncmFailedMVMSF dummy
scoreboard objectives add ncmFailedMVMNF dummy
scoreboard objectives add ncmFailedNETAP dummy
scoreboard objectives add ncmFailedNETUP dummy
scoreboard objectives add ncmFailedCMnchsn dummy
scoreboard objectives add ncmFailedCBedLv dummy
scoreboard objectives add ncmFailedMVMTS dummy
scoreboard objectives add ncmFailedFWT dummy
scoreboard objectives add ncmFailedFCV dummy
scoreboard objectives add ncmFailedIIB dummy
scoreboard objectives add ncmFailedFD dummy

# --------------------
# Pass
# --------------------
scoreboard objectives add ncmPassedBIMB dummy
scoreboard objectives add ncmPassedBPMB dummy
scoreboard objectives add ncmPassedBPAP dummy
scoreboard objectives add ncmPassedINVAP dummy
scoreboard objectives add ncmPassedMVMSF dummy
scoreboard objectives add ncmPassedNETAP dummy
scoreboard objectives add ncmPassedNETUP dummy

scoreboard objectives add ncmIndivudialRepRegAddition dummy
scoreboard objectives add ncmRepRegCounter minecraft.custom:minecraft.play_time
scoreboard objectives add ncmRepRegTotal dummy

# --------------------
# Statistics
# --------------------
scoreboard objectives add ncmStatistics dummy


# --------------------
# Check Manager
# --------------------
scoreboard objectives add ncmcm_toggle_BIMB dummy
scoreboard objectives add ncmcm_BIMB dummy
scoreboard objectives add ncmcm_toggle_BPMB dummy
scoreboard objectives add ncmcm_BPMB dummy
scoreboard objectives add ncmcm_toggle_BPAP dummy
scoreboard objectives add ncmcm_BPAP dummy
scoreboard objectives add ncmcm_toggle_FCR dummy
scoreboard objectives add ncmcm_FCR dummy
scoreboard objectives add ncmcm_toggle_FRC dummy
scoreboard objectives add ncmcm_FRC dummy
scoreboard objectives add ncmcm_toggle_INVAP dummy
scoreboard objectives add ncmcm_INVAP dummy
scoreboard objectives add ncmcm_toggle_MVMSF dummy
scoreboard objectives add ncmcm_MVMSF dummy
scoreboard objectives add ncmcm_toggle_MVMNF dummy
scoreboard objectives add ncmcm_MVMNF dummy
scoreboard objectives add ncmcm_toggle_NETAP dummy
scoreboard objectives add ncmcm_NETAP dummy
scoreboard objectives add ncmcm_toggle_NETUP dummy
scoreboard objectives add ncmcm_NETUP dummy
scoreboard objectives add ncmcm_toggle_COMBL dummy
scoreboard objectives add ncmcm_COMBL dummy
scoreboard objectives add ncmcm_toggle_COMMUN dummy
scoreboard objectives add ncmcm_COMMUN dummy
scoreboard objectives add ncmcm_toggle_MVMTS dummy
scoreboard objectives add ncmcm_MVMTS dummy
scoreboard objectives add ncmcm_toggle_FWT dummy
scoreboard objectives add ncmcm_FWT dummy
scoreboard objectives add ncmcm_toggle_FCV dummy
scoreboard objectives add ncmcm_FCV dummy
scoreboard objectives add ncmcm_toggle_IIB dummy
scoreboard objectives add ncmcm_IIB dummy
scoreboard objectives add ncmcm_toggle_FD dummy
scoreboard objectives add ncmcm_FD dummy

scoreboard objectives add ncmcm_currentPage dummy


# --------------------
# Configuration values
# --------------------

scoreboard objectives add ncmCC dummy


# Lag
# The number of ticks that must pass before a check is reactivated after the TPS value stabilizes. 40
scoreboard objectives add ncmc_bs_lg_1 dummy
# The minimum TPS value to ensure the functionality of the Movement.TickStride check 20
scoreboard objectives add ncmc_bs_lg_2 dummy

# Minimum tick count for latency check 1200
scoreboard objectives add ncmc_bs_lg_3 dummy
# Maximum tick count for latency check 6000
scoreboard objectives add ncmc_bs_lg_4 dummy


# Reputation
# Initial reputation 0
scoreboard objectives add ncmc_bs_rp_1 dummy
# Lowest reputation -500
scoreboard objectives add ncmc_bs_rp_2 dummy
# Hightest reputation 100
scoreboard objectives add ncmc_bs_rp_3 dummy
# Reputation limit for detection level "Observe" -200
scoreboard objectives add ncmc_bs_rp_5 dummy
# Reputation limit for detection level "High" -350
scoreboard objectives add ncmc_bs_rp_6 dummy

# Maximum reputation gain (ncmc_bs_rp_7 / 50) in (ncmc_bs_rp_8 / 3600) ticks
scoreboard objectives add ncmc_bs_rp_7 dummy
scoreboard objectives add ncmc_bs_rp_8 dummy

# Maximum reputation loss (ncmc_bs_rp_9 / 200) in (ncmc_bs_rp_10 / 1200) ticks
scoreboard objectives add ncmc_bs_rp_9 dummy
scoreboard objectives add ncmc_bs_rp_10 dummy

# Ticks between two "Check report" warnings, 0 to turn off. 36000
scoreboard objectives add ncmc_bs_rp_11 dummy



# Pass
# Regeneration of (ncmc_bs_ps_1 / 1) reputation every (ncmc_bs_ps_2 / 1200) ticks
scoreboard objectives add ncmc_bs_ps_1 dummy
scoreboard objectives add ncmc_bs_ps_2 dummy

# Fail

# How many ticks without movement violations should pass before the new setback coordinates are set? 40
scoreboard objectives add ncmc_bs_fl_59 dummy

# How many ticks should the Weakness Effect last after failing a fight check? 60
scoreboard objectives add ncmc_bs_fl_60 dummy

# How many ticks should the player be in adventure mode after failing a blockplace check? 60
scoreboard objectives add ncmc_bs_fl_61 dummy



# BlockInteract.MissingBlock
# Reputation loss for failing BlockInteract.MissingBlock (Common/HLC) 0
scoreboard objectives add ncmc_bs_fl_1 dummy
# Reputation loss for failing BlockInteract.MissingBlock (Suspect) 0
scoreboard objectives add ncmc_bs_fl_2 dummy
# Reputation loss for failing BlockInteract.MissingBlock (Rage) 0
scoreboard objectives add ncmc_bs_fl_3 dummy

# BlockPlace.Appropriate
# Reputation loss for failing BlockPlace.Appropriate (Common/HLC) 0
scoreboard objectives add ncmc_bs_fl_4 dummy
# Reputation loss for failing BlockPlace.Appropriate (Suspect) 0
scoreboard objectives add ncmc_bs_fl_5 dummy
# Reputation loss for failing BlockPlace.Appropriate (Rage) 0
scoreboard objectives add ncmc_bs_fl_6 dummy

# Fight.Criticals
# Reputation loss for failing Fight.Criticals (Common/HLC) 0
scoreboard objectives add ncmc_bs_fl_28 dummy
# Reputation loss for failing Fight.Criticals (Suspect) 30
scoreboard objectives add ncmc_bs_fl_29 dummy
# Reputation loss for failing Fight.Criticals (Rage) 50
scoreboard objectives add ncmc_bs_fl_30 dummy


# Fight.CompliantVelocity
# Reputation loss for failing Fight.CompliantVelocity (Common/HLC) 0
scoreboard objectives add ncmc_bs_fl_50 dummy
# Reputation loss for failing Fight.CompliantVelocity (Suspect) 30
scoreboard objectives add ncmc_bs_fl_51 dummy
# Reputation loss for failing Fight.CompliantVelocity (Rage) 50
scoreboard objectives add ncmc_bs_fl_52 dummy

# Inventory.InstantBow
# Reputation loss for failing Inventory.InstantBow (Common/HLC) 0
scoreboard objectives add ncmc_bs_fl_53 dummy
# Reputation loss for failing Inventory.InstantBow (Suspect) 15
scoreboard objectives add ncmc_bs_fl_54 dummy
# Reputation loss for failing FInventory.InstantBow (Rage) 15
scoreboard objectives add ncmc_bs_fl_55 dummy



# Fight.Reach
# Reputation loss for failing Fight.Reach (Common/HLC) 0
scoreboard objectives add ncmc_bs_fl_31 dummy
# Reputation loss for failing Fight.Reach (Suspect) 20
scoreboard objectives add ncmc_bs_fl_32 dummy
# Reputation loss for failing Fight.Reach (Rage) 30
scoreboard objectives add ncmc_bs_fl_33 dummy

# Inventory.Appropriate
# Reputation loss for failing Inventory.Appropriate (Common/HLC) 0
scoreboard objectives add ncmc_bs_fl_13 dummy
# Reputation loss for failing Inventory.Appropriate (Suspect) 0
scoreboard objectives add ncmc_bs_fl_14 dummy
# Reputation loss for failing Inventory.Appropriate (Rage) 0
scoreboard objectives add ncmc_bs_fl_15 dummy

# Movement.SurvivalFly
# Reputation loss for failing Movement.SurvivalFly (Common/HLC) 1
scoreboard objectives add ncmc_bs_fl_19 dummy
# Reputation loss for failing Movement.SurvivalFly (Suspect) 5
scoreboard objectives add ncmc_bs_fl_20 dummy
# Reputation loss for failing Movement.SurvivalFly (Rage) 10
scoreboard objectives add ncmc_bs_fl_21 dummy
# Penalize failed SurvivalFly checks with a setback, when Block Mode is enabled? 1
scoreboard objectives add ncmc_bs_fl_34 dummy

# Network.Appropriate
# Reputation loss for failing Network.Appropriate (Common/HLC) 0
scoreboard objectives add ncmc_bs_fl_22 dummy
# Reputation loss for failing Network.Appropriate (Suspect) 10
scoreboard objectives add ncmc_bs_fl_23 dummy
# Reputation loss for failing Network.Appropriate (Rage) 20
scoreboard objectives add ncmc_bs_fl_24 dummy

# Network.UnfittingPacket
# Reputation loss for failing Network.UnfittingPacket (Common/HLC) 0
scoreboard objectives add ncmc_bs_fl_25 dummy
# Reputation loss for failing Network.UnfittingPacket (Suspect) 0
scoreboard objectives add ncmc_bs_fl_26 dummy
# Reputation loss for failing Network.UnfittingPacket (Rage) 0
scoreboard objectives add ncmc_bs_fl_27 dummy

# Combined.Munchhausen
# Reputation loss for failing Combined.Munchhausen (Common/HLC) 0
scoreboard objectives add ncmc_bs_fl_35 dummy
# Reputation loss for failing Combined.Munchhausen (Suspect) 0
scoreboard objectives add ncmc_bs_fl_36 dummy
# Reputation loss for failing Combined.Munchhausen (Rage) 0
scoreboard objectives add ncmc_bs_fl_37 dummy

# Combined.BedLeave
# Reputation loss for failing Combined.BedLeave (Common/HLC) 0
scoreboard objectives add ncmc_bs_fl_38 dummy
# Reputation loss for failing Combined.BedLeave (Suspect) 0
scoreboard objectives add ncmc_bs_fl_39 dummy
# Reputation loss for failing Combined.BedLeave (Rage) 0
scoreboard objectives add ncmc_bs_fl_40 dummy

# Movement.TickStride
# Reputation loss for failing Movement.TickStride (Common/HLC) 0
scoreboard objectives add ncmc_bs_fl_41 dummy
# Reputation loss for failing Movement.TickStride (Suspect) 5
scoreboard objectives add ncmc_bs_fl_42 dummy
# Reputation loss for failing Movement.TickStride (Rage) 10
scoreboard objectives add ncmc_bs_fl_43 dummy

# Movement.NoFall
# Reputation loss for failing Movement.NoFall (Common/HLC) 0
scoreboard objectives add ncmc_bs_fl_44 dummy
# Reputation loss for failing Movement.NoFall (Suspect) 10
scoreboard objectives add ncmc_bs_fl_45 dummy
# Reputation loss for failing Movement.NoFall (Rage) 20
scoreboard objectives add ncmc_bs_fl_46 dummy

# Fight.WrongTurn
# Reputation loss for failing Fight.WrongTurn (Common/HLC) 0
scoreboard objectives add ncmc_bs_fl_47 dummy
# Reputation loss for failing Fight.WrongTurn (Suspect) 0
scoreboard objectives add ncmc_bs_fl_48 dummy
# Reputation loss for failing Fight.WrongTurn (Rage) 0
scoreboard objectives add ncmc_bs_fl_49 dummy

# Fight.Direction
# Reputation loss for failing Fight.Direction (Common/HLC) 20
scoreboard objectives add ncmc_bs_fl_56 dummy
# Reputation loss for failing Fight.Direction (Suspect) 30
scoreboard objectives add ncmc_bs_fl_57 dummy
# Reputation loss for failing Fight.Direction (Rage) 50
scoreboard objectives add ncmc_bs_fl_58 dummy

# NoFall 269
scoreboard objectives add ncmc_nf_1 dummy

# Appropriate (FastConsume)
# How many items the player is allowed to eat until the counter is resetted? 1
scoreboard objectives add ncmc_ap_fc_1 dummy

# InstantBow
# How many ticks must pass between two bow shots? 4
scoreboard objectives add ncmc_ib_1 dummy

# Counter max length. 43
scoreboard objectives add ncmc_ap_fc_2 dummy


# Appropriate (GameOverGUI)
scoreboard objectives add ncmc_ap_go_1 dummy


# Fight.CompliantVelocity
# x Ticks + latency level to wait for velocity application after being hit 5
scoreboard objectives add ncmc_cv_1 dummy

# Should an additional latency check be performed before the actual check fail? Note: If yes, players with a latency level > 0 will no longer be able to fail the check. 1 
scoreboard objectives add ncmc_cv_2 dummy

# Fight.Reach
# Exclude players with a latency level higher than ... 1
scoreboard objectives add ncmc_r_1 dummy

# Fight.Direction
# Measurement duration in ticks 600
scoreboard objectives add ncmc_d_1 dummy

# Minimum hit count required for evaluation 30
scoreboard objectives add ncmc_d_2 dummy

# Maximum hit count allowed for evaluation 30
scoreboard objectives add ncmc_d_3 dummy

# Fail Common/HLC if match rate is below ...% 20
scoreboard objectives add ncmc_d_4 dummy

# Fail Suspect if match rate is below ...% 15
scoreboard objectives add ncmc_d_5 dummy

# Fail Rage if match rate is below ...% 10
scoreboard objectives add ncmc_d_6 dummy

# Exclude players with a latency level higher than ... 0
scoreboard objectives add ncmc_d_7 dummy


# SurvivalFly (False Positives)
# Cooldown after aviate / levitate 10
scoreboard objectives add ncmc_sf_fp_1 dummy
# Cooldown after detecting player latency 60
scoreboard objectives add ncmc_sf_fp_2 dummy

# SurvivalFly (Distance)
# Maximum ivl value to increase lvl 1
scoreboard objectives add ncmc_sf_ds_1 dummy
# Ticks after the lvl gets resetted 1
scoreboard objectives add ncmc_sf_ds_2 dummy

# SurvivalFly (LostGround)
# Maxiumum ivl value to increase lvl 10
scoreboard objectives add ncmc_sf_lg_1 dummy
# Ticks after the lvl gets resetted 10
scoreboard objectives add ncmc_sf_lg_2 dummy


# SurvivalFly (ConstantClimbRate)
# Ticks between first and second read (Y-Coord) 3
scoreboard objectives add ncmc_sf_cr_1 dummy
# Ticks between first and second read (Y-Rate) 5
scoreboard objectives add ncmc_sf_cr_2 dummy

# SurvivalFly (OffGroundTicks)
# Maxiumum off ground ticks to increase lvl 6
scoreboard objectives add ncmc_sf_og_1 dummy
# Ticks after the off ground ticks get resetted 10
scoreboard objectives add ncmc_sf_og_2 dummy
# Jump FP cooldown 20
scoreboard objectives add ncmc_sf_og_3 dummy

# SurvivalFly (JumpCount)
# Maxiumum jumps (ncmc_sf_jc_1) in timeframe (ncmc_sf_jc_2) (1 / 10)
scoreboard objectives add ncmc_sf_jc_1 dummy
scoreboard objectives add ncmc_sf_jc_2 dummy

# SurvivalFly (MonitorMotionX)
# Failing horizontal (x) motion of the player 2
scoreboard objectives add ncmc_sf_xm_1 dummy

# SurvivalFly (MonitorMotionY)
# Failing vertical motion of the player 4201
scoreboard objectives add ncmc_sf_ym_1 dummy

# SurvivalFly (MonitorMotionZ)
# Failing horizontal (z) motion of the player 2
scoreboard objectives add ncmc_sf_zm_1 dummy


# BlockInteract (MissingBlock)
# Maxiumum interaction distance in creative mode 11
scoreboard objectives add ncmc_mb_1 dummy
# Maximum interaction distance in survival/adventure mode 10
scoreboard objectives add ncmc_mb_2 dummy

# BlockPlace (Appropriate)
# Placable number of blocks in the timeframe 3
scoreboard objectives add ncmc_ap_bp_1 dummy

# The timeframe 3
scoreboard objectives add ncmc_ap_bp_2 dummy


# TickStride

# The number of exceedances of the maximum stride values ​​required for the check to fail 2
scoreboard objectives add ncmc_ts_31 dummy

# If a legitimate value is measured after measuring a value that is too high, should the measurement start from the beginning? (0 -> No, 1 -> Yes) 0
scoreboard objectives add ncmc_ts_32 dummy

# After how many ticks should the check forget illegitimate measurements? (-1 -> never) 200
scoreboard objectives add ncmc_ts_33 dummy

# Amount of internal log-only fails required for the check to result in an external log-only fail (1 -> internal log-only fail = external log-only fail) 3
scoreboard objectives add ncmc_ts_34 dummy

# Amount of ticks to wait for the next internal log-only fail after an internal log-only fail (-1 -> forever) 100
scoreboard objectives add ncmc_ts_35 dummy

# A player-side lag / motion stop triggers the reset of the measurement. Should the reset of the count of internal log-only fails also be triggered additionally? (0 -> No, 1 -> Yes) 1
scoreboard objectives add ncmc_ts_36 dummy

# The duration of the timeout in ticks after a movement state transition. (-1 -> off) 10
scoreboard objectives add ncmc_ts_37 dummy

# The duration of the timeout in ticks after a contact with ice. (-1 -> off) 40
scoreboard objectives add ncmc_ts_38 dummy

# Should Event Cancel always lead to Reputation loss / Log? (0 -> No, 1 -> Yes) 1
scoreboard objectives add ncmc_ts_39 dummy


# (Reputation loss only) Maximum stride length per tick for Movement State 1 -> WALKING (100 = 1 Block) x
scoreboard objectives add ncmc_ts_1 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 1 -> WALKING (100 = 1 Block) x
scoreboard objectives add ncmc_ts_2 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State 2 -> SPRINTING (100 = 1 Block) x
scoreboard objectives add ncmc_ts_3 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 2 -> SPRINTING (100 = 1 Block) x
scoreboard objectives add ncmc_ts_4 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State 3 -> SNEAKING (100 = 1 Block) x
scoreboard objectives add ncmc_ts_5 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 3 -> SNEAKING (100 = 1 Block) x
scoreboard objectives add ncmc_ts_6 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State 4 -> SWIMMING (100 = 1 Block) x
scoreboard objectives add ncmc_ts_7 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 4 -> SWIMMING (100 = 1 Block) x
scoreboard objectives add ncmc_ts_8 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State 5 -> CLIMBING (100 = 1 Block) x
scoreboard objectives add ncmc_ts_9 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 5 -> CLIMBING (100 = 1 Block) x
scoreboard objectives add ncmc_ts_10 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State 6 -> FLYING (Creative Mode) (100 = 1 Block) x
scoreboard objectives add ncmc_ts_11 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 6 -> FLYING (Creative Mode) (100 = 1 Block) x
scoreboard objectives add ncmc_ts_12 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State 6 -> FLYING (Survival/Adventure Mode) (100 = 1 Block) x
scoreboard objectives add ncmc_ts_13 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 6 -> FLYING (Survival/Adventure Mode) (100 = 1 Block) x
scoreboard objectives add ncmc_ts_14 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State 7 -> MINECART (100 = 1 Block) x
scoreboard objectives add ncmc_ts_15 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 7 -> MINECART (100 = 1 Block) x
scoreboard objectives add ncmc_ts_16 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State 8 -> BOAT (Ground) (100 = 1 Block) x
scoreboard objectives add ncmc_ts_17 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 8 -> BOAT (Ground) (100 = 1 Block) x
scoreboard objectives add ncmc_ts_18 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State 8 -> BOAT (Water) (100 = 1 Block) x
scoreboard objectives add ncmc_ts_40 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 8 -> BOAT (Water) (100 = 1 Block) x
scoreboard objectives add ncmc_ts_41 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State ? -> SPRINT JUMP (100 = 1 Block) x
scoreboard objectives add ncmc_ts_42 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State ? -> SPRINT JUMP (100 = 1 Block) x
scoreboard objectives add ncmc_ts_43 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State 9 -> PIG (100 = 1 Block) x
scoreboard objectives add ncmc_ts_19 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 9 -> PIG (100 = 1 Block) x
scoreboard objectives add ncmc_ts_20 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State 10 -> AVIATING (100 = 1 Block) x
scoreboard objectives add ncmc_ts_21 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 10 -> AVIATING (100 = 1 Block) x
scoreboard objectives add ncmc_ts_22 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State 11 -> HORSE (100 = 1 Block) x
scoreboard objectives add ncmc_ts_23 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 11 -> HORSE (100 = 1 Block) x
scoreboard objectives add ncmc_ts_24 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State 12 -> STRIDER (100 = 1 Block) x
scoreboard objectives add ncmc_ts_25 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 12 -> STRIDER (100 = 1 Block) x
scoreboard objectives add ncmc_ts_26 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State 13 -> WALKING ON WATER (100 = 1 Block) x
scoreboard objectives add ncmc_ts_27 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 13 -> WALKING ON WATER (100 = 1 Block) x
scoreboard objectives add ncmc_ts_28 dummy

# (Reputation loss only) Maximum stride length per tick for Movement State 14 -> WALKING UNDER WATER (100 = 1 Block) x
scoreboard objectives add ncmc_ts_29 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 14 -> WALKING UNDER WATER (100 = 1 Block) x
scoreboard objectives add ncmc_ts_30 dummy




# ---------------------------
# BlockPlace check objectives
# ---------------------------

# Appropriate
scoreboard objectives add ncmBlocksPlaced dummy
scoreboard objectives add ncmBlocksPlacedC dummy

# ------------------------------
# BlockInteract check objectives
# ------------------------------

# MissingBlock
scoreboard objectives add ncmBIMBFire dummy
scoreboard objectives add ncmBIMBRange dummy

scoreboard objectives add ncmBIMBLastF_x dummy
scoreboard objectives add ncmBIMBLastF_y dummy
scoreboard objectives add ncmBIMBLastF_z dummy

scoreboard objectives add ncmBIMBThisF_x dummy
scoreboard objectives add ncmBIMBThisF_y dummy
scoreboard objectives add ncmBIMBThisF_z dummy

scoreboard objectives add ncmBIMBxyzEqual dummy


# TODO: Use numeric item identifiers
scoreboard objectives add ncmChest minecraft.custom:minecraft.open_chest
scoreboard objectives add ncmEChest minecraft.custom:minecraft.open_enderchest
scoreboard objectives add ncmBox minecraft.custom:minecraft.open_shulker_box
scoreboard objectives add ncmBarrel minecraft.custom:minecraft.open_barrel
scoreboard objectives add ncmDispenser minecraft.custom:minecraft.inspect_dispenser
scoreboard objectives add ncmDropper minecraft.custom:minecraft.inspect_dropper
scoreboard objectives add ncmHopper minecraft.custom:minecraft.inspect_hopper
scoreboard objectives add ncmAnvil minecraft.custom:minecraft.interact_with_anvil
scoreboard objectives add ncmBeacon minecraft.custom:minecraft.interact_with_beacon
scoreboard objectives add ncmBlastFurn minecraft.custom:minecraft.interact_with_blast_furnace
scoreboard objectives add ncmBrewSt minecraft.custom:minecraft.interact_with_brewingstand
scoreboard objectives add ncmCampf minecraft.custom:minecraft.interact_with_campfire
scoreboard objectives add ncmCraftingT minecraft.custom:minecraft.interact_with_crafting_table
scoreboard objectives add ncmFurn minecraft.custom:minecraft.interact_with_furnace
scoreboard objectives add ncmGrindstone minecraft.custom:minecraft.interact_with_grindstone
scoreboard objectives add ncmLectern minecraft.custom:minecraft.interact_with_lectern
scoreboard objectives add ncmLoom minecraft.custom:minecraft.interact_with_loom
scoreboard objectives add ncmSmith minecraft.custom:minecraft.interact_with_smithing_table
scoreboard objectives add ncmSmk minecraft.custom:minecraft.interact_with_smoker
scoreboard objectives add ncmStoneC minecraft.custom:minecraft.interact_with_stonecutter

# ----------------------
# Fight check objectives
# ----------------------



scoreboard objectives add ncmKillCount totalKillCount

# Criticals
scoreboard objectives add ncmFCCFall dummy
scoreboard objectives add ncmFCCMissingReq dummy

# Direction
scoreboard objectives add ncmFDTimer dummy
scoreboard objectives add ncmFDMatchCount dummy
scoreboard objectives add ncmFDMissCount dummy
scoreboard objectives add ncmFDMatchRate dummy
scoreboard objectives add ncmFDHitCount dummy
scoreboard objectives add ncmFDRange dummy

# CompliantVelocity
scoreboard objectives add ncmTicksUntilVelocityUsed dummy
scoreboard objectives add ncmPlayerIsCollisionFree dummy
scoreboard objectives add ncmTicksUntilVelocityMustBeUsed dummy
scoreboard objectives add ncmVelocityStackingTest dummy
scoreboard objectives add ncmFireTicks dummy

# ---------------------------
# Combined check objectives
# ---------------------------
# BedLeave
scoreboard objectives add ncmIsBedNearby dummy

# --------------------
# Net check objectives
# --------------------


# Appropriate (GameOverGUI)
scoreboard objectives add ncmAllowImmResp dummy
scoreboard objectives add ncmGameOverScr dummy
scoreboard objectives add ncmDeaths minecraft.custom:minecraft.deaths


# Appropriate (DeathTime)
scoreboard objectives add ncmDeathTime dummy
scoreboard objectives add ncmDeathTimeC dummy


# UnfittingPacket (PlayerMoveC2SPacket/OffGround)
scoreboard objectives add ncmFallPackets minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add ncmAirAround dummy

# UnfittingPacket (PlayerRespawnS2CPacket/Alive)
scoreboard objectives add ncmPlayerDeath minecraft.custom:minecraft.deaths
scoreboard objectives add ncmUPIRRspwnScr dummy
scoreboard objectives add ncmUPIR_ivl dummy



# -------------------------
# Movement check objectives
# -------------------------

# SurvivalFly General

scoreboard objectives add ncmAviate minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add ncmAviateRC dummy
scoreboard objectives add ncmLevitate dummy
scoreboard objectives add ncmAngryIGNearby dummy
scoreboard objectives add ncmCobwebNearby dummy
scoreboard objectives add ncmLiquidNearby dummy
scoreboard objectives add ncmLadderNearby dummy
scoreboard objectives add ncmDecent dummy
scoreboard objectives add ncmMaintain dummy
scoreboard objectives add ncmClimb dummy
scoreboard objectives add ncmFPDecent dummy
scoreboard objectives add ncmFPDamage minecraft.custom:minecraft.damage_taken
scoreboard objectives add ncmSFPlayerLatencyFP dummy

# SurvivalFly (Distance)
scoreboard objectives add ncmLeaveGame minecraft.custom:minecraft.leave_game
scoreboard objectives add ncmJoinGame minecraft.custom:minecraft.play_time
scoreboard objectives add ncmPlayerY dummy
scoreboard objectives add ncmLastPlayerY dummy

# SurvivalFly (LostGround)
scoreboard objectives add ncmYMotion dummy
scoreboard objectives add ncmSFLG_ivl dummy
scoreboard objectives add ncmSFLG_ivlrc dummy

# SurvivalFly (LiquidGravity)
scoreboard objectives add ncmMVMSFWWMotionY dummy
scoreboard objectives add ncmMVMSFWWFlagCount dummy
scoreboard objectives add ncmMVMSFWWFlagCountRC dummy

# SurvivalFly (OffGroundTicks)
scoreboard objectives add ncmOffGrTicks dummy
scoreboard objectives add ncmOffGrTicksC dummy
scoreboard objectives add ncmOGJump minecraft.custom:minecraft.jump
scoreboard objectives add ncmOGJumpR minecraft.custom:minecraft.jump
scoreboard objectives add ncmSFOGFailLatencyBuffer dummy
scoreboard objectives add ncmSFOGFailCountForLatencyBuffer dummy
scoreboard objectives add ncmSFOGFailCountForLatencyBufferR dummy
scoreboard objectives add ncmSFOGJoinGrace dummy

# SurvivalFly (Climb)
scoreboard objectives add ncmBoat minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add ncmSFClimbAviateGrace dummy

# SurvivalFly (JumpCount)
scoreboard objectives add ncmSFJC minecraft.custom:minecraft.jump
scoreboard objectives add ncmSFJCCeilingGrace dummy
scoreboard objectives add ncmSFJCRC dummy
scoreboard objectives add ncmSFJCR dummy


# SurvivalFly (SpoofGround)
scoreboard objectives add ncmSpoofWaitLatencyTicks dummy
scoreboard objectives add ncmSpoofIsWaiting dummy


# SurvivalFly (ConstantClimbRate)
scoreboard objectives add ncmMaintainY dummy
scoreboard objectives add ncmLastMaintainY dummy
scoreboard objectives add ncmMaintainRC dummy
scoreboard objectives add ncmYSpMaintainRC dummy
scoreboard objectives add ncmLadder minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add ncmLastYSpeed dummy
scoreboard objectives add ncmYSpeed dummy

# SurvivalFly (MonitorMotionX)
scoreboard objectives add ncmXMotionM dummy
scoreboard objectives add ncmXMotion dummy

# SurvivalFly (MonitorMotionY)
scoreboard objectives add ncmJumpBoostOffs dummy
scoreboard objectives add ncmYMotionM dummy


# SurvivalFly (MonitorMotionZ)
scoreboard objectives add ncmZMotionM dummy

# SurvivalFly (SprintFL)
scoreboard objectives add ncmFoodLevel dummy
scoreboard objectives add ncmFoodLevelGraceT dummy
scoreboard objectives add ncmIndividualFoodLevelGrace dummy

# SurvivalFly (UnexpectedClimb)
scoreboard objectives add ncmClimbedWaitForLegitimation dummy
scoreboard objectives add ncmIgnoreFurtherClimb dummy
scoreboard objectives add ncmLastXBeforeClimb dummy
scoreboard objectives add ncmLastYBeforeClimb dummy
scoreboard objectives add ncmLastZBeforeClimb dummy
scoreboard objectives add ncmLastYawBeforeClimb dummy
scoreboard objectives add ncmLastPitchBeforeClimb dummy
scoreboard objectives add ncmStepableNearby dummy
scoreboard objectives add ncmFlagLastClimb dummy
scoreboard objectives add ncmClimbFlagCount dummy
scoreboard objectives add ncmClimbFlagCountRC dummy
scoreboard objectives add ncmClimbFlagCountRCMax dummy



# NoFall
scoreboard objectives add ncmNFLastYOnGrd dummy
scoreboard objectives add ncmMVMNFApplyFDmg dummy
scoreboard objectives add ncmMVMNFField1 dummy
scoreboard objectives add ncmMVMNFDebug dummy
scoreboard objectives add ncmMVMNFReset dummy
scoreboard objectives add ncmMVMNFCalcFall dummy
scoreboard objectives add ncmMVMNFCalcHlth dummy
scoreboard objectives add ncmMVMNFStoreHlth dummy
scoreboard objectives add ncmMVMNFFall dummy
scoreboard objectives add ncmMVMNFBlocksFallDamage dummy
scoreboard objectives add ncmMVMNFSubblocksFallDamage dummy
scoreboard objectives add ncmMVMNFFallStartYCoord dummy
scoreboard objectives add ncmMVMNFFallEndYCoord dummy
scoreboard objectives add ncmMVMNFFPSourceNearby dummy
scoreboard objectives add ncmMVMNFTimeAlive dummy
scoreboard objectives add ncmMVMNFDeathCount deathCount
scoreboard objectives add ncmNFFallDamageToApply dummy

# Appropriate (Speed (General))
scoreboard objectives add ncmAPSWalk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add ncmAPSSprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add ncmAPSSneak minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add ncmAPSLadder minecraft.custom:minecraft.climb_one_cm

scoreboard objectives add ncmAPSSpeedEffI dummy
scoreboard objectives add ncmAPSSpeedEffII dummy


# Appropriate (Speed (WalkSpeed))
scoreboard objectives add ncmAPSResetC dummy
scoreboard objectives add ncmAPSLostSprA minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add ncmAPSLostSprB minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add ncmAPSlostSprIgn dummy
scoreboard objectives add ncmAPSIce dummy

# Appropriate (Speed (SprintSpeed))
scoreboard objectives add ncmAPSResetCS dummy
scoreboard objectives add ncmAPSSprJmp minecraft.custom:minecraft.jump
scoreboard objectives add ncmAPSSprJmpII minecraft.custom:minecraft.jump
scoreboard objectives add ncmAPSinvVLSpr dummy
scoreboard objectives add ncmAPSInvVLSprRC dummy
scoreboard objectives add ncmStOnIceC dummy

# Appropriate (Speed (SneakSpeed))
scoreboard objectives add ncmAPSResetCSn dummy
scoreboard objectives add ncmAPSLostWalkFP dummy

# TickStride
scoreboard objectives add ncmTimesStrideTooHighLog dummy
scoreboard objectives add ncmTimesStrideTooHighCancel dummy
scoreboard objectives add ncmTSIceTimeout dummy
scoreboard objectives add ncmTSTransitionTimeout dummy
scoreboard objectives add ncmTSResetTimer dummy
scoreboard objectives add ncmTSInternalLogOnlyFails dummy
scoreboard objectives add ncmTSInternalLogOnlyFailsResetTimer dummy
scoreboard objectives add ncmTSLevitationTimeout dummy
scoreboard objectives add ncmTicksNoMovementPacketsProcessed dummy
scoreboard objectives add ncmAllowedDistanceByPackets dummy
scoreboard objectives add ncmDistanceDifference dummy
scoreboard objectives add ncmTimesStrideTooHighWithLatency dummy
scoreboard objectives add ncmTSResetLatencyTimer dummy
scoreboard objectives add ncmInvalidateLostSprint dummy
scoreboard objectives add ncmTSSetbackX dummy
scoreboard objectives add ncmTSSetbackY dummy
scoreboard objectives add ncmTSSetbackZ dummy

# --------------------------
# Inventory check objectives
# --------------------------

# InstantBow
scoreboard objectives add ncmUsedBow minecraft.used:minecraft.bow
scoreboard objectives add ncmUsedBowTimer dummy

# Appropriate (FastConsume)
scoreboard objectives add ncmConsume dummy
scoreboard objectives add ncmConsumeC dummy


# Load up default config
scoreboard players set DataHolder ncmCC 1
# Send install notfication


execute if score DataHolder ncmFinishedTour matches 1 run tellraw @a [{"text":""},{"text":"NCM","color":"red"},{"text":": ","color":"gray"},{"text":"NoCheatMinus ","color":"gray"},{"text":"Build ","color":"yellow"},{"score":{"name":"DataHolder","objective":"ncmBuildNumber"},"color":"yellow"},{"text":" for Minecraft 1.21.3-1.21.4 has been loaded successfully.","color":"gray"}]
# First install actions

scoreboard objectives add ncmBlockMode dummy
scoreboard objectives add ncmFinishedTour dummy

# Auto-disable Inventory.Appropriate
scoreboard players set DataHolder ncmcm_toggle_INVAP 2


# Auto-enable checks



execute unless score DataHolder ncmFinishedTour matches 1 as @a unless score @s ncmOperator matches 2 run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": NoCheatMinus ","color":"gray"},{"text":"Build ","color":"yellow"},{"score":{"name":"DataHolder","objective":"ncmBuildNumber"},"color":"yellow"},{"text":" for Minecraft 1.21.3-1.21.4 has been successfully installed but is currently inactive. Operators, please run","color":"gray"},{"text":" /scoreboard players set @s ncmOperator 1 ","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmOperator 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"/scoreboard players set @s ncmOperator 1"}]}},{"text":"to initiate the next steps.","color":"gray"}]
execute unless score DataHolder ncmFinishedTour matches 1 as @a if score @s ncmOperator matches 2 run tellraw @s [{"text":""},{"text":"NCM","color":"red"},{"text":": NoCheatMinus ","color":"gray"},{"text":"Build ","color":"yellow"},{"score":{"name":"DataHolder","objective":"ncmBuildNumber"},"color":"yellow"},{"text":" for Minecraft 1.21.3-1.21.4 has been successfully installed but will remain inactive until you complete the setup tour. If you have time, you can start it anytime with","color":"gray"},{"text":" /trigger ncmTour","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger ncmTour"},"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger ncmTour"}]}},{"text":". It only takes a few minutes.","color":"gray"}]



execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmInstalled 1
