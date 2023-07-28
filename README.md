# NoCheatMinus
 This is a recode/port of an "Commandblock"-AntiCheat in Vanilla Minecraft, that existed back in 2016, as a Datapack for Minecraft 1.20+. Its purpose is the detection of generic game modifications by checking and tracking movement, fight and network behavior of players constantly, followed by a configurable comparison of the collected data with the expected behavior.
 - You can view a demonstration [here](https://www.youtube.com/watch?v=2KCD2lIC0bc).
 - If you have questions, suggestions, or feedback, join our Discord server [here](https://discord.gg/n7yT4MnbmR).

## Setup
0. First, you need to install the latest version of *VanillaEvents* in your world. *VanillaEvents* is installed in the same way as NoCheatMinus and can be downloaded [here](https://github.com/n33d4n4m3/VanillaEvents).
1. Download the NoCheatMinus project as a .zip file, un-zip it and place the folder (which contains the "data"-folder) in your world's datapack folder.
2. Restart your server or use `/reload` to reload the datapacks.
3. Use the command `/scoreboard players set @s ncmOperator 1` to obtain operator rights in NoCheatMinus, which will allow you to execute commands that start with `/trigger ncm...`.

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
| BlockPlace.MissingBlock | When the player places a block, NCM will check if the player looks at a block, which blocktype equals the blocktype of the block he placed last, and if this block is within the max blockplace range. (Raytracing). |
| BlockInteract.MissingBlock | When the player interacts with a block, NCM will check if the player looks at a block, which blocktype equals the blocktype of the block he interacted with last, and if this block is within the max interaction range. (Raytracing). |
| Net.UnfittingPacket | NCM checks if the player spoofs to be on-ground whilst being mid-air/off-ground. Another subcheck of this check monitors if the player sends a RespawnPacket whilst being alive or stops receiving certain packets without being dead (Godmode patch). |
| Net.Appropriate | NCM checks if the DeathTime-NBT-Data of the player is appropriate (GodMode patch) and if the player respawns too fast (InstantRespawn). |
| Movement.Appropriate | When the player touches the ground, NCM will start calculating the estimated fall damage, depending on the current health and the fall distance. If the taken fall damage differs from the calculated fall damage, this check fails. This check also monitors the movement speed of the player in different movement states (Walk, Sprint, Sneak...) and takes legacy status effects (speed...), icy grounds and laggy movement transitions (Sprint->Walk for example) into account. |
| Movement.SurvivalFly | NCM monitors the vertical motion of the player, the off-ground-behavior, unexpected movements, the player's gravity, and lost-ground-situations. |
| Fight.MissingEntity | This check observes the player's combat behavior. If the attacked player is out of range or not in sight, the check will fail. If the attacking player doesn't aim properly or tries to attack through walls, this check will fail also. |
| Fight.Criticals | When a player makes a critical hit, this check verifies that the hit was made under legitimate conditions. |
| Fight.Reach | NCM checks if the player has hit an entity that is out of his legitimate range. |
| Combined.BedLeave | NCM checks if the player sends BedLeave packets without being in a bed first. The small teleport after leaving a bed can be used by players with a cheat client for flying or speeding. |
| Combined.Munchhausen | According to the legend of Baron Munchausen's tall tales, players can pull themselves out of the swamp by their own hair. NCM checks if cheat-clients use this ability for flying/speeding. |
| Inventory.Appropriate | When the player consumes an Item, NCM will check the speed of consuming and compare it with the configurated appropriate values. |
