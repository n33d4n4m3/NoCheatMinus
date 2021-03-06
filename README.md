# NoCheatMinus
 This is a recode/port of an AntiCheat in Vanilla Minecraft, that existed back in 2016,  as a Datapack for Minecraft 1.16.4. Its purpose is the detection of generic game modifications by checking and tracking movement, fight and network behavior of players constantly, followed by a configurable comparison of the collected data with the expected behavior. 
 - You can view a demonstration [here](https://www.youtube.com/watch?v=2KCD2lIC0bc).
 - If you have questions, suggestions, or feedback, join our Discord server [here](https://discord.gg/n7yT4MnbmR).

## Setup
1. Download this project as a .zip file and place it in your world's datapack folder.
2. Restart your server or use `/reload` to reload the datapacks.
3. Join your server as an operator and run `/function ncm:base/install`.
4. Use `/trigger input set 0/1/2` to see no logs (`0`), only your logs (`1`), or all logs (`2`).

## Checks
| Check category and name | Description |
| ----------------------- | ----------- |
| BlockPlace.MissingBlock | When the player places a block, NCM will check if the player looks at a block, which blocktype equals the blocktype of the block he placed last, and if this block is within the max blockplace range. (Raytracing). |
| BlockInteract.MissingBlock | When the player interacts with a block, NCM will check if the player looks at a block, which blocktype equals the blocktype of the block he interacted with last, and if this block is within the max interaction range. (Raytracing). |
| Net.UnfittingPacket | NCM checks if the player spoofs to be on-ground whilst being mid-air/off-ground. Another subcheck of this check monitors if the player sends a RespawnPacket whilst being alive or stops receiving certain packets without being dead (Godmode patch). |
| Net.Appropriate | NCM checks if the DeathTime-NBT-Data of the player is appropriate (GodMode patch) and if the player respawns too fast (InstantRespawn). |
| Movement.Appropriate | When the player touches the ground, NCM will start calculating the estimated fall damage, depending on the current health and the fall distance. If the taken fall damage differs from the calculated fall damage, this check fails. This check also monitors the movement speed of the player in different movement states (Walk, Sprint, Sneak...) and takes legacy status effects (speed...), icy grounds and laggy movement transitions (Sprint->Walk for example) into account. |
| Movement.SurvivalFly | NCM monitors the vertical motion of the player, the off-ground-behavior, unexpected movements, the player's gravity, and lost-ground-situations. |
| Fight.MissingEntity | This check observes the player's combat behavior. If the attacked player is out of range or not in sight, the check will fail. If the attacking player doesn't aim properly or tries to attack through walls, this check will fail also. |
| Inventory.Appropriate | When the player consumes an Item, NCM will check the speed of consuming and compare it with the configurated appropriate values. |

This AntiCheat Datapck doesn't come with any player punishment functions, it just logs the violations into the chat. See **Setup** to configure logging.
