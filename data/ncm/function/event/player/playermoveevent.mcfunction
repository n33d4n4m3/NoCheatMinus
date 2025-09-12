# Multi-state Event.
execute as @a run scoreboard players operation @s ncmePlayerMoveEvent.fromX = @s ncmePlayerMoveEvent.toX
execute as @a run scoreboard players operation @s ncmePlayerMoveEvent.fromY = @s ncmePlayerMoveEvent.toY
execute as @a run scoreboard players operation @s ncmePlayerMoveEvent.fromZ = @s ncmePlayerMoveEvent.toZ
execute as @a run scoreboard players operation @s ncmePlayerMoveEvent.fromYaw = @s ncmePlayerMoveEvent.toYaw
execute as @a run scoreboard players operation @s ncmePlayerMoveEvent.fromPitch = @s ncmePlayerMoveEvent.toPitch

# Get the players position and rotation.
execute as @a store result score @s ncmePlayerMoveEvent.toX run data get entity @s Pos[0] 100
execute as @a store result score @s ncmePlayerMoveEvent.toY run data get entity @s Pos[1] 100
execute as @a store result score @s ncmePlayerMoveEvent.toZ run data get entity @s Pos[2] 100
execute as @a store result score @s ncmePlayerMoveEvent.toYaw run data get entity @s Rotation[0] 100
execute as @a store result score @s ncmePlayerMoveEvent.toPitch run data get entity @s Rotation[1] 100

# If the players position and/or rotation has changed since the last tick, fire the event, but ignore if this is the first run.
execute as @a unless score @s ncmePlayerMoveEvent.fromX = @s ncmePlayerMoveEvent.toX if score @s ncmePlayerMoveEvent.firstRunDone matches 1 run tag @s add ncmePlayerMoveEvent
execute as @a unless score @s ncmePlayerMoveEvent.fromY = @s ncmePlayerMoveEvent.toY if score @s ncmePlayerMoveEvent.firstRunDone matches 1 run tag @s add ncmePlayerMoveEvent
execute as @a unless score @s ncmePlayerMoveEvent.fromZ = @s ncmePlayerMoveEvent.toZ if score @s ncmePlayerMoveEvent.firstRunDone matches 1 run tag @s add ncmePlayerMoveEvent
execute as @a unless score @s ncmePlayerMoveEvent.fromYaw = @s ncmePlayerMoveEvent.toYaw if score @s ncmePlayerMoveEvent.firstRunDone matches 1 run tag @s add ncmePlayerMoveEvent
execute as @a unless score @s ncmePlayerMoveEvent.fromPitch = @s ncmePlayerMoveEvent.toPitch if score @s ncmePlayerMoveEvent.firstRunDone matches 1 run tag @s add ncmePlayerMoveEvent

# Modify default = from values
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players operation @s ncmePlayerMoveEvent.modX = @s ncmePlayerMoveEvent.fromX
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players operation @s ncmePlayerMoveEvent.modY = @s ncmePlayerMoveEvent.fromY
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players operation @s ncmePlayerMoveEvent.modZ = @s ncmePlayerMoveEvent.fromZ
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players operation @s ncmePlayerMoveEvent.modYaw = @s ncmePlayerMoveEvent.fromYaw
execute as @a[tag=ncmePlayerMoveEvent] run scoreboard players operation @s ncmePlayerMoveEvent.modPitch = @s ncmePlayerMoveEvent.fromPitch


# Determine boolean values
# Did X change?
execute as @a[tag=ncmePlayerMoveEvent] unless score @s ncmePlayerMoveEvent.fromX = @s ncmePlayerMoveEvent.toX run scoreboard players set @s ncmePlayerMoveEvent.hasXChanged 1
execute as @a[tag=ncmePlayerMoveEvent] unless score @s ncmePlayerMoveEvent.fromX = @s ncmePlayerMoveEvent.toX run scoreboard players set @s ncmePlayerMoveEvent.hasXZChanged 1
execute as @a[tag=ncmePlayerMoveEvent] unless score @s ncmePlayerMoveEvent.fromX = @s ncmePlayerMoveEvent.toX run scoreboard players set @s ncmePlayerMoveEvent.hasPositionChanged 1

# Did Y change? In which direction?
execute as @a[tag=ncmePlayerMoveEvent] unless score @s ncmePlayerMoveEvent.fromY = @s ncmePlayerMoveEvent.toY run scoreboard players set @s ncmePlayerMoveEvent.hasYChanged 1
execute as @a[tag=ncmePlayerMoveEvent] unless score @s ncmePlayerMoveEvent.fromY = @s ncmePlayerMoveEvent.toY run scoreboard players set @s ncmePlayerMoveEvent.hasPositionChanged 1
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.fromY < @s ncmePlayerMoveEvent.toY run scoreboard players set @s ncmePlayerMoveEvent.hasClimbed 1
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.fromY = @s ncmePlayerMoveEvent.toY run scoreboard players set @s ncmePlayerMoveEvent.hasMaintained 1
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.fromY > @s ncmePlayerMoveEvent.toY run scoreboard players set @s ncmePlayerMoveEvent.hasDescended 1

# Did Z change?
execute as @a[tag=ncmePlayerMoveEvent] unless score @s ncmePlayerMoveEvent.fromZ = @s ncmePlayerMoveEvent.toZ run scoreboard players set @s ncmePlayerMoveEvent.hasZChanged 1
execute as @a[tag=ncmePlayerMoveEvent] unless score @s ncmePlayerMoveEvent.fromZ = @s ncmePlayerMoveEvent.toZ run scoreboard players set @s ncmePlayerMoveEvent.hasXZChanged 1
execute as @a[tag=ncmePlayerMoveEvent] unless score @s ncmePlayerMoveEvent.fromZ = @s ncmePlayerMoveEvent.toZ run scoreboard players set @s ncmePlayerMoveEvent.hasPositionChanged 1

# Did Yaw change?
execute as @a[tag=ncmePlayerMoveEvent] unless score @s ncmePlayerMoveEvent.fromYaw = @s ncmePlayerMoveEvent.toYaw run scoreboard players set @s ncmePlayerMoveEvent.hasYawChanged 1
execute as @a[tag=ncmePlayerMoveEvent] unless score @s ncmePlayerMoveEvent.fromYaw = @s ncmePlayerMoveEvent.toYaw run scoreboard players set @s ncmePlayerMoveEvent.hasRotationChanged 1

# Did Pitch change?
execute as @a[tag=ncmePlayerMoveEvent] unless score @s ncmePlayerMoveEvent.fromPitch = @s ncmePlayerMoveEvent.toPitch run scoreboard players set @s ncmePlayerMoveEvent.hasPitchChanged 1
execute as @a[tag=ncmePlayerMoveEvent] unless score @s ncmePlayerMoveEvent.fromPitch = @s ncmePlayerMoveEvent.toPitch run scoreboard players set @s ncmePlayerMoveEvent.hasRotationChanged 1


# Calculate the difference between from/to X-values.
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasXChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.xDiff = @s ncmePlayerMoveEvent.toX
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasXChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.xDiff -= @s ncmePlayerMoveEvent.fromX

# Calculate the difference between from/to Y-values.
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasYChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.yDiff = @s ncmePlayerMoveEvent.toY
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasYChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.yDiff -= @s ncmePlayerMoveEvent.fromY

# Calculate the difference between from/to Z-values.
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasZChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.zDiff = @s ncmePlayerMoveEvent.toZ
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasZChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.zDiff -= @s ncmePlayerMoveEvent.fromZ

# Calculate the difference between from/to Yaw-values.
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasYawChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.yawDiff = @s ncmePlayerMoveEvent.toYaw
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasYawChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.yawDiff -= @s ncmePlayerMoveEvent.fromYaw

# Calculate the difference between from/to Pitch-values.
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasPitchChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.pitchDiff = @s ncmePlayerMoveEvent.toPitch
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasPitchChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.pitchDiff -= @s ncmePlayerMoveEvent.fromPitch


# Calculate 3D-, Horizontal- and Vertical distance.
# TODO: xyzDiffSqrd 
#   3D distance             = sqrt( (xDiff)^2 + (yDiff)^2 + (zDiff)^2 )
#   Horizontal distance     = sqrt( (xDiff)^2 + (zDiff)^2 )
#   Vertical distance       = sqrt( (yDiff)^2 )

# Step 1: Square the differences.
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasXChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.xDiffSqrd = @s ncmePlayerMoveEvent.xDiff
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasYChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.yDiffSqrd = @s ncmePlayerMoveEvent.yDiff
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasZChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.zDiffSqrd = @s ncmePlayerMoveEvent.zDiff
execute as @a[tag=ncmePlayerMoveEvent] unless score @s ncmePlayerMoveEvent.xDiffSqrd matches 0 run scoreboard players operation @s ncmePlayerMoveEvent.xDiffSqrd *= @s ncmePlayerMoveEvent.xDiffSqrd
execute as @a[tag=ncmePlayerMoveEvent] unless score @s ncmePlayerMoveEvent.yDiffSqrd matches 0 run scoreboard players operation @s ncmePlayerMoveEvent.yDiffSqrd *= @s ncmePlayerMoveEvent.yDiffSqrd
execute as @a[tag=ncmePlayerMoveEvent] unless score @s ncmePlayerMoveEvent.zDiffSqrd matches 0 run scoreboard players operation @s ncmePlayerMoveEvent.zDiffSqrd *= @s ncmePlayerMoveEvent.zDiffSqrd

# Step 2: Sum up the squared distances.
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.xyzDiffSqrd = @s ncmePlayerMoveEvent.xDiffSqrd
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.xyzDiffSqrd += @s ncmePlayerMoveEvent.yDiffSqrd
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.xyzDiffSqrd += @s ncmePlayerMoveEvent.zDiffSqrd

execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasXZChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.xzDiffSqrd = @s ncmePlayerMoveEvent.xDiffSqrd
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasXZChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.xzDiffSqrd += @s ncmePlayerMoveEvent.zDiffSqrd

# Step 3: Calculate the Square root of the squared distances.
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players reset @s ncmeutil.sqrt.field1
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players reset @s ncmeutil.sqrt.field2
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players reset @s ncmeutil.sqrt.field3
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players reset @s ncmeutil.sqrt.input
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players reset @s ncmeutil.sqrt.output


execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players operation @s ncmeutil.sqrt.input = @s ncmePlayerMoveEvent.xyzDiffSqrd
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players operation @s ncmeutil.sqrt.field3 = @s ncmeutil.sqrt.input
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasPositionChanged matches 1 run function ncm:event/util/sqrt
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players reset @s ncmeutil.sqrt.tick
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.distance3D = @s ncmeutil.sqrt.output

execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasXZChanged matches 1 run scoreboard players operation @s ncmeutil.sqrt.input = @s ncmePlayerMoveEvent.xzDiffSqrd
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasXZChanged matches 1 run scoreboard players operation @s ncmeutil.sqrt.field3 = @s ncmeutil.sqrt.input
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasXZChanged matches 1 run function ncm:event/util/sqrt
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasXZChanged matches 1 run scoreboard players reset @s ncmeutil.sqrt.tick
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasXZChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.distanceHorizontal = @s ncmeutil.sqrt.output

execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasYChanged matches 1 run scoreboard players operation @s ncmeutil.sqrt.input = @s ncmePlayerMoveEvent.yDiffSqrd
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasYChanged matches 1 run scoreboard players operation @s ncmeutil.sqrt.field3 = @s ncmeutil.sqrt.input
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasYChanged matches 1 run function ncm:event/util/sqrt
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasYChanged matches 1 run scoreboard players reset @s ncmeutil.sqrt.tick
execute as @a[tag=ncmePlayerMoveEvent] if score @s ncmePlayerMoveEvent.hasYChanged matches 1 run scoreboard players operation @s ncmePlayerMoveEvent.distanceVertical = @s ncmeutil.sqrt.output

# First run done.
execute as @a unless score @s ncmePlayerMoveEvent.firstRunDone matches 1 run scoreboard players set @s ncmePlayerMoveEvent.firstRunDone 1