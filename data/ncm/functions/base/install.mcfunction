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

scoreboard objectives add input trigger
scoreboard objectives add inputR dummy


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

scoreboard players set DataHolder ncmIsSnapshot 1
scoreboard players set DataHolder ncmYear 21
scoreboard players set DataHolder ncmWeek 7
scoreboard players set DataHolder ncmChar 1

# UUID
scoreboard objectives add globalUUID dummy
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder globalUUID 0
scoreboard objectives add UUID dummy

scoreboard objectives add globalFightID dummy
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder globalFightID 0
scoreboard objectives add fightID dummy
scoreboard players set DataHolder ncmInstalled 1


# --------------------
# False positives
# --------------------

# Disable some checks for a moment after respawn
scoreboard objectives add ncmFPdeathTime minecraft.custom:minecraft.time_since_death


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




# SurvivalFly (False Positives)
# Cooldown after using an elytra 10
scoreboard objectives add ncmc_sf_fp_1 dummy

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


# SurvivalFly (OffGroundTicks)
# Maxiumum off ground ticks to increase lvl 6
scoreboard objectives add ncmc_sf_og_1 dummy
# Ticks after the off ground ticks get resetted 10
scoreboard objectives add ncmc_sf_og_2 dummy
# Jump FP cooldown 10
scoreboard objectives add ncmc_sf_og_3 dummy

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

# BlockPlace (MissingBlock)
# Maxiumum blockplace distance in creative mode 11
scoreboard objectives add ncmc_mb_3 dummy
# Maximum blockplace distance in survival/adventure mode 10
scoreboard objectives add ncmc_mb_4 dummy

# BlockPlace (Appropriate)
# Placable number of blocks in the timeframe 3
scoreboard objectives add ncmc_ap_bp_1 dummy

# The timeframe 3
scoreboard objectives add ncmc_ap_bp_2 dummy





# ---------------------------
# BlockPlace check objectives
# ---------------------------

# Appropriate
scoreboard objectives add ncmBlocksPlaced dummy
scoreboard objectives add ncmBlocksPlacedC dummy

# MissingBlock
scoreboard objectives add ncmBPMBFire dummy
scoreboard objectives add ncmBPMBRange dummy


scoreboard objectives add ncmBPMB0 minecraft.used:minecraft.acacia_button
scoreboard objectives add ncmBPMB1 minecraft.used:minecraft.acacia_door
scoreboard objectives add ncmBPMB2 minecraft.used:minecraft.acacia_fence_gate
scoreboard objectives add ncmBPMB3 minecraft.used:minecraft.acacia_fence
scoreboard objectives add ncmBPMB4 minecraft.used:minecraft.acacia_leaves
scoreboard objectives add ncmBPMB5 minecraft.used:minecraft.acacia_log
scoreboard objectives add ncmBPMB6 minecraft.used:minecraft.acacia_planks
scoreboard objectives add ncmBPMB7 minecraft.used:minecraft.acacia_pressure_plate
scoreboard objectives add ncmBPMB8 minecraft.used:minecraft.acacia_sapling
scoreboard objectives add ncmBPMB9 minecraft.used:minecraft.acacia_sign
scoreboard objectives add ncmBPMB10 minecraft.used:minecraft.acacia_slab
scoreboard objectives add ncmBPMB11 minecraft.used:minecraft.acacia_stairs
scoreboard objectives add ncmBPMB12 minecraft.used:minecraft.acacia_trapdoor
#scoreboard objectives add ncmBPMB13 minecraft.used:minecraft.acacia_wall_sign
scoreboard objectives add ncmBPMB14 minecraft.used:minecraft.acacia_wood
scoreboard objectives add ncmBPMB15 minecraft.used:minecraft.activator_rail
scoreboard objectives add ncmBPMB16 minecraft.used:minecraft.air
scoreboard objectives add ncmBPMB17 minecraft.used:minecraft.allium
scoreboard objectives add ncmBPMB18 minecraft.used:minecraft.andesite
scoreboard objectives add ncmBPMB19 minecraft.used:minecraft.andesite_slab
scoreboard objectives add ncmBPMB20 minecraft.used:minecraft.andesite_stairs
scoreboard objectives add ncmBPMB21 minecraft.used:minecraft.andesite_wall
scoreboard objectives add ncmBPMB22 minecraft.used:minecraft.anvil
#scoreboard objectives add ncmBPMB23 minecraft.used:minecraft.attached_melon_stem
#scoreboard objectives add ncmBPMB24 minecraft.used:minecraft.attached_pumpkin_stem
scoreboard objectives add ncmBPMB25 minecraft.used:minecraft.azure_bluet
scoreboard objectives add ncmBPMB26 minecraft.used:minecraft.bamboo
#scoreboard objectives add ncmBPMB27 minecraft.used:minecraft.bamboo_sapling
scoreboard objectives add ncmBPMB28 minecraft.used:minecraft.barrel
scoreboard objectives add ncmBPMB29 minecraft.used:minecraft.barrier
scoreboard objectives add ncmBPMB30 minecraft.used:minecraft.beacon
scoreboard objectives add ncmBPMB31 minecraft.used:minecraft.bedrock
scoreboard objectives add ncmBPMB32 minecraft.used:minecraft.beehive
scoreboard objectives add ncmBPMB33 minecraft.used:minecraft.bee_nest
#scoreboard objectives add ncmBPMB34 minecraft.used:minecraft.beetroots
scoreboard objectives add ncmBPMB35 minecraft.used:minecraft.bell
scoreboard objectives add ncmBPMB36 minecraft.used:minecraft.birch_button
scoreboard objectives add ncmBPMB37 minecraft.used:minecraft.birch_door
scoreboard objectives add ncmBPMB38 minecraft.used:minecraft.birch_fence_gate
scoreboard objectives add ncmBPMB39 minecraft.used:minecraft.birch_fence
scoreboard objectives add ncmBPMB40 minecraft.used:minecraft.birch_leaves
scoreboard objectives add ncmBPMB41 minecraft.used:minecraft.birch_log
scoreboard objectives add ncmBPMB42 minecraft.used:minecraft.birch_planks
scoreboard objectives add ncmBPMB43 minecraft.used:minecraft.birch_pressure_plate
scoreboard objectives add ncmBPMB44 minecraft.used:minecraft.birch_sapling
scoreboard objectives add ncmBPMB45 minecraft.used:minecraft.birch_sign
scoreboard objectives add ncmBPMB46 minecraft.used:minecraft.birch_slab
scoreboard objectives add ncmBPMB47 minecraft.used:minecraft.birch_stairs
scoreboard objectives add ncmBPMB48 minecraft.used:minecraft.birch_trapdoor
#scoreboard objectives add ncmBPMB49 minecraft.used:minecraft.birch_wall_sign
scoreboard objectives add ncmBPMB50 minecraft.used:minecraft.birch_wood
#scoreboard objectives add ncmBPMB51 minecraft.used:minecraft.black_banner
scoreboard objectives add ncmBPMB52 minecraft.used:minecraft.black_bed
scoreboard objectives add ncmBPMB53 minecraft.used:minecraft.black_carpet
scoreboard objectives add ncmBPMB54 minecraft.used:minecraft.black_concrete_powder
scoreboard objectives add ncmBPMB55 minecraft.used:minecraft.black_concrete
scoreboard objectives add ncmBPMB56 minecraft.used:minecraft.black_glazed_terracotta
scoreboard objectives add ncmBPMB57 minecraft.used:minecraft.black_shulker_box
scoreboard objectives add ncmBPMB58 minecraft.used:minecraft.black_stained_glass
scoreboard objectives add ncmBPMB59 minecraft.used:minecraft.black_stained_glass_pane
scoreboard objectives add ncmBPMB60 minecraft.used:minecraft.black_terracotta
#scoreboard objectives add ncmBPMB61 minecraft.used:minecraft.black_wall_banner
scoreboard objectives add ncmBPMB62 minecraft.used:minecraft.black_wool
scoreboard objectives add ncmBPMB63 minecraft.used:minecraft.blast_furnace
scoreboard objectives add ncmBPMB64 minecraft.used:minecraft.blue_banner
scoreboard objectives add ncmBPMB65 minecraft.used:minecraft.blue_bed
scoreboard objectives add ncmBPMB66 minecraft.used:minecraft.blue_carpet
scoreboard objectives add ncmBPMB67 minecraft.used:minecraft.blue_concrete_powder
scoreboard objectives add ncmBPMB68 minecraft.used:minecraft.blue_concrete
scoreboard objectives add ncmBPMB69 minecraft.used:minecraft.blue_glazed_terracotta
scoreboard objectives add ncmBPMB70 minecraft.used:minecraft.blue_ice
scoreboard objectives add ncmBPMB71 minecraft.used:minecraft.blue_orchid
scoreboard objectives add ncmBPMB72 minecraft.used:minecraft.blue_shulker_box
scoreboard objectives add ncmBPMB73 minecraft.used:minecraft.blue_stained_glass
scoreboard objectives add ncmBPMB74 minecraft.used:minecraft.blue_stained_glass_pane
scoreboard objectives add ncmBPMB75 minecraft.used:minecraft.blue_terracotta
#scoreboard objectives add ncmBPMB76 minecraft.used:minecraft.blue_wall_banner
scoreboard objectives add ncmBPMB77 minecraft.used:minecraft.blue_wool
scoreboard objectives add ncmBPMB78 minecraft.used:minecraft.bone_block
scoreboard objectives add ncmBPMB79 minecraft.used:minecraft.bookshelf
scoreboard objectives add ncmBPMB80 minecraft.used:minecraft.brain_coral
scoreboard objectives add ncmBPMB81 minecraft.used:minecraft.brain_coral_block
scoreboard objectives add ncmBPMB82 minecraft.used:minecraft.brain_coral_fan
#scoreboard objectives add ncmBPMB83 minecraft.used:minecraft.brain_coral_wall_fan
scoreboard objectives add ncmBPMB84 minecraft.used:minecraft.brewing_stand
scoreboard objectives add ncmBPMB85 minecraft.used:minecraft.brick_slab
scoreboard objectives add ncmBPMB86 minecraft.used:minecraft.brick_stairs
scoreboard objectives add ncmBPMB87 minecraft.used:minecraft.brick_wall
scoreboard objectives add ncmBPMB88 minecraft.used:minecraft.bricks
scoreboard objectives add ncmBPMB89 minecraft.used:minecraft.brown_banner
scoreboard objectives add ncmBPMB90 minecraft.used:minecraft.brown_bed
scoreboard objectives add ncmBPMB91 minecraft.used:minecraft.brown_carpet
scoreboard objectives add ncmBPMB92 minecraft.used:minecraft.brown_concrete_powder
scoreboard objectives add ncmBPMB93 minecraft.used:minecraft.brown_concrete
scoreboard objectives add ncmBPMB94 minecraft.used:minecraft.brown_glazed_terracotta
scoreboard objectives add ncmBPMB95 minecraft.used:minecraft.brown_mushroom_block
scoreboard objectives add ncmBPMB96 minecraft.used:minecraft.brown_mushroom
scoreboard objectives add ncmBPMB97 minecraft.used:minecraft.brown_shulker_box
scoreboard objectives add ncmBPMB98 minecraft.used:minecraft.brown_stained_glass
scoreboard objectives add ncmBPMB99 minecraft.used:minecraft.brown_stained_glass_pane
scoreboard objectives add ncmBPMB100 minecraft.used:minecraft.brown_terracotta
#scoreboard objectives add ncmBPMB101 minecraft.used:minecraft.brown_wall_banner
scoreboard objectives add ncmBPMB102 minecraft.used:minecraft.brown_wool
#scoreboard objectives add ncmBPMB103 minecraft.used:minecraft.bubble_column
scoreboard objectives add ncmBPMB104 minecraft.used:minecraft.bubble_coral
scoreboard objectives add ncmBPMB105 minecraft.used:minecraft.bubble_coral_block
scoreboard objectives add ncmBPMB106 minecraft.used:minecraft.bubble_coral_fan
#scoreboard objectives add ncmBPMB107 minecraft.used:minecraft.bubble_coral_wall_fan
scoreboard objectives add ncmBPMB108 minecraft.used:minecraft.cactus
scoreboard objectives add ncmBPMB109 minecraft.used:minecraft.cake
scoreboard objectives add ncmBPMB110 minecraft.used:minecraft.campfire
#scoreboard objectives add ncmBPMB111 minecraft.used:minecraft.carrots
scoreboard objectives add ncmBPMB112 minecraft.used:minecraft.cartography_table
scoreboard objectives add ncmBPMB113 minecraft.used:minecraft.carved_pumpkin
scoreboard objectives add ncmBPMB114 minecraft.used:minecraft.cauldron
#scoreboard objectives add ncmBPMB115 minecraft.used:minecraft.cave_air
scoreboard objectives add ncmBPMB116 minecraft.used:minecraft.chain_command_block
scoreboard objectives add ncmBPMB117 minecraft.used:minecraft.chest
scoreboard objectives add ncmBPMB118 minecraft.used:minecraft.chipped_anvil
scoreboard objectives add ncmBPMB119 minecraft.used:minecraft.chiseled_quartz_block
scoreboard objectives add ncmBPMB120 minecraft.used:minecraft.chiseled_red_sandstone
scoreboard objectives add ncmBPMB121 minecraft.used:minecraft.chiseled_sandstone
scoreboard objectives add ncmBPMB122 minecraft.used:minecraft.chiseled_stone_bricks
scoreboard objectives add ncmBPMB123 minecraft.used:minecraft.chorus_flower
scoreboard objectives add ncmBPMB124 minecraft.used:minecraft.chorus_plant
scoreboard objectives add ncmBPMB125 minecraft.used:minecraft.clay
scoreboard objectives add ncmBPMB126 minecraft.used:minecraft.coal_block
scoreboard objectives add ncmBPMB127 minecraft.used:minecraft.coal_ore
scoreboard objectives add ncmBPMB128 minecraft.used:minecraft.coarse_dirt
scoreboard objectives add ncmBPMB129 minecraft.used:minecraft.cobblestone
scoreboard objectives add ncmBPMB130 minecraft.used:minecraft.cobblestone_slab
scoreboard objectives add ncmBPMB131 minecraft.used:minecraft.cobblestone_stairs
scoreboard objectives add ncmBPMB132 minecraft.used:minecraft.cobblestone_wall
scoreboard objectives add ncmBPMB133 minecraft.used:minecraft.cobweb
#scoreboard objectives add ncmBPMB134 minecraft.used:minecraft.cocoa
scoreboard objectives add ncmBPMB135 minecraft.used:minecraft.command_block
scoreboard objectives add ncmBPMB136 minecraft.used:minecraft.comparator
scoreboard objectives add ncmBPMB137 minecraft.used:minecraft.composter
scoreboard objectives add ncmBPMB138 minecraft.used:minecraft.conduit
scoreboard objectives add ncmBPMB139 minecraft.used:minecraft.cornflower
scoreboard objectives add ncmBPMB140 minecraft.used:minecraft.cracked_stone_bricks
scoreboard objectives add ncmBPMB141 minecraft.used:minecraft.crafting_table
scoreboard objectives add ncmBPMB142 minecraft.used:minecraft.creeper_head
#scoreboard objectives add ncmBPMB143 minecraft.used:minecraft.creeper_wall_head
scoreboard objectives add ncmBPMB144 minecraft.used:minecraft.cut_red_sandstone
scoreboard objectives add ncmBPMB145 minecraft.used:minecraft.cut_red_sandstone_slab
scoreboard objectives add ncmBPMB146 minecraft.used:minecraft.cut_sandstone
scoreboard objectives add ncmBPMB147 minecraft.used:minecraft.cut_sandstone_slab
scoreboard objectives add ncmBPMB148 minecraft.used:minecraft.cyan_banner
scoreboard objectives add ncmBPMB149 minecraft.used:minecraft.cyan_bed
scoreboard objectives add ncmBPMB150 minecraft.used:minecraft.cyan_carpet
scoreboard objectives add ncmBPMB151 minecraft.used:minecraft.cyan_concrete_powder
scoreboard objectives add ncmBPMB152 minecraft.used:minecraft.cyan_concrete
scoreboard objectives add ncmBPMB153 minecraft.used:minecraft.cyan_glazed_terracotta
scoreboard objectives add ncmBPMB154 minecraft.used:minecraft.cyan_shulker_box
scoreboard objectives add ncmBPMB155 minecraft.used:minecraft.cyan_stained_glass
scoreboard objectives add ncmBPMB156 minecraft.used:minecraft.cyan_stained_glass_pane
scoreboard objectives add ncmBPMB157 minecraft.used:minecraft.cyan_terracotta
#scoreboard objectives add ncmBPMB158 minecraft.used:minecraft.cyan_wall_banner
scoreboard objectives add ncmBPMB159 minecraft.used:minecraft.cyan_wool
scoreboard objectives add ncmBPMB160 minecraft.used:minecraft.damaged_anvil
scoreboard objectives add ncmBPMB161 minecraft.used:minecraft.dandelion
scoreboard objectives add ncmBPMB162 minecraft.used:minecraft.dark_oak_button
scoreboard objectives add ncmBPMB163 minecraft.used:minecraft.dark_oak_door
scoreboard objectives add ncmBPMB164 minecraft.used:minecraft.dark_oak_fence_gate
scoreboard objectives add ncmBPMB165 minecraft.used:minecraft.dark_oak_fence
scoreboard objectives add ncmBPMB166 minecraft.used:minecraft.dark_oak_leaves
scoreboard objectives add ncmBPMB167 minecraft.used:minecraft.dark_oak_log
scoreboard objectives add ncmBPMB168 minecraft.used:minecraft.dark_oak_planks
scoreboard objectives add ncmBPMB169 minecraft.used:minecraft.dark_oak_pressure_plate
scoreboard objectives add ncmBPMB170 minecraft.used:minecraft.dark_oak_sapling
scoreboard objectives add ncmBPMB171 minecraft.used:minecraft.dark_oak_sign
scoreboard objectives add ncmBPMB172 minecraft.used:minecraft.dark_oak_slab
scoreboard objectives add ncmBPMB173 minecraft.used:minecraft.dark_oak_stairs
scoreboard objectives add ncmBPMB174 minecraft.used:minecraft.dark_oak_trapdoor
#scoreboard objectives add ncmBPMB175 minecraft.used:minecraft.dark_oak_wall_sign
scoreboard objectives add ncmBPMB176 minecraft.used:minecraft.dark_oak_wood
scoreboard objectives add ncmBPMB177 minecraft.used:minecraft.dark_prismarine
scoreboard objectives add ncmBPMB178 minecraft.used:minecraft.dark_prismarine_slab
scoreboard objectives add ncmBPMB179 minecraft.used:minecraft.dark_prismarine_stairs
scoreboard objectives add ncmBPMB180 minecraft.used:minecraft.daylight_detector
scoreboard objectives add ncmBPMB181 minecraft.used:minecraft.dead_brain_coral
scoreboard objectives add ncmBPMB182 minecraft.used:minecraft.dead_brain_coral_block
scoreboard objectives add ncmBPMB183 minecraft.used:minecraft.dead_brain_coral_fan
#scoreboard objectives add ncmBPMB184 minecraft.used:minecraft.dead_brain_coral_wall_fan
scoreboard objectives add ncmBPMB185 minecraft.used:minecraft.dead_bubble_coral
scoreboard objectives add ncmBPMB186 minecraft.used:minecraft.dead_bubble_coral_block
scoreboard objectives add ncmBPMB187 minecraft.used:minecraft.dead_bubble_coral_fan
#scoreboard objectives add ncmBPMB188 minecraft.used:minecraft.dead_bubble_coral_wall_fan
scoreboard objectives add ncmBPMB189 minecraft.used:minecraft.dead_bush
scoreboard objectives add ncmBPMB190 minecraft.used:minecraft.dead_fire_coral
scoreboard objectives add ncmBPMB191 minecraft.used:minecraft.dead_fire_coral_block
scoreboard objectives add ncmBPMB192 minecraft.used:minecraft.dead_fire_coral_fan
#scoreboard objectives add ncmBPMB193 minecraft.used:minecraft.dead_fire_coral_wall_fan
scoreboard objectives add ncmBPMB194 minecraft.used:minecraft.dead_horn_coral
scoreboard objectives add ncmBPMB195 minecraft.used:minecraft.dead_horn_coral_block
scoreboard objectives add ncmBPMB196 minecraft.used:minecraft.dead_horn_coral_fan
#scoreboard objectives add ncmBPMB197 minecraft.used:minecraft.dead_horn_coral_wall_fan
scoreboard objectives add ncmBPMB198 minecraft.used:minecraft.dead_tube_coral
scoreboard objectives add ncmBPMB199 minecraft.used:minecraft.dead_tube_coral_block
scoreboard objectives add ncmBPMB200 minecraft.used:minecraft.dead_tube_coral_fan
#scoreboard objectives add ncmBPMB201 minecraft.used:minecraft.dead_tube_coral_wall_fan
scoreboard objectives add ncmBPMB202 minecraft.used:minecraft.detector_rail
scoreboard objectives add ncmBPMB203 minecraft.used:minecraft.diamond_block
scoreboard objectives add ncmBPMB204 minecraft.used:minecraft.diamond_ore
scoreboard objectives add ncmBPMB205 minecraft.used:minecraft.diorite
scoreboard objectives add ncmBPMB206 minecraft.used:minecraft.diorite_slab
scoreboard objectives add ncmBPMB207 minecraft.used:minecraft.diorite_stairs
scoreboard objectives add ncmBPMB208 minecraft.used:minecraft.diorite_wall
scoreboard objectives add ncmBPMB209 minecraft.used:minecraft.dirt
scoreboard objectives add ncmBPMB210 minecraft.used:minecraft.dispenser
scoreboard objectives add ncmBPMB211 minecraft.used:minecraft.dragon_egg
scoreboard objectives add ncmBPMB212 minecraft.used:minecraft.dragon_head
#scoreboard objectives add ncmBPMB213 minecraft.used:minecraft.dragon_wall_head
scoreboard objectives add ncmBPMB214 minecraft.used:minecraft.dried_kelp_block
scoreboard objectives add ncmBPMB215 minecraft.used:minecraft.dropper
scoreboard objectives add ncmBPMB216 minecraft.used:minecraft.emerald_block
scoreboard objectives add ncmBPMB217 minecraft.used:minecraft.emerald_ore
scoreboard objectives add ncmBPMB218 minecraft.used:minecraft.enchanting_table
#scoreboard objectives add ncmBPMB219 minecraft.used:minecraft.end_gateway
#scoreboard objectives add ncmBPMB220 minecraft.used:minecraft.end_portal_frame
#scoreboard objectives add ncmBPMB221 minecraft.used:minecraft.end_portal
scoreboard objectives add ncmBPMB222 minecraft.used:minecraft.end_rod
scoreboard objectives add ncmBPMB223 minecraft.used:minecraft.end_stone
scoreboard objectives add ncmBPMB224 minecraft.used:minecraft.end_stone_brick_slab
scoreboard objectives add ncmBPMB225 minecraft.used:minecraft.end_stone_brick_stairs
scoreboard objectives add ncmBPMB226 minecraft.used:minecraft.end_stone_brick_wall
scoreboard objectives add ncmBPMB227 minecraft.used:minecraft.end_stone_bricks
scoreboard objectives add ncmBPMB228 minecraft.used:minecraft.ender_chest
scoreboard objectives add ncmBPMB229 minecraft.used:minecraft.farmland
scoreboard objectives add ncmBPMB230 minecraft.used:minecraft.fern
#scoreboard objectives add ncmBPMB231 minecraft.used:minecraft.fire
scoreboard objectives add ncmBPMB232 minecraft.used:minecraft.fire_coral
scoreboard objectives add ncmBPMB233 minecraft.used:minecraft.fire_coral_block
scoreboard objectives add ncmBPMB234 minecraft.used:minecraft.fire_coral_fan
#scoreboard objectives add ncmBPMB235 minecraft.used:minecraft.fire_coral_wall_fan
scoreboard objectives add ncmBPMB236 minecraft.used:minecraft.fletching_table
scoreboard objectives add ncmBPMB237 minecraft.used:minecraft.flower_pot
#scoreboard objectives add ncmBPMB238 minecraft.used:minecraft.flowing_lava
#scoreboard objectives add ncmBPMB239 minecraft.used:minecraft.flowing_water
scoreboard objectives add ncmBPMB241 minecraft.used:minecraft.furnace
scoreboard objectives add ncmBPMB242 minecraft.used:minecraft.glass
scoreboard objectives add ncmBPMB243 minecraft.used:minecraft.glass_pane
scoreboard objectives add ncmBPMB244 minecraft.used:minecraft.glowstone
scoreboard objectives add ncmBPMB245 minecraft.used:minecraft.gold_block
scoreboard objectives add ncmBPMB246 minecraft.used:minecraft.gold_ore
scoreboard objectives add ncmBPMB247 minecraft.used:minecraft.granite
scoreboard objectives add ncmBPMB248 minecraft.used:minecraft.granite_slab
scoreboard objectives add ncmBPMB249 minecraft.used:minecraft.granite_stairs
scoreboard objectives add ncmBPMB250 minecraft.used:minecraft.granite_wall
scoreboard objectives add ncmBPMB251 minecraft.used:minecraft.grass_block
scoreboard objectives add ncmBPMB252 minecraft.used:minecraft.dirt_path
scoreboard objectives add ncmBPMB253 minecraft.used:minecraft.grass
scoreboard objectives add ncmBPMB254 minecraft.used:minecraft.gravel
scoreboard objectives add ncmBPMB255 minecraft.used:minecraft.gray_banner
scoreboard objectives add ncmBPMB256 minecraft.used:minecraft.gray_bed
scoreboard objectives add ncmBPMB257 minecraft.used:minecraft.gray_carpet
scoreboard objectives add ncmBPMB258 minecraft.used:minecraft.gray_concrete_powder
scoreboard objectives add ncmBPMB259 minecraft.used:minecraft.gray_concrete
scoreboard objectives add ncmBPMB260 minecraft.used:minecraft.gray_glazed_terracotta
scoreboard objectives add ncmBPMB261 minecraft.used:minecraft.gray_shulker_box
scoreboard objectives add ncmBPMB262 minecraft.used:minecraft.gray_stained_glass
scoreboard objectives add ncmBPMB263 minecraft.used:minecraft.gray_stained_glass_pane
scoreboard objectives add ncmBPMB264 minecraft.used:minecraft.gray_terracotta
#scoreboard objectives add ncmBPMB265 minecraft.used:minecraft.gray_wall_banner
scoreboard objectives add ncmBPMB266 minecraft.used:minecraft.gray_wool
scoreboard objectives add ncmBPMB267 minecraft.used:minecraft.green_banner
scoreboard objectives add ncmBPMB268 minecraft.used:minecraft.green_bed
scoreboard objectives add ncmBPMB269 minecraft.used:minecraft.green_carpet
scoreboard objectives add ncmBPMB270 minecraft.used:minecraft.green_concrete_powder
scoreboard objectives add ncmBPMB271 minecraft.used:minecraft.green_concrete
scoreboard objectives add ncmBPMB272 minecraft.used:minecraft.green_glazed_terracotta
scoreboard objectives add ncmBPMB273 minecraft.used:minecraft.green_shulker_box
scoreboard objectives add ncmBPMB274 minecraft.used:minecraft.green_stained_glass
scoreboard objectives add ncmBPMB275 minecraft.used:minecraft.green_stained_glass_pane
scoreboard objectives add ncmBPMB276 minecraft.used:minecraft.green_terracotta
#scoreboard objectives add ncmBPMB278 minecraft.used:minecraft.green_wool
scoreboard objectives add ncmBPMB279 minecraft.used:minecraft.grindstone
scoreboard objectives add ncmBPMB280 minecraft.used:minecraft.hay_block
scoreboard objectives add ncmBPMB281 minecraft.used:minecraft.heavy_weighted_pressure_plate
scoreboard objectives add ncmBPMB282 minecraft.used:minecraft.hopper
scoreboard objectives add ncmBPMB283 minecraft.used:minecraft.honey_block
scoreboard objectives add ncmBPMB284 minecraft.used:minecraft.honeycomb_block
scoreboard objectives add ncmBPMB285 minecraft.used:minecraft.horn_coral
scoreboard objectives add ncmBPMB286 minecraft.used:minecraft.horn_coral_block
scoreboard objectives add ncmBPMB287 minecraft.used:minecraft.horn_coral_fan
#scoreboard objectives add ncmBPMB288 minecraft.used:minecraft.horn_coral_wall_fan
scoreboard objectives add ncmBPMB289 minecraft.used:minecraft.ice
scoreboard objectives add ncmBPMB290 minecraft.used:minecraft.infested_chiseled_stone_bricks
scoreboard objectives add ncmBPMB291 minecraft.used:minecraft.infested_cobblestone
scoreboard objectives add ncmBPMB292 minecraft.used:minecraft.infested_cracked_stone_bricks
scoreboard objectives add ncmBPMB293 minecraft.used:minecraft.infested_mossy_stone_bricks
scoreboard objectives add ncmBPMB294 minecraft.used:minecraft.infested_stone
scoreboard objectives add ncmBPMB295 minecraft.used:minecraft.infested_stone_bricks
scoreboard objectives add ncmBPMB296 minecraft.used:minecraft.iron_bars
scoreboard objectives add ncmBPMB297 minecraft.used:minecraft.iron_door
scoreboard objectives add ncmBPMB298 minecraft.used:minecraft.iron_block
scoreboard objectives add ncmBPMB299 minecraft.used:minecraft.iron_ore
scoreboard objectives add ncmBPMB300 minecraft.used:minecraft.iron_trapdoor
scoreboard objectives add ncmBPMB301 minecraft.used:minecraft.jack_o_lantern
scoreboard objectives add ncmBPMB302 minecraft.used:minecraft.jigsaw
scoreboard objectives add ncmBPMB303 minecraft.used:minecraft.jukebox
scoreboard objectives add ncmBPMB304 minecraft.used:minecraft.jungle_button
scoreboard objectives add ncmBPMB305 minecraft.used:minecraft.jungle_door
scoreboard objectives add ncmBPMB306 minecraft.used:minecraft.jungle_fence_gate
scoreboard objectives add ncmBPMB307 minecraft.used:minecraft.jungle_fence
scoreboard objectives add ncmBPMB308 minecraft.used:minecraft.jungle_leaves
scoreboard objectives add ncmBPMB309 minecraft.used:minecraft.jungle_log
scoreboard objectives add ncmBPMB310 minecraft.used:minecraft.jungle_planks
scoreboard objectives add ncmBPMB311 minecraft.used:minecraft.jungle_pressure_plate
scoreboard objectives add ncmBPMB312 minecraft.used:minecraft.jungle_sapling
scoreboard objectives add ncmBPMB313 minecraft.used:minecraft.jungle_sign
scoreboard objectives add ncmBPMB314 minecraft.used:minecraft.jungle_slab
scoreboard objectives add ncmBPMB315 minecraft.used:minecraft.jungle_stairs
scoreboard objectives add ncmBPMB316 minecraft.used:minecraft.jungle_trapdoor
#scoreboard objectives add ncmBPMB317 minecraft.used:minecraft.jungle_wall_sign
scoreboard objectives add ncmBPMB318 minecraft.used:minecraft.jungle_wood
scoreboard objectives add ncmBPMB319 minecraft.used:minecraft.kelp
#scoreboard objectives add ncmBPMB320 minecraft.used:minecraft.kelp_plant
scoreboard objectives add ncmBPMB321 minecraft.used:minecraft.ladder
scoreboard objectives add ncmBPMB322 minecraft.used:minecraft.lantern
scoreboard objectives add ncmBPMB323 minecraft.used:minecraft.lapis_block
scoreboard objectives add ncmBPMB324 minecraft.used:minecraft.lapis_ore
scoreboard objectives add ncmBPMB325 minecraft.used:minecraft.large_fern
#scoreboard objectives add ncmBPMB326 minecraft.used:minecraft.lava
scoreboard objectives add ncmBPMB327 minecraft.used:minecraft.lectern
scoreboard objectives add ncmBPMB328 minecraft.used:minecraft.lever
scoreboard objectives add ncmBPMB329 minecraft.used:minecraft.light_blue_banner
scoreboard objectives add ncmBPMB330 minecraft.used:minecraft.light_blue_bed
scoreboard objectives add ncmBPMB331 minecraft.used:minecraft.light_blue_carpet
scoreboard objectives add ncmBPMB332 minecraft.used:minecraft.light_blue_concrete_powder
scoreboard objectives add ncmBPMB333 minecraft.used:minecraft.light_blue_concrete
scoreboard objectives add ncmBPMB334 minecraft.used:minecraft.light_blue_glazed_terracotta
scoreboard objectives add ncmBPMB335 minecraft.used:minecraft.light_blue_shulker_box
scoreboard objectives add ncmBPMB336 minecraft.used:minecraft.light_blue_stained_glass
scoreboard objectives add ncmBPMB337 minecraft.used:minecraft.light_blue_stained_glass_pane
scoreboard objectives add ncmBPMB338 minecraft.used:minecraft.light_blue_terracotta
#scoreboard objectives add ncmBPMB339 minecraft.used:minecraft.light_blue_wall_banner
scoreboard objectives add ncmBPMB340 minecraft.used:minecraft.light_blue_wool
scoreboard objectives add ncmBPMB341 minecraft.used:minecraft.light_gray_banner
scoreboard objectives add ncmBPMB342 minecraft.used:minecraft.light_gray_bed
scoreboard objectives add ncmBPMB343 minecraft.used:minecraft.light_gray_carpet
scoreboard objectives add ncmBPMB344 minecraft.used:minecraft.light_gray_concrete_powder
scoreboard objectives add ncmBPMB345 minecraft.used:minecraft.light_gray_concrete
scoreboard objectives add ncmBPMB346 minecraft.used:minecraft.light_gray_glazed_terracotta
scoreboard objectives add ncmBPMB347 minecraft.used:minecraft.light_gray_shulker_box
scoreboard objectives add ncmBPMB348 minecraft.used:minecraft.light_gray_stained_glass
scoreboard objectives add ncmBPMB349 minecraft.used:minecraft.light_gray_stained_glass_pane
scoreboard objectives add ncmBPMB350 minecraft.used:minecraft.light_gray_terracotta
#scoreboard objectives add ncmBPMB351 minecraft.used:minecraft.light_gray_wall_banner
scoreboard objectives add ncmBPMB352 minecraft.used:minecraft.light_gray_wool
scoreboard objectives add ncmBPMB353 minecraft.used:minecraft.light_weighted_pressure_plate
scoreboard objectives add ncmBPMB354 minecraft.used:minecraft.lilac
scoreboard objectives add ncmBPMB355 minecraft.used:minecraft.lily_pad
scoreboard objectives add ncmBPMB356 minecraft.used:minecraft.lily_of_the_valley
scoreboard objectives add ncmBPMB357 minecraft.used:minecraft.lime_banner
scoreboard objectives add ncmBPMB358 minecraft.used:minecraft.lime_bed
scoreboard objectives add ncmBPMB359 minecraft.used:minecraft.lime_carpet
scoreboard objectives add ncmBPMB360 minecraft.used:minecraft.lime_concrete_powder
scoreboard objectives add ncmBPMB361 minecraft.used:minecraft.lime_concrete
scoreboard objectives add ncmBPMB362 minecraft.used:minecraft.lime_glazed_terracotta
scoreboard objectives add ncmBPMB363 minecraft.used:minecraft.lime_shulker_box
scoreboard objectives add ncmBPMB364 minecraft.used:minecraft.lime_stained_glass
scoreboard objectives add ncmBPMB365 minecraft.used:minecraft.lime_stained_glass_pane
scoreboard objectives add ncmBPMB366 minecraft.used:minecraft.lime_terracotta
#scoreboard objectives add ncmBPMB367 minecraft.used:minecraft.lime_wall_banner
scoreboard objectives add ncmBPMB368 minecraft.used:minecraft.lime_wool
scoreboard objectives add ncmBPMB369 minecraft.used:minecraft.loom
scoreboard objectives add ncmBPMB370 minecraft.used:minecraft.magenta_banner
scoreboard objectives add ncmBPMB371 minecraft.used:minecraft.magenta_bed
scoreboard objectives add ncmBPMB372 minecraft.used:minecraft.magenta_carpet
scoreboard objectives add ncmBPMB373 minecraft.used:minecraft.magenta_concrete_powder
scoreboard objectives add ncmBPMB374 minecraft.used:minecraft.magenta_concrete
scoreboard objectives add ncmBPMB375 minecraft.used:minecraft.magenta_glazed_terracotta
scoreboard objectives add ncmBPMB376 minecraft.used:minecraft.magenta_shulker_box
scoreboard objectives add ncmBPMB377 minecraft.used:minecraft.magenta_stained_glass
scoreboard objectives add ncmBPMB378 minecraft.used:minecraft.magenta_stained_glass_pane
scoreboard objectives add ncmBPMB379 minecraft.used:minecraft.magenta_terracotta
#scoreboard objectives add ncmBPMB380 minecraft.used:minecraft.magenta_wall_banner
scoreboard objectives add ncmBPMB381 minecraft.used:minecraft.magenta_wool
scoreboard objectives add ncmBPMB382 minecraft.used:minecraft.magma_block
scoreboard objectives add ncmBPMB383 minecraft.used:minecraft.melon
#scoreboard objectives add ncmBPMB384 minecraft.used:minecraft.melon_stem
scoreboard objectives add ncmBPMB385 minecraft.used:minecraft.mossy_cobblestone
scoreboard objectives add ncmBPMB386 minecraft.used:minecraft.mossy_cobblestone_slab
scoreboard objectives add ncmBPMB387 minecraft.used:minecraft.mossy_cobblestone_stairs
scoreboard objectives add ncmBPMB388 minecraft.used:minecraft.mossy_cobblestone_wall
scoreboard objectives add ncmBPMB389 minecraft.used:minecraft.mossy_stone_brick_slab
scoreboard objectives add ncmBPMB390 minecraft.used:minecraft.mossy_stone_brick_stairs
scoreboard objectives add ncmBPMB391 minecraft.used:minecraft.mossy_stone_brick_wall
scoreboard objectives add ncmBPMB392 minecraft.used:minecraft.mossy_stone_bricks
#scoreboard objectives add ncmBPMB393 minecraft.used:minecraft.moving_piston
scoreboard objectives add ncmBPMB394 minecraft.used:minecraft.mushroom_stem
scoreboard objectives add ncmBPMB395 minecraft.used:minecraft.mycelium
scoreboard objectives add ncmBPMB396 minecraft.used:minecraft.nether_brick_fence
scoreboard objectives add ncmBPMB397 minecraft.used:minecraft.nether_brick_slab
scoreboard objectives add ncmBPMB398 minecraft.used:minecraft.nether_brick_stairs
scoreboard objectives add ncmBPMB399 minecraft.used:minecraft.nether_brick_wall
scoreboard objectives add ncmBPMB400 minecraft.used:minecraft.nether_bricks
#scoreboard objectives add ncmBPMB401 minecraft.used:minecraft.nether_portal
scoreboard objectives add ncmBPMB402 minecraft.used:minecraft.nether_quartz_ore
scoreboard objectives add ncmBPMB403 minecraft.used:minecraft.nether_wart_block
scoreboard objectives add ncmBPMB404 minecraft.used:minecraft.nether_wart
scoreboard objectives add ncmBPMB405 minecraft.used:minecraft.netherrack
scoreboard objectives add ncmBPMB406 minecraft.used:minecraft.note_block
scoreboard objectives add ncmBPMB407 minecraft.used:minecraft.oak_button
scoreboard objectives add ncmBPMB408 minecraft.used:minecraft.oak_door
scoreboard objectives add ncmBPMB409 minecraft.used:minecraft.oak_fence_gate
scoreboard objectives add ncmBPMB410 minecraft.used:minecraft.oak_fence
scoreboard objectives add ncmBPMB411 minecraft.used:minecraft.oak_leaves
scoreboard objectives add ncmBPMB412 minecraft.used:minecraft.oak_log
scoreboard objectives add ncmBPMB413 minecraft.used:minecraft.oak_planks
scoreboard objectives add ncmBPMB414 minecraft.used:minecraft.oak_pressure_plate
scoreboard objectives add ncmBPMB415 minecraft.used:minecraft.oak_sapling
scoreboard objectives add ncmBPMB416 minecraft.used:minecraft.oak_sign
scoreboard objectives add ncmBPMB417 minecraft.used:minecraft.oak_slab
scoreboard objectives add ncmBPMB418 minecraft.used:minecraft.oak_stairs
scoreboard objectives add ncmBPMB419 minecraft.used:minecraft.oak_trapdoor
#scoreboard objectives add ncmBPMB420 minecraft.used:minecraft.oak_wall_sign
scoreboard objectives add ncmBPMB421 minecraft.used:minecraft.oak_wood
scoreboard objectives add ncmBPMB422 minecraft.used:minecraft.observer
scoreboard objectives add ncmBPMB423 minecraft.used:minecraft.obsidian
scoreboard objectives add ncmBPMB424 minecraft.used:minecraft.orange_banner
scoreboard objectives add ncmBPMB425 minecraft.used:minecraft.orange_bed
scoreboard objectives add ncmBPMB426 minecraft.used:minecraft.orange_carpet
scoreboard objectives add ncmBPMB427 minecraft.used:minecraft.orange_concrete_powder
scoreboard objectives add ncmBPMB428 minecraft.used:minecraft.orange_concrete
scoreboard objectives add ncmBPMB429 minecraft.used:minecraft.orange_glazed_terracotta
scoreboard objectives add ncmBPMB430 minecraft.used:minecraft.orange_shulker_box
scoreboard objectives add ncmBPMB431 minecraft.used:minecraft.orange_stained_glass
scoreboard objectives add ncmBPMB432 minecraft.used:minecraft.orange_stained_glass_pane
scoreboard objectives add ncmBPMB433 minecraft.used:minecraft.orange_terracotta
scoreboard objectives add ncmBPMB434 minecraft.used:minecraft.orange_tulip
#scoreboard objectives add ncmBPMB435 minecraft.used:minecraft.orange_wall_banner
scoreboard objectives add ncmBPMB436 minecraft.used:minecraft.orange_wool
scoreboard objectives add ncmBPMB437 minecraft.used:minecraft.oxeye_daisy
scoreboard objectives add ncmBPMB438 minecraft.used:minecraft.packed_ice
scoreboard objectives add ncmBPMB439 minecraft.used:minecraft.peony
scoreboard objectives add ncmBPMB440 minecraft.used:minecraft.petrified_oak_slab
scoreboard objectives add ncmBPMB441 minecraft.used:minecraft.pink_banner
scoreboard objectives add ncmBPMB442 minecraft.used:minecraft.pink_bed
scoreboard objectives add ncmBPMB443 minecraft.used:minecraft.pink_carpet
scoreboard objectives add ncmBPMB444 minecraft.used:minecraft.pink_concrete_powder
scoreboard objectives add ncmBPMB445 minecraft.used:minecraft.pink_concrete
scoreboard objectives add ncmBPMB446 minecraft.used:minecraft.pink_glazed_terracotta
scoreboard objectives add ncmBPMB447 minecraft.used:minecraft.pink_shulker_box
scoreboard objectives add ncmBPMB448 minecraft.used:minecraft.pink_stained_glass
scoreboard objectives add ncmBPMB449 minecraft.used:minecraft.pink_stained_glass_pane
scoreboard objectives add ncmBPMB450 minecraft.used:minecraft.pink_terracotta
scoreboard objectives add ncmBPMB451 minecraft.used:minecraft.pink_tulip
#scoreboard objectives add ncmBPMB452 minecraft.used:minecraft.pink_wall_banner
scoreboard objectives add ncmBPMB453 minecraft.used:minecraft.pink_wool
#scoreboard objectives add ncmBPMB454 minecraft.used:minecraft.piston_head
scoreboard objectives add ncmBPMB455 minecraft.used:minecraft.piston
scoreboard objectives add ncmBPMB456 minecraft.used:minecraft.player_head
#scoreboard objectives add ncmBPMB457 minecraft.used:minecraft.player_wall_head
scoreboard objectives add ncmBPMB458 minecraft.used:minecraft.podzol
scoreboard objectives add ncmBPMB459 minecraft.used:minecraft.polished_andesite
scoreboard objectives add ncmBPMB460 minecraft.used:minecraft.polished_andesite_slab
scoreboard objectives add ncmBPMB461 minecraft.used:minecraft.polished_andesite_stairs
scoreboard objectives add ncmBPMB462 minecraft.used:minecraft.polished_diorite
scoreboard objectives add ncmBPMB463 minecraft.used:minecraft.polished_diorite_slab
scoreboard objectives add ncmBPMB464 minecraft.used:minecraft.polished_diorite_stairs
scoreboard objectives add ncmBPMB465 minecraft.used:minecraft.polished_granite
scoreboard objectives add ncmBPMB466 minecraft.used:minecraft.polished_granite_slab
scoreboard objectives add ncmBPMB467 minecraft.used:minecraft.polished_granite_stairs
scoreboard objectives add ncmBPMB468 minecraft.used:minecraft.poppy
#scoreboard objectives add ncmBPMB469 minecraft.used:minecraft.potatoes
#scoreboard objectives add ncmBPMB470 minecraft.used:minecraft.potted_acacia_sapling
#scoreboard objectives add ncmBPMB471 minecraft.used:minecraft.potted_allium
#scoreboard objectives add ncmBPMB472 minecraft.used:minecraft.potted_azure_bluet
#scoreboard objectives add ncmBPMB473 minecraft.used:minecraft.potted_bamboo
#scoreboard objectives add ncmBPMB474 minecraft.used:minecraft.potted_birch_sapling
#scoreboard objectives add ncmBPMB475 minecraft.used:minecraft.potted_blue_orchid
#scoreboard objectives add ncmBPMB476 minecraft.used:minecraft.potted_brown_mushroom
#scoreboard objectives add ncmBPMB477 minecraft.used:minecraft.potted_cactus
#scoreboard objectives add ncmBPMB478 minecraft.used:minecraft.potted_cornflower
#scoreboard objectives add ncmBPMB479 minecraft.used:minecraft.potted_dandelion
#scoreboard objectives add ncmBPMB480 minecraft.used:minecraft.potted_dark_oak_sapling
#scoreboard objectives add ncmBPMB481 minecraft.used:minecraft.potted_dead_bush
#scoreboard objectives add ncmBPMB482 minecraft.used:minecraft.potted_fern
#scoreboard objectives add ncmBPMB483 minecraft.used:minecraft.potted_jungle_sapling
#scoreboard objectives add ncmBPMB484 minecraft.used:minecraft.potted_lily_of_the_valley
#scoreboard objectives add ncmBPMB485 minecraft.used:minecraft.potted_oak_sapling
#scoreboard objectives add ncmBPMB486 minecraft.used:minecraft.potted_orange_tulip
#scoreboard objectives add ncmBPMB487 minecraft.used:minecraft.potted_oxeye_daisy
#scoreboard objectives add ncmBPMB488 minecraft.used:minecraft.potted_pink_tulip
#scoreboard objectives add ncmBPMB489 minecraft.used:minecraft.potted_poppy
#scoreboard objectives add ncmBPMB490 minecraft.used:minecraft.potted_red_mushroom
#scoreboard objectives add ncmBPMB491 minecraft.used:minecraft.potted_red_tulip
#scoreboard objectives add ncmBPMB492 minecraft.used:minecraft.potted_spruce_sapling
#scoreboard objectives add ncmBPMB493 minecraft.used:minecraft.potted_white_tulip
#scoreboard objectives add ncmBPMB494 minecraft.used:minecraft.potted_wither_rose
scoreboard objectives add ncmBPMB495 minecraft.used:minecraft.powered_rail
scoreboard objectives add ncmBPMB496 minecraft.used:minecraft.prismarine
scoreboard objectives add ncmBPMB497 minecraft.used:minecraft.prismarine_brick_slab
scoreboard objectives add ncmBPMB498 minecraft.used:minecraft.prismarine_brick_stairs
scoreboard objectives add ncmBPMB499 minecraft.used:minecraft.prismarine_bricks
scoreboard objectives add ncmBPMB500 minecraft.used:minecraft.prismarine_slab
scoreboard objectives add ncmBPMB501 minecraft.used:minecraft.prismarine_stairs
scoreboard objectives add ncmBPMB502 minecraft.used:minecraft.prismarine_wall
scoreboard objectives add ncmBPMB503 minecraft.used:minecraft.pumpkin
#scoreboard objectives add ncmBPMB504 minecraft.used:minecraft.pumpkin_stem
scoreboard objectives add ncmBPMB505 minecraft.used:minecraft.purple_banner
scoreboard objectives add ncmBPMB506 minecraft.used:minecraft.purple_bed
scoreboard objectives add ncmBPMB507 minecraft.used:minecraft.purple_carpet
scoreboard objectives add ncmBPMB508 minecraft.used:minecraft.purple_concrete_powder
scoreboard objectives add ncmBPMB509 minecraft.used:minecraft.purple_concrete
scoreboard objectives add ncmBPMB510 minecraft.used:minecraft.purple_glazed_terracotta
scoreboard objectives add ncmBPMB511 minecraft.used:minecraft.purple_shulker_box
scoreboard objectives add ncmBPMB512 minecraft.used:minecraft.purple_stained_glass
scoreboard objectives add ncmBPMB513 minecraft.used:minecraft.purple_stained_glass_pane
scoreboard objectives add ncmBPMB514 minecraft.used:minecraft.purple_terracotta
#scoreboard objectives add ncmBPMB515 minecraft.used:minecraft.purple_wall_banner
scoreboard objectives add ncmBPMB516 minecraft.used:minecraft.purple_wool
scoreboard objectives add ncmBPMB517 minecraft.used:minecraft.purpur_block
scoreboard objectives add ncmBPMB518 minecraft.used:minecraft.purpur_pillar
scoreboard objectives add ncmBPMB519 minecraft.used:minecraft.purpur_slab
scoreboard objectives add ncmBPMB520 minecraft.used:minecraft.purpur_stairs
scoreboard objectives add ncmBPMB521 minecraft.used:minecraft.quartz_block
scoreboard objectives add ncmBPMB522 minecraft.used:minecraft.quartz_pillar
scoreboard objectives add ncmBPMB523 minecraft.used:minecraft.quartz_slab
scoreboard objectives add ncmBPMB524 minecraft.used:minecraft.quartz_stairs
scoreboard objectives add ncmBPMB525 minecraft.used:minecraft.rail
scoreboard objectives add ncmBPMB526 minecraft.used:minecraft.red_banner
scoreboard objectives add ncmBPMB527 minecraft.used:minecraft.red_bed
scoreboard objectives add ncmBPMB528 minecraft.used:minecraft.red_carpet
scoreboard objectives add ncmBPMB529 minecraft.used:minecraft.red_concrete_powder
scoreboard objectives add ncmBPMB530 minecraft.used:minecraft.red_concrete
scoreboard objectives add ncmBPMB531 minecraft.used:minecraft.red_glazed_terracotta
scoreboard objectives add ncmBPMB532 minecraft.used:minecraft.red_mushroom_block
scoreboard objectives add ncmBPMB533 minecraft.used:minecraft.red_mushroom
scoreboard objectives add ncmBPMB534 minecraft.used:minecraft.red_nether_brick_slab
scoreboard objectives add ncmBPMB535 minecraft.used:minecraft.red_nether_brick_stairs
scoreboard objectives add ncmBPMB536 minecraft.used:minecraft.red_nether_brick_wall
scoreboard objectives add ncmBPMB537 minecraft.used:minecraft.red_nether_bricks
scoreboard objectives add ncmBPMB538 minecraft.used:minecraft.red_sand
scoreboard objectives add ncmBPMB539 minecraft.used:minecraft.red_sandstone
scoreboard objectives add ncmBPMB540 minecraft.used:minecraft.red_sandstone_slab
scoreboard objectives add ncmBPMB541 minecraft.used:minecraft.red_sandstone_stairs
scoreboard objectives add ncmBPMB542 minecraft.used:minecraft.red_sandstone_wall
scoreboard objectives add ncmBPMB543 minecraft.used:minecraft.red_shulker_box
scoreboard objectives add ncmBPMB544 minecraft.used:minecraft.red_stained_glass
scoreboard objectives add ncmBPMB545 minecraft.used:minecraft.red_stained_glass_pane
scoreboard objectives add ncmBPMB546 minecraft.used:minecraft.red_terracotta
scoreboard objectives add ncmBPMB547 minecraft.used:minecraft.red_tulip
#scoreboard objectives add ncmBPMB548 minecraft.used:minecraft.red_wall_banner
scoreboard objectives add ncmBPMB549 minecraft.used:minecraft.red_wool
scoreboard objectives add ncmBPMB550 minecraft.used:minecraft.redstone_block
scoreboard objectives add ncmBPMB551 minecraft.used:minecraft.redstone_lamp
scoreboard objectives add ncmBPMB552 minecraft.used:minecraft.redstone_ore
scoreboard objectives add ncmBPMB553 minecraft.used:minecraft.redstone_torch
#scoreboard objectives add ncmBPMB554 minecraft.used:minecraft.redstone_wall_torch
#scoreboard objectives add ncmBPMB555 minecraft.used:minecraft.redstone_wire
scoreboard objectives add ncmBPMB556 minecraft.used:minecraft.repeater
scoreboard objectives add ncmBPMB557 minecraft.used:minecraft.repeating_command_block
scoreboard objectives add ncmBPMB558 minecraft.used:minecraft.rose_bush
scoreboard objectives add ncmBPMB559 minecraft.used:minecraft.sand
scoreboard objectives add ncmBPMB560 minecraft.used:minecraft.sandstone
scoreboard objectives add ncmBPMB561 minecraft.used:minecraft.sandstone_slab
scoreboard objectives add ncmBPMB562 minecraft.used:minecraft.sandstone_stairs
scoreboard objectives add ncmBPMB563 minecraft.used:minecraft.sandstone_wall
scoreboard objectives add ncmBPMB564 minecraft.used:minecraft.scaffolding
scoreboard objectives add ncmBPMB565 minecraft.used:minecraft.sea_lantern
scoreboard objectives add ncmBPMB566 minecraft.used:minecraft.sea_pickle
scoreboard objectives add ncmBPMB567 minecraft.used:minecraft.seagrass
scoreboard objectives add ncmBPMB568 minecraft.used:minecraft.shulker_box
scoreboard objectives add ncmBPMB569 minecraft.used:minecraft.skeleton_skull
#scoreboard objectives add ncmBPMB570 minecraft.used:minecraft.skeleton_wall_skull
scoreboard objectives add ncmBPMB571 minecraft.used:minecraft.slime_block
scoreboard objectives add ncmBPMB572 minecraft.used:minecraft.smithing_table
scoreboard objectives add ncmBPMB573 minecraft.used:minecraft.smoker
scoreboard objectives add ncmBPMB574 minecraft.used:minecraft.smooth_quartz
scoreboard objectives add ncmBPMB575 minecraft.used:minecraft.smooth_quartz_slab
scoreboard objectives add ncmBPMB576 minecraft.used:minecraft.smooth_quartz_stairs
scoreboard objectives add ncmBPMB577 minecraft.used:minecraft.smooth_red_sandstone
scoreboard objectives add ncmBPMB578 minecraft.used:minecraft.smooth_red_sandstone_slab
scoreboard objectives add ncmBPMB579 minecraft.used:minecraft.smooth_red_sandstone_stairs
scoreboard objectives add ncmBPMB580 minecraft.used:minecraft.smooth_sandstone
scoreboard objectives add ncmBPMB581 minecraft.used:minecraft.smooth_sandstone_slab
scoreboard objectives add ncmBPMB582 minecraft.used:minecraft.smooth_sandstone_stairs
scoreboard objectives add ncmBPMB583 minecraft.used:minecraft.smooth_stone
scoreboard objectives add ncmBPMB584 minecraft.used:minecraft.smooth_stone_slab
scoreboard objectives add ncmBPMB585 minecraft.used:minecraft.snow_block
scoreboard objectives add ncmBPMB586 minecraft.used:minecraft.snow
scoreboard objectives add ncmBPMB587 minecraft.used:minecraft.soul_sand
scoreboard objectives add ncmBPMB588 minecraft.used:minecraft.spawner
scoreboard objectives add ncmBPMB589 minecraft.used:minecraft.sponge
scoreboard objectives add ncmBPMB590 minecraft.used:minecraft.spruce_button
scoreboard objectives add ncmBPMB591 minecraft.used:minecraft.spruce_door
scoreboard objectives add ncmBPMB592 minecraft.used:minecraft.spruce_fence_gate
scoreboard objectives add ncmBPMB593 minecraft.used:minecraft.spruce_fence
scoreboard objectives add ncmBPMB594 minecraft.used:minecraft.spruce_leaves
scoreboard objectives add ncmBPMB595 minecraft.used:minecraft.spruce_log
scoreboard objectives add ncmBPMB596 minecraft.used:minecraft.spruce_planks
scoreboard objectives add ncmBPMB597 minecraft.used:minecraft.spruce_pressure_plate
scoreboard objectives add ncmBPMB598 minecraft.used:minecraft.spruce_sapling
scoreboard objectives add ncmBPMB599 minecraft.used:minecraft.spruce_sign
scoreboard objectives add ncmBPMB600 minecraft.used:minecraft.spruce_slab
scoreboard objectives add ncmBPMB601 minecraft.used:minecraft.spruce_stairs
scoreboard objectives add ncmBPMB602 minecraft.used:minecraft.spruce_trapdoor
#scoreboard objectives add ncmBPMB603 minecraft.used:minecraft.spruce_wall_sign
scoreboard objectives add ncmBPMB604 minecraft.used:minecraft.spruce_wood
scoreboard objectives add ncmBPMB605 minecraft.used:minecraft.sticky_piston
scoreboard objectives add ncmBPMB606 minecraft.used:minecraft.stone
scoreboard objectives add ncmBPMB607 minecraft.used:minecraft.stone_brick_slab
scoreboard objectives add ncmBPMB608 minecraft.used:minecraft.stone_brick_stairs
scoreboard objectives add ncmBPMB609 minecraft.used:minecraft.stone_brick_wall
scoreboard objectives add ncmBPMB610 minecraft.used:minecraft.stone_bricks
scoreboard objectives add ncmBPMB611 minecraft.used:minecraft.stone_button
scoreboard objectives add ncmBPMB612 minecraft.used:minecraft.stone_pressure_plate
scoreboard objectives add ncmBPMB613 minecraft.used:minecraft.stone_slab
scoreboard objectives add ncmBPMB614 minecraft.used:minecraft.stone_stairs
scoreboard objectives add ncmBPMB615 minecraft.used:minecraft.stonecutter
scoreboard objectives add ncmBPMB616 minecraft.used:minecraft.stripped_acacia_log
scoreboard objectives add ncmBPMB617 minecraft.used:minecraft.stripped_acacia_wood
scoreboard objectives add ncmBPMB618 minecraft.used:minecraft.stripped_birch_log
scoreboard objectives add ncmBPMB619 minecraft.used:minecraft.stripped_birch_wood
scoreboard objectives add ncmBPMB620 minecraft.used:minecraft.stripped_dark_oak_log
scoreboard objectives add ncmBPMB621 minecraft.used:minecraft.stripped_dark_oak_wood
scoreboard objectives add ncmBPMB622 minecraft.used:minecraft.stripped_jungle_log
scoreboard objectives add ncmBPMB623 minecraft.used:minecraft.stripped_jungle_wood
scoreboard objectives add ncmBPMB624 minecraft.used:minecraft.stripped_oak_log
scoreboard objectives add ncmBPMB625 minecraft.used:minecraft.stripped_oak_wood
scoreboard objectives add ncmBPMB626 minecraft.used:minecraft.stripped_spruce_log
scoreboard objectives add ncmBPMB627 minecraft.used:minecraft.stripped_spruce_wood
scoreboard objectives add ncmBPMB628 minecraft.used:minecraft.structure_block
scoreboard objectives add ncmBPMB629 minecraft.used:minecraft.structure_void
scoreboard objectives add ncmBPMB630 minecraft.used:minecraft.sugar_cane
scoreboard objectives add ncmBPMB631 minecraft.used:minecraft.sunflower
#scoreboard objectives add ncmBPMB632 minecraft.used:minecraft.sweet_berry_bush
scoreboard objectives add ncmBPMB633 minecraft.used:minecraft.tnt
scoreboard objectives add ncmBPMB634 minecraft.used:minecraft.tall_grass
#scoreboard objectives add ncmBPMB635 minecraft.used:minecraft.tall_seagrass
scoreboard objectives add ncmBPMB636 minecraft.used:minecraft.terracotta
scoreboard objectives add ncmBPMB637 minecraft.used:minecraft.torch
scoreboard objectives add ncmBPMB638 minecraft.used:minecraft.trapped_chest
scoreboard objectives add ncmBPMB639 minecraft.used:minecraft.tripwire_hook
#scoreboard objectives add ncmBPMB640 minecraft.used:minecraft.tripwire
scoreboard objectives add ncmBPMB641 minecraft.used:minecraft.tube_coral
scoreboard objectives add ncmBPMB642 minecraft.used:minecraft.tube_coral_block
scoreboard objectives add ncmBPMB643 minecraft.used:minecraft.tube_coral_fan
#scoreboard objectives add ncmBPMB644 minecraft.used:minecraft.tube_coral_wall_fan
scoreboard objectives add ncmBPMB645 minecraft.used:minecraft.turtle_egg
scoreboard objectives add ncmBPMB646 minecraft.used:minecraft.vine
#scoreboard objectives add ncmBPMB647 minecraft.used:minecraft.void_air
#scoreboard objectives add ncmBPMB648 minecraft.used:minecraft.wall_torch
#scoreboard objectives add ncmBPMB649 minecraft.used:minecraft.water
scoreboard objectives add ncmBPMB650 minecraft.used:minecraft.wet_sponge
scoreboard objectives add ncmBPMB651 minecraft.used:minecraft.wheat
scoreboard objectives add ncmBPMB652 minecraft.used:minecraft.white_banner
scoreboard objectives add ncmBPMB653 minecraft.used:minecraft.white_bed
scoreboard objectives add ncmBPMB654 minecraft.used:minecraft.white_carpet
scoreboard objectives add ncmBPMB655 minecraft.used:minecraft.white_concrete_powder
scoreboard objectives add ncmBPMB656 minecraft.used:minecraft.white_concrete
scoreboard objectives add ncmBPMB657 minecraft.used:minecraft.white_glazed_terracotta
scoreboard objectives add ncmBPMB658 minecraft.used:minecraft.white_shulker_box
scoreboard objectives add ncmBPMB659 minecraft.used:minecraft.white_stained_glass
scoreboard objectives add ncmBPMB660 minecraft.used:minecraft.white_stained_glass_pane
scoreboard objectives add ncmBPMB661 minecraft.used:minecraft.white_terracotta
scoreboard objectives add ncmBPMB662 minecraft.used:minecraft.white_tulip
#scoreboard objectives add ncmBPMB663 minecraft.used:minecraft.white_wall_banner
scoreboard objectives add ncmBPMB664 minecraft.used:minecraft.white_wool
scoreboard objectives add ncmBPMB665 minecraft.used:minecraft.wither_rose
scoreboard objectives add ncmBPMB666 minecraft.used:minecraft.wither_skeleton_skull
#scoreboard objectives add ncmBPMB667 minecraft.used:minecraft.wither_skeleton_wall_skull
scoreboard objectives add ncmBPMB668 minecraft.used:minecraft.yellow_banner
scoreboard objectives add ncmBPMB669 minecraft.used:minecraft.yellow_bed
scoreboard objectives add ncmBPMB670 minecraft.used:minecraft.yellow_carpet
scoreboard objectives add ncmBPMB671 minecraft.used:minecraft.yellow_concrete_powder
scoreboard objectives add ncmBPMB672 minecraft.used:minecraft.yellow_concrete
scoreboard objectives add ncmBPMB673 minecraft.used:minecraft.yellow_glazed_terracotta
scoreboard objectives add ncmBPMB674 minecraft.used:minecraft.yellow_shulker_box
scoreboard objectives add ncmBPMB675 minecraft.used:minecraft.yellow_stained_glass
scoreboard objectives add ncmBPMB676 minecraft.used:minecraft.yellow_stained_glass_pane
scoreboard objectives add ncmBPMB677 minecraft.used:minecraft.yellow_terracotta
#scoreboard objectives add ncmBPMB678 minecraft.used:minecraft.yellow_wall_banner
scoreboard objectives add ncmBPMB679 minecraft.used:minecraft.yellow_wool
scoreboard objectives add ncmBPMB680 minecraft.used:minecraft.zombie_head
#scoreboard objectives add ncmBPMB681 minecraft.used:minecraft.zombie_wall_head
scoreboard objectives add ncmBPMB682 minecraft.used:minecraft.shroomlight
scoreboard objectives add ncmBPMB683 minecraft.used:minecraft.crimson_nylium
scoreboard objectives add ncmBPMB684 minecraft.used:minecraft.crimson_stem
scoreboard objectives add ncmBPMB685 minecraft.used:minecraft.stripped_crimson_stem
scoreboard objectives add ncmBPMB686 minecraft.used:minecraft.crimson_planks
scoreboard objectives add ncmBPMB687 minecraft.used:minecraft.crimson_stairs
scoreboard objectives add ncmBPMB688 minecraft.used:minecraft.crimson_slab
scoreboard objectives add ncmBPMB689 minecraft.used:minecraft.crimson_fence
scoreboard objectives add ncmBPMB690 minecraft.used:minecraft.crimson_door
scoreboard objectives add ncmBPMB691 minecraft.used:minecraft.crimson_trapdoor
scoreboard objectives add ncmBPMB692 minecraft.used:minecraft.crimson_fence_gate
scoreboard objectives add ncmBPMB693 minecraft.used:minecraft.crimson_button
scoreboard objectives add ncmBPMB694 minecraft.used:minecraft.crimson_pressure_plate
scoreboard objectives add ncmBPMB695 minecraft.used:minecraft.crimson_sign
#scoreboard objectives add ncmBPMB696 minecraft.used:minecraft.crimson_fungi
scoreboard objectives add ncmBPMB697 minecraft.used:minecraft.crimson_roots
scoreboard objectives add ncmBPMB698 minecraft.used:minecraft.weeping_vines
scoreboard objectives add ncmBPMB699 minecraft.used:minecraft.warped_wart_block
scoreboard objectives add ncmBPMB700 minecraft.used:minecraft.warped_nylium
scoreboard objectives add ncmBPMB701 minecraft.used:minecraft.warped_stem
scoreboard objectives add ncmBPMB702 minecraft.used:minecraft.stripped_warped_stem
scoreboard objectives add ncmBPMB703 minecraft.used:minecraft.warped_planks
scoreboard objectives add ncmBPMB704 minecraft.used:minecraft.warped_stairs
scoreboard objectives add ncmBPMB705 minecraft.used:minecraft.warped_slab
scoreboard objectives add ncmBPMB706 minecraft.used:minecraft.warped_fence
scoreboard objectives add ncmBPMB707 minecraft.used:minecraft.warped_door
scoreboard objectives add ncmBPMB708 minecraft.used:minecraft.warped_trapdoor
scoreboard objectives add ncmBPMB709 minecraft.used:minecraft.warped_fence_gate
scoreboard objectives add ncmBPMB710 minecraft.used:minecraft.warped_button
scoreboard objectives add ncmBPMB711 minecraft.used:minecraft.warped_pressure_plate
scoreboard objectives add ncmBPMB712 minecraft.used:minecraft.warped_sign
#scoreboard objectives add ncmBPMB713 minecraft.used:minecraft.warped_fungi
scoreboard objectives add ncmBPMB714 minecraft.used:minecraft.warped_roots
scoreboard objectives add ncmBPMB715 minecraft.used:minecraft.nether_sprouts
scoreboard objectives add ncmBPMB716 minecraft.used:minecraft.ancient_debris
scoreboard objectives add ncmBPMB717 minecraft.used:minecraft.netherite_block
scoreboard objectives add ncmBPMB718 minecraft.used:minecraft.basalt
scoreboard objectives add ncmBPMB719 minecraft.used:minecraft.soul_soil
scoreboard objectives add ncmBPMB720 minecraft.used:minecraft.soul_torch
#scoreboard objectives add ncmBPMB721 minecraft.used:minecraft.soul_wall_torch
scoreboard objectives add ncmBPMB722 minecraft.used:minecraft.soul_lantern
#scoreboard objectives add ncmBPMB723 minecraft.used:minecraft.soul_fire
scoreboard objectives add ncmBPMB724 minecraft.used:minecraft.target
scoreboard objectives add ncmBPMB725 minecraft.used:minecraft.crying_obsidian
scoreboard objectives add ncmBPMB726 minecraft.used:minecraft.crimson_hyphae
scoreboard objectives add ncmBPMB727 minecraft.used:minecraft.stripped_crimson_hyphae
scoreboard objectives add ncmBPMB728 minecraft.used:minecraft.warped_hyphae
scoreboard objectives add ncmBPMB729 minecraft.used:minecraft.stripped_warped_hyphae
scoreboard objectives add ncmBPMB730 minecraft.used:minecraft.nether_gold_ore
scoreboard objectives add ncmBPMB731 minecraft.used:minecraft.twisting_vines
scoreboard objectives add ncmBPMB732 minecraft.used:minecraft.respawn_anchor
scoreboard objectives add ncmBPMB733 minecraft.used:minecraft.polished_basalt
scoreboard objectives add ncmBPMB734 minecraft.used:minecraft.lodestone
scoreboard objectives add ncmBPMB735 minecraft.used:minecraft.blackstone
scoreboard objectives add ncmBPMB736 minecraft.used:minecraft.blackstone_slab
scoreboard objectives add ncmBPMB737 minecraft.used:minecraft.blackstone_stairs
scoreboard objectives add ncmBPMB738 minecraft.used:minecraft.blackstone_wall
scoreboard objectives add ncmBPMB739 minecraft.used:minecraft.chiseled_nether_bricks
scoreboard objectives add ncmBPMB740 minecraft.used:minecraft.chiseled_polished_blackstone
scoreboard objectives add ncmBPMB741 minecraft.used:minecraft.cracked_nether_bricks
scoreboard objectives add ncmBPMB742 minecraft.used:minecraft.cracked_polished_blackstone_bricks
scoreboard objectives add ncmBPMB743 minecraft.used:minecraft.gilded_blackstone
scoreboard objectives add ncmBPMB744 minecraft.used:minecraft.polished_blackstone
scoreboard objectives add ncmBPMB745 minecraft.used:minecraft.polished_blackstone_bricks
scoreboard objectives add ncmBPMB746 minecraft.used:minecraft.polished_blackstone_brick_slab
scoreboard objectives add ncmBPMB747 minecraft.used:minecraft.polished_blackstone_brick_stairs
scoreboard objectives add ncmBPMB748 minecraft.used:minecraft.polished_blackstone_brick_wall
scoreboard objectives add ncmBPMB749 minecraft.used:minecraft.polished_blackstone_button
scoreboard objectives add ncmBPMB750 minecraft.used:minecraft.polished_blackstone_pressure_plate
scoreboard objectives add ncmBPMB751 minecraft.used:minecraft.polished_blackstone_slab
scoreboard objectives add ncmBPMB752 minecraft.used:minecraft.polished_blackstone_stairs
scoreboard objectives add ncmBPMB753 minecraft.used:minecraft.polished_blackstone_wall
scoreboard objectives add ncmBPMB754 minecraft.used:minecraft.quartz_bricks
#scoreboard objectives add ncmBPMB755 minecraft.used:minecraft.soul_camp_fire
scoreboard objectives add ncmBPMB756 minecraft.used:minecraft.chain

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

# MissingEntity
scoreboard objectives add ncmAttackedFID dummy
scoreboard objectives add ncmAttackerFID dummy

scoreboard objectives add ncmKillCount totalKillCount


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

# UnfittingPacket (PlayerRespawnS2CPacket/Alive)
scoreboard objectives add ncmPlayerDeath minecraft.custom:minecraft.deaths
scoreboard objectives add timeInRespawnScr dummy
scoreboard objectives add ncmUPIR_ivl dummy



# -------------------------
# Movement check objectives
# -------------------------

# SurvivalFly General

scoreboard objectives add ncmAviate minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add ncmAviateRC dummy
scoreboard objectives add ncmAngryIGNearby dummy
scoreboard objectives add ncmDecent dummy
scoreboard objectives add ncmClimb dummy


# SurvivalFly (Distance)
scoreboard objectives add ncmLeaveGame minecraft.custom:minecraft.leave_game
scoreboard objectives add ncmJoinGame minecraft.custom:minecraft.play_one_minute
scoreboard objectives add ncmPlayerY dummy
scoreboard objectives add ncmLastPlayerY dummy
scoreboard objectives add ncmSFDS_ivl dummy
scoreboard objectives add ncmSFDS_ivlrc dummy
scoreboard objectives add isSetback dummy

# SurvivalFly (LostGround)
scoreboard objectives add ncmYMotion dummy
scoreboard objectives add ncmSFLG_ivl dummy
scoreboard objectives add ncmSFLG_ivlrc dummy

# SurvivalFly (OffGroundTicks)
scoreboard objectives add ncmOffGrTicks dummy
scoreboard objectives add ncmOffGrTicksC dummy
scoreboard objectives add ncmOGJump minecraft.custom:minecraft.jump

# SurvivalFly (Climb)
scoreboard objectives add ncmBoat minecraft.custom:minecraft.boat_one_cm


# SurvivalFly (MonitorMotionX)
scoreboard objectives add ncmXMotionM dummy
scoreboard objectives add ncmXMotion dummy

# SurvivalFly (MonitorMotionY)
scoreboard objectives add ncmJumpBoostOffs dummy
scoreboard objectives add ncmYMotionM dummy


# SurvivalFly (MonitorMotionZ)
scoreboard objectives add ncmZMotionM dummy

# Appropriate (NoFall/FallDamage)
scoreboard objectives add ncmApplyFallDmg dummy
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
