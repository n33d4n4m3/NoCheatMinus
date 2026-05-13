# 🃏 NoCheatMinus
... is an AntiCheat Datapack for Minecraft 26.1.2. Its purpose is the detection of generic game modifications by checking and tracking movement, fight, and network behavior of players constantly, followed by a configurable comparison of the collected data with the expected behavior.

- 🌍 Visit the **NoCheatMinus Test Server** (26.1.2): `test.nocheatminus.org`
- 🎥 Watch a demonstration [here](https://www.youtube.com/watch?v=q0wzirmrWhI)
- 💬 Join our **Discord** for questions & feedback: [Click here](https://discord.gg/PrW5FH25nn)

---

## ⚙️ Setup

1️⃣ Download **NoCheatMinus** as a `.zip` file, extract it, and place the folder (which contains the `data` folder) in your world's datapack folder.

2️⃣ Restart your server or use `/reload` to enable the datapack.

3️⃣ Follow the on-screen instructions in chat.

---

## 🛡️ Operating Modes
NoCheatMinus operates in two different modes: **Silent Mode** and **Block Mode**.

### 🔍 Silent Mode
- Runs in the background without actively interfering with suspicious behavior.
- Logs violations in the operator chat based on configuration.
- Tracks each player’s **Reputation Score**, which reduces as suspicious behavior is detected more frequently.

### 🚧 Block Mode
- Works like Silent Mode but actively **prevents cheating**.
- Cheaters may experience:
   - 🔄 **Rubberbanding** (being reset)
   - ⚔️  **Retroactive application of illegitimately skipped damage**
   - 🛑 **Blocked invalid hits**
   - 👢 **Disconnection** (requires additional configuration)
- **Reputation Score** is still tracked, and operators receive alerts based on configuration.

---

## 🎥 Replay System
The **Replay System** automatically records movements for **5 seconds before and 5 seconds after** a suspicious action. These clips are compiled into a **10-second video** for review. Operators can analyze these clips and determine if the action was indeed suspicious. Only one replay clip can be saved per player at a time. No new clips will be recorded for that player until the existing one is deleted.

👀 **To watch a replay:**
```
/trigger ncmReplay
```

🎥 **Watch a showcase of the replay system [here](https://www.youtube.com/watch?v=-T1ePdhudMs)** 🎥

---
## 🔄 Updating to a newer version
1️⃣ Replace the outdated datapack directory (which contains the `/data` directory) with the updated version. 

2️⃣ Restart your server or use `/reload` to apply the changes.

---

## 🗑️ Uninstall
To uninstall the datapack, use `/function ncm:user/uninstall`.

---

## 🛠️ Checks
| Check | Description |
| ----------------------- | ----------- |
| 🧱 **BlockPlace.Appropriate** | NCM monitors the amount of blocks placed in a configurable time window. |
| 🏗️ **BlockInteract.MissingBlock** | When the player interacts with a block, NCM will check if the player looks at a block, which blocktype equals the blocktype of the block he interacted with last, and if this block is within the max interaction range. (Raytracing). |
| 📡 **Net.UnfittingPacket** | NCM checks if the player spoofs to be on-ground whilst being mid-air/off-ground. Another subcheck of this check monitors if the player sends a RespawnPacket whilst being alive or stops receiving certain packets without being dead (Godmode patch). |
| 💀 **Net.Appropriate** | NCM checks if the DeathTime-NBT-Data of the player is appropriate (GodMode patch) and if the player respawns too fast (InstantRespawn). |
| 🚶 **Movement.TickStride** | NCM evaluates player movement events based on distance and logs or cancels events if the configured thresholds are exceeded, aiming to maintain gameplay integrity and prevent unintended movement exploits. |
| ✈️ **Movement.SurvivalFly** | NCM monitors the vertical motion of the player, the off-ground-behavior, unexpected movements, the player's gravity, and lost-ground-situations. |
| 🪂 **Movement.NoFall** | When the player touches the ground, NCM will start calculating the estimated fall damage, depending on the current health and the fall distance. If the taken fall damage differs from the calculated fall damage, this check fails. |
| ⚔️ **Fight.Criticals** | When a player makes a critical hit, this check verifies that the hit was made under legitimate conditions. |
| 🎯 **Fight.Reach** | NCM checks if the player has hit an entity that is out of his legitimate range. |
| 👁️ **Fight.Direction** | NoCheatMinus statistically checks the rate of hits where the attacked entity is within the player’s line of sight. |
| 🔄 **Fight.WrongTurn** | NCM monitors the players pitch-turns. |
| 🏃 **Fight.CompliantVelocity** | This check monitors the movement reaction of the player after being hit. |
| 🛏️ **Combined.BedLeave** | NCM checks if the player sends BedLeave packets without being in a bed first. The small teleport after leaving a bed can be used by players with a cheat client for flying or speeding. |
| 🎣 **Combined.Munchhausen** | According to the legend of Baron Munchausen's tall tales, players can pull themselves out of the swamp by their own hair. NCM checks if cheat-clients use this ability for flying/speeding. |
| 🛠️ **Combined.Exploit** | This check monitors various impossible client states that may indicate the use of exploits. |
| 🍗 **Inventory.Appropriate** | When the player consumes an Item, NCM will check the speed of consuming and compare it with the configurated appropriate values. |
| 🏹 **Inventory.InstantBow** | This check monitors the player's arrow-shooting speed. |

---

