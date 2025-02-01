# NoCheatMinus
 This is a recode/port of an "Commandblock"-AntiCheat in Vanilla Minecraft, that existed back in 2016, as a Datapack for Minecraft 1.21+. Its purpose is the detection of generic game modifications by checking and tracking movement, fight and network behavior of players constantly, followed by a configurable comparison of the collected data with the expected behavior.
 - Visit the NoCheatMinus Test Server: **test.nocheatminus.org**
 - You can view an (outdated) demonstration [here](https://www.youtube.com/watch?v=2KCD2lIC0bc).
 - If you have questions, suggestions, or feedback, join our Discord server [here](https://discord.gg/PrW5FH25nn).

## Setup
0. First, you need to install the latest version of *VanillaEvents* in your world. *VanillaEvents* is installed in the same way as NoCheatMinus and can be downloaded [here](https://github.com/n33d4n4m3/VanillaEvents).
1. Download the NoCheatMinus project as a .zip file, un-zip it and place the folder (which contains the "data"-folder) in your world's datapack folder.
2. Restart your server or use `/reload` to reload the datapacks.
3. Follow the instructions in the chat.

## Apply values from configuration files
1. Paste your configuration files into the directory **NoCheatMinus/data/ncm/functions/user/configs/**
2. Edit the file **NoCheatMinus/data/ncm/functions/user/currentconfig.mcfunction/** and assign a configuration file to each configuration slot.
3. Run the command `/scoreboard players set DataHolder ncmCC <slot>` to specify the slot in which the desired configuration file is located.
4. Restart your server or use `/reload` to reload the datapacks.

## Update to a newer version of this Datapack
1. Replace the outdated directory "data" with the updated one.
2. Restart your server or use `/reload` to reload the datapacks.

## Checks
| Check category and name | Description |
| ----------------------- | ----------- |
| BlockPlace.Appropriate | NCM monitors the amount of blocks placed in a configurable time window. |
| BlockInteract.MissingBlock | When the player interacts with a block, NCM will check if the player looks at a block, which blocktype equals the blocktype of the block he interacted with last, and if this block is within the max interaction range. (Raytracing). |
| Net.UnfittingPacket | NCM checks if the player spoofs to be on-ground whilst being mid-air/off-ground. Another subcheck of this check monitors if the player sends a RespawnPacket whilst being alive or stops receiving certain packets without being dead (Godmode patch). |
| Net.Appropriate | NCM checks if the DeathTime-NBT-Data of the player is appropriate (GodMode patch) and if the player respawns too fast (InstantRespawn). |
| Movement.TickStride | NCM evaluates player movement events based on distance and logs or cancels events if the configured thresholds are exceeded, aiming to maintain gameplay integrity and prevent unintended movement exploits. |
| Movement.SurvivalFly | NCM monitors the vertical motion of the player, the off-ground-behavior, unexpected movements, the player's gravity, and lost-ground-situations. |
| Movement.NoFall | When the player touches the ground, NCM will start calculating the estimated fall damage, depending on the current health and the fall distance. If the taken fall damage differs from the calculated fall damage, this check fails. |
| Fight.Criticals | When a player makes a critical hit, this check verifies that the hit was made under legitimate conditions. |
| Fight.Reach | NCM checks if the player has hit an entity that is out of his legitimate range. |
| Fight.Direction | NoCheatMinus statistically checks the rate of hits where the attacked entity is within the player’s line of sight. |
| Fight.WrongTurn | NCM monitors the players pitch-turns. |
| Fight.CompliantVelocity | This check monitors the movement reaction of the player after being hit. |
| Combined.BedLeave | NCM checks if the player sends BedLeave packets without being in a bed first. The small teleport after leaving a bed can be used by players with a cheat client for flying or speeding. |
| Combined.Munchhausen | According to the legend of Baron Munchausen's tall tales, players can pull themselves out of the swamp by their own hair. NCM checks if cheat-clients use this ability for flying/speeding. |
| Inventory.Appropriate | When the player consumes an Item, NCM will check the speed of consuming and compare it with the configurated appropriate values. |
| Inventory.InstantBow | This check monitors the player's arrow-shooting speed. |