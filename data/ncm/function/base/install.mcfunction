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

scoreboard players set DataHolder ncmBuildNumber 120


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
# Penalize failed checks by resetting? 1
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

# NoFall 269
scoreboard objectives add ncmc_nf_1 dummy

# Appropriate (FastConsume)
# How many items the player is allowed to eat until the counter is resetted? 1
scoreboard objectives add ncmc_ap_fc_1 dummy

# Counter max length. 43
scoreboard objectives add ncmc_ap_fc_2 dummy


# Appropriate (GameOverGUI)
scoreboard objectives add ncmc_ap_go_1 dummy




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

# (Reputation loss only) Maximum stride length per tick for Movement State 6 -> FLYING (Creative/Spectator Mode) (100 = 1 Block) x
scoreboard objectives add ncmc_ts_11 dummy
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 6 -> FLYING (Creative/Spectator Mode) (100 = 1 Block) x
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
scoreboard objectives add ncmMightStillSprinting dummy


# --------------------------
# Inventory check objectives
# --------------------------

# Appropriate (FastConsume)
scoreboard objectives add ncmConsume dummy
scoreboard objectives add ncmConsumeC dummy


# Load up default config
scoreboard players set DataHolder ncmCC 1
# Send install notfication


tellraw @a ["",{"text":"NCM","color":"red"},{"text":": ","color":"white"},{"text":"NoCheatMinus Build "},{"score":{"name":"DataHolder","objective":"ncmBuildNumber"}},{"text":" has been installed/updated successfully."}]
# First install actions

# Auto-enable checks
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmcm_toggle_BIMB 1
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmcm_toggle_BPMB 2
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmcm_toggle_BPAP 1
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmcm_toggle_COMBL 1
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmcm_toggle_COMMUN 1
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmcm_toggle_FCR 1
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmcm_toggle_FRC 1
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmcm_toggle_INVAP 1
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmcm_toggle_MVMSF 1
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmcm_toggle_NETAP 1
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmcm_toggle_NETUP 1
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmcm_toggle_MVMTS 1
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmcm_toggle_MVMNF 1
execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmcm_toggle_FWT 1
execute unless score DataHolder ncmInstalled matches 1 run tellraw @a ["",{"text":"NCM","color":"red"},{"text":": Admins, please use the command ","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmChecks 2"}},{"text":"/scoreboard players set @s ncmOperator 1","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ncmOperator 1"},"hoverEvent":{"action":"show_text","contents":["/scoreboard players set @s ncmOperator 1"]}}," to gain access to NoCheatMinus-commands."]

execute unless score DataHolder ncmInstalled matches 1 run scoreboard players set DataHolder ncmInstalled 1
