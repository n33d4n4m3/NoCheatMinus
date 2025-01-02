# Lag
# The number of ticks that must pass before a check is reactivated after the TPS value stabilizes. 40
scoreboard players set DataHolder ncmc_bs_lg_1 40

# The minimum TPS value to ensure the functionality of the Movement.TickStride check 20
scoreboard players set DataHolder ncmc_bs_lg_2 20

# Minimum tick count for latency check 1200
scoreboard players set DataHolder ncmc_bs_lg_3 1200

# Maximum tick count for latency check 6000
scoreboard players set DataHolder ncmc_bs_lg_4 6000


# Reputation
# Initial reputation 0
scoreboard players set DataHolder ncmc_bs_rp_1 0

# Lowest reputation -500
scoreboard players set DataHolder ncmc_bs_rp_2 -500

# Hightest reputation 100
scoreboard players set DataHolder ncmc_bs_rp_3 100

# Reputation limit for detection level "Observe" -200
scoreboard players set DataHolder ncmc_bs_rp_5 -200

# Reputation limit for detection level "High" -350
scoreboard players set DataHolder ncmc_bs_rp_6 -350

# Maximum reputation gain (ncmc_bs_rp_7 / 50) in (ncmc_bs_rp_8 / 3600) ticks
scoreboard players set DataHolder ncmc_bs_rp_7 50
scoreboard players set DataHolder ncmc_bs_rp_8 3600

# Maximum reputation loss (ncmc_bs_rp_9 / 200) in (ncmc_bs_rp_10 / 1200) ticks
scoreboard players set DataHolder ncmc_bs_rp_9 200
scoreboard players set DataHolder ncmc_bs_rp_10 1200

# Ticks between two "Check report" warnings, 0 to turn off. 36000
scoreboard players set DataHolder ncmc_bs_rp_11 36000

# Pass
# Regeneration of (ncmc_bs_ps_1 / 1) reputation every (ncmc_bs_ps_2 / 1200) ticks
scoreboard players set DataHolder ncmc_bs_ps_1 1
scoreboard players set DataHolder ncmc_bs_ps_2 1200

# Fail Reputation loss for failing a check (Common/HLC / Suspect / Rage)
# BlockInteract.MissingBlock (0 / 0 / 0)
scoreboard players set DataHolder ncmc_bs_fl_1 0
scoreboard players set DataHolder ncmc_bs_fl_2 0
scoreboard players set DataHolder ncmc_bs_fl_3 0

# BlockPlace.Appropriate (0 / 10 / 20)
scoreboard players set DataHolder ncmc_bs_fl_4 0
scoreboard players set DataHolder ncmc_bs_fl_5 10
scoreboard players set DataHolder ncmc_bs_fl_6 20

# Fight.Criticals (0 / 30 / 50)
scoreboard players set DataHolder ncmc_bs_fl_28 0
scoreboard players set DataHolder ncmc_bs_fl_29 30
scoreboard players set DataHolder ncmc_bs_fl_30 50

# Fight.Reach (0 / 20 / 30)
scoreboard players set DataHolder ncmc_bs_fl_31 0
scoreboard players set DataHolder ncmc_bs_fl_32 20
scoreboard players set DataHolder ncmc_bs_fl_33 30

# Inventory.Appropriate (0 / 0 / 0)
scoreboard players set DataHolder ncmc_bs_fl_13 0
scoreboard players set DataHolder ncmc_bs_fl_14 0
scoreboard players set DataHolder ncmc_bs_fl_15 0

# Movement.SurvivalFly (0 / 5 / 10)
scoreboard players set DataHolder ncmc_bs_fl_19 1
scoreboard players set DataHolder ncmc_bs_fl_20 5
scoreboard players set DataHolder ncmc_bs_fl_21 10

# Network.Appropriate (0 / 10 / 20)
scoreboard players set DataHolder ncmc_bs_fl_22 0
scoreboard players set DataHolder ncmc_bs_fl_23 10
scoreboard players set DataHolder ncmc_bs_fl_24 20

# Network.UnfittingPacket (0 / 0 / 0)
scoreboard players set DataHolder ncmc_bs_fl_25 0
scoreboard players set DataHolder ncmc_bs_fl_26 0
scoreboard players set DataHolder ncmc_bs_fl_27 0

# Combined.Munchhausen (0 / 0 / 0)
scoreboard players set DataHolder ncmc_bs_fl_35 0
scoreboard players set DataHolder ncmc_bs_fl_36 0
scoreboard players set DataHolder ncmc_bs_fl_37 0

# Combined.BedLeave (0 / 0 / 0)
scoreboard players set DataHolder ncmc_bs_fl_38 0
scoreboard players set DataHolder ncmc_bs_fl_39 0
scoreboard players set DataHolder ncmc_bs_fl_40 0

# Movement.TickStride (0 / 5 / 10)
scoreboard players set DataHolder ncmc_bs_fl_41 0
scoreboard players set DataHolder ncmc_bs_fl_42 5
scoreboard players set DataHolder ncmc_bs_fl_43 10

# Movement.NoFall (0 / 10 / 20)
scoreboard players set DataHolder ncmc_bs_fl_44 0
scoreboard players set DataHolder ncmc_bs_fl_45 10
scoreboard players set DataHolder ncmc_bs_fl_46 20

# Fight.WrongTurn (0 / 0 / 0)
scoreboard players set DataHolder ncmc_bs_fl_47 0
scoreboard players set DataHolder ncmc_bs_fl_48 0
scoreboard players set DataHolder ncmc_bs_fl_49 0

# Penalize failed checks by resetting? 1
scoreboard players set DataHolder ncmc_bs_fl_34 1

# Appropriate (FastConsume)
# How many items the player is allowed to eat until the counter is resetted? 1
scoreboard players set DataHolder ncmc_ap_fc_1 1

# Counter max length. 43
scoreboard players set DataHolder ncmc_ap_fc_2 66

# Appropriate (GameOverGUI)
scoreboard players set DataHolder ncmc_ap_go_1 21

# SurvivalFly (False Positives)
# Cooldown after aviate / levitate 100
scoreboard players set DataHolder ncmc_sf_fp_1 100

# Cooldown after detecting player latency 60
scoreboard players set DataHolder ncmc_sf_fp_2 60

# SurvivalFly (ConstantClimbRate)
# Ticks between first and second read (Y-Coord) 3
scoreboard players set DataHolder ncmc_sf_cr_1 3

# Ticks between first and second read (Y-Rate) 5
scoreboard players set DataHolder ncmc_sf_cr_2 5

# SurvivalFly (Distance)
# Maximum ivl value to increase lvl 1
scoreboard players set DataHolder ncmc_sf_ds_1 1
# Ticks after the lvl gets resetted 1
scoreboard players set DataHolder ncmc_sf_ds_2 1

# SurvivalFly (LostGround)
# Maxiumum ivl value to increase lvl 10
scoreboard players set DataHolder ncmc_sf_lg_1 10

# Ticks after the lvl gets resetted 10
scoreboard players set DataHolder ncmc_sf_lg_2 10

# SurvivalFly (OffGroundTicks)
# Maxiumum off ground ticks to increase lvl 6
scoreboard players set DataHolder ncmc_sf_og_1 7

# Ticks after the off ground ticks get resetted 10
scoreboard players set DataHolder ncmc_sf_og_2 10

# Jump FP cooldown 10
scoreboard players set DataHolder ncmc_sf_og_3 10

# SurvivalFly (JumpCount)
# Maxiumum jumps (ncmc_sf_jc_1) in timeframe (ncmc_sf_jc_2) (2 / 17)
scoreboard players set DataHolder ncmc_sf_jc_1 2
scoreboard players set DataHolder ncmc_sf_jc_2 17



# NoFall 269
scoreboard players set DataHolder ncmc_nf_1 400

# SurvivalFly (MonitorMotionY)
# Failing vertical motion of the player 4201
scoreboard players set DataHolder ncmc_sf_ym_1 4201

# SurvivalFly (MonitorMotionX)
# Failing horizontal (x) motion of the player 2
scoreboard players set DataHolder ncmc_sf_xm_1 2

# SurvivalFly (MonitorMotionZ)
# Failing horizontal (z) motion of the player 2
scoreboard players set DataHolder ncmc_sf_zm_1 2


# The number of exceedances of the maximum stride values ​​required for the check to fail 2
scoreboard players set DataHolder ncmc_ts_31 2

# If a legitimate value is measured after measuring a value that is too high, should the measurement start from the beginning? (0 -> No, 1 -> Yes) 0
scoreboard players set DataHolder ncmc_ts_32 0

# After how many ticks should the check forget illegitimate measurements? (-1 -> never) 200
scoreboard players set DataHolder ncmc_ts_33 200

# Amount of internal log-only fails required for the check to result in an external log-only fail (1 -> internal log-only fail = external log-only fail) 3
scoreboard players set DataHolder ncmc_ts_34 3

# Amount of ticks to wait for the next internal log-only fail after an internal log-only fail (-1 -> forever) 100
scoreboard players set DataHolder ncmc_ts_35 100

# A player-side lag / motion stop triggers the reset of the measurement. Should the reset of the count of internal log-only fails also be triggered additionally? (0 -> No, 1 -> Yes) 1
scoreboard players set DataHolder ncmc_ts_36 1

# The duration of the timeout in ticks after a movement state transition. (-1 -> off) 10
scoreboard players set DataHolder ncmc_ts_37 10

# The duration of the timeout in ticks after a contact with ice. (-1 -> off) 40
scoreboard players set DataHolder ncmc_ts_38 40

# Should Event Cancel always lead to Reputation loss / Log? (0 -> No, 1 -> Yes) 1
scoreboard players set DataHolder ncmc_ts_39 1


# (Reputation loss only) Maximum stride length per tick for Movement State 1 -> WALKING (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_1 23
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 1 -> WALKING (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_2 50

# (Reputation loss only) Maximum stride length per tick for Movement State 2 -> SPRINTING (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_3 29
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 2 -> SPRINTING (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_4 60

# (Reputation loss only) Maximum stride length per tick for Movement State 3 -> SNEAKING (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_5 12
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 3 -> SNEAKING (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_6 20

# (Reputation loss only) Maximum stride length per tick for Movement State 4 -> SWIMMING (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_7 1000
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 4 -> SWIMMING (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_8 1000

# (Reputation loss only) Maximum stride length per tick for Movement State 5 -> CLIMBING (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_9 16
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 5 -> CLIMBING (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_10 24

# (Reputation loss only) Maximum stride length per tick for Movement State 6 -> FLYING (Creative/Spectator Mode) (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_11 300
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 6 -> FLYING (Creative/Spectator Mode) (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_12 115

# (Reputation loss only) Maximum stride length per tick for Movement State 6 -> FLYING (Survival/Adventure Mode) (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_13 125
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 6 -> FLYING (Survival/Adventure Mode) (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_14 80

# (Reputation loss only) Maximum stride length per tick for Movement State 7 -> MINECART (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_15 100
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 7 -> MINECART (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_16 120

# (Reputation loss only) Maximum stride length per tick for Movement State 8 -> BOAT (Ground) (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_17 40
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 8 -> BOAT (Ground) (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_18 50

# (Reputation loss only) Maximum stride length per tick for Movement State 8 -> BOAT (Water) (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_40 43
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 8 -> BOAT (Water) (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_41 80


# (Reputation loss only) Maximum stride length per tick for Movement State 9 -> PIG (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_19 30
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 9 -> PIG (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_20 35

# (Reputation loss only) Maximum stride length per tick for Movement State 10 -> AVIATING (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_21 1000
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 10 -> AVIATING (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_22 1000

# (Reputation loss only) Maximum stride length per tick for Movement State 11 -> HORSE (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_23 100
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 11 -> HORSE (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_24 120

# (Reputation loss only) Maximum stride length per tick for Movement State 12 -> STRIDER (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_25 1000
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 12 -> STRIDER (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_26 1000

# (Reputation loss only) Maximum stride length per tick for Movement State 13 -> WALKING ON WATER (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_27 1000
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 13 -> WALKING ON WATER (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_28 1000

# (Reputation loss only) Maximum stride length per tick for Movement State 14 -> WALKING UNDER WATER (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_29 1000
# (Reputation loss + Event cancel) Maximum stride length per tick for Movement State 14 -> WALKING UNDER WATER (100 = 1 Block) x
scoreboard players set DataHolder ncmc_ts_30 1000

# BlockInteract (MissingBlock)
# Maxiumum interaction distance in creative mode 11
scoreboard players set DataHolder ncmc_mb_1 11

# Maximum interaction distance in survival/adventure mode 10
scoreboard players set DataHolder ncmc_mb_2 10

# BlockPlace (Appropriate)
# Placable number of blocks in the timeframe 3
scoreboard players set DataHolder ncmc_ap_bp_1 3

# The timeframe 3
scoreboard players set DataHolder ncmc_ap_bp_2 3
