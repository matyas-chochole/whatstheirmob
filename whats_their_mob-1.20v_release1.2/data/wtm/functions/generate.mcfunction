# Teleportation to the center
execute as @s at @s align xyz run teleport @s ~ ~ ~
execute as @s at @s run tp @s ~0.5 ~ ~0.5
# Debug
execute as @e[type=minecraft:armor_stand,name="moderator"] at @s run fill ~6 200 ~6 ~-6 200 ~-6 minecraft:air
kill @e[type=minecraft:armor_stand,name="holder"]
# Generate tellraw
tellraw @a [{"text":"What's their mob","color":"yellow","bold":false},{"text":" game is generating...","color":"white","bold":false}]
# Teleport existing Moderator
execute if entity @e[type=minecraft:armor_stand,name="moderator"] run tp @e[type=minecraft:armor_stand,name="moderator"] ~ 250 ~
# Delete forceload
forceload remove all
# Summon new Moderator
execute unless entity @e[type=minecraft:armor_stand,name="moderator"] run execute as @s at @s run summon minecraft:armor_stand ~ 250 ~ {CustomName:'"moderator"',Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b}
# Untag moderator
tag @e[type=minecraft:armor_stand,name="moderator"] remove schelp
# Summon Holder
execute as @e[type=minecraft:armor_stand,name="moderator"] at @s run summon minecraft:armor_stand ~ ~2 ~ {CustomName:'"holder"',Invisible:1b,NoGravity:1b,Invulnerable:1b,ShowArms:1b}
# Main objectives
scoreboard objectives add wins dummy [{"text":"T","color":"white","bold":true},{"text":"o","color":"gray","bold":true},{"text":"t","color":"white","bold":true},{"text":"a","color":"gray","bold":true},{"text":"l ","color":"white","bold":true},{"text":"W","color":"gray","bold":true},{"text":"i","color":"white","bold":true},{"text":"n","color":"gray","bold":true},{"text":"s","color":"white","bold":true}]
scoreboard objectives setdisplay sidebar wins
scoreboard objectives setdisplay list team
scoreboard objectives add gamephase dummy
scoreboard objectives add timer dummy
scoreboard objectives add timerhelp1 dummy
scoreboard objectives add timerhelp2 dummy
scoreboard objectives add timer2 dummy
scoreboard objectives add elimtimer dummy
scoreboard objectives add hurttimer dummy
scoreboard objectives add findtimer dummy
scoreboard objectives add hurt dummy
scoreboard objectives add find dummy
scoreboard objectives add rolltimer dummy
scoreboard objectives add playercount dummy
scoreboard objectives add mob dummy
scoreboard objectives add reveal dummy
scoreboard objectives add lifes dummy
scoreboard objectives add random dummy
scoreboard objectives add elim_x dummy
scoreboard objectives add elim_y dummy
scoreboard objectives add elim_z dummy
scoreboard objectives add minutes dummy
scoreboard objectives add seconds dummy
scoreboard objectives add tick dummy
scoreboard objectives add settingspage dummy
scoreboard objectives add resetgraphic dummy
scoreboard objectives add dupcount dummy
scoreboard objectives add forcealivecount dummy
scoreboard objectives add rejointimer dummy
scoreboard objectives add rejointimer2 dummy
scoreboard objectives add team dummy
scoreboard objectives add teamcount dummy
scoreboard objectives add aliveteams dummy
scoreboard objectives add glowtimer dummy
scoreboard objectives add blast1 dummy
scoreboard objectives add blast2 dummy
scoreboard objectives add blast3 dummy
scoreboard objectives add blast4 dummy
scoreboard objectives add blast5 dummy
scoreboard objectives add blasttimer dummy
scoreboard objectives add coascount minecraft.used:minecraft.carrot_on_a_stick
# Lobby settings objectives
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add settingssave dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_daylightcycle dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_weathercycle dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_firetick dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_keepinventory dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_falldamage dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_insomnia dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_raids dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_mobgriefing dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add difficulty dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_firedamage dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_drowndamage dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_freezedamage dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_patrolspawn dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_unlockrecipes dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_wtspawn dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_psp dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_naturalregen dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_fdp dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_universalanger dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_collisions dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_pvp dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_immresp dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_nametagvis dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_deathmessages dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_specgen dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_announceadv dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_elimbox dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_rwt dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_rejointime dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_minutes dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_seconds dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_teammode dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_flashmode dummy
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard objectives add s_blastmode dummy
scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] gamephase 0
scoreboard players set @a team 0
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] settingssave 0
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_daylightcycle 4
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_weathercycle 3
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_firetick 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_keepinventory 0
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_falldamage 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_insomnia 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_raids 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_mobgriefing 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] difficulty 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_firedamage 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_drowndamage 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_freezedamage 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_patrolspawn 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_unlockrecipes 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_wtspawn 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_psp 6
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_naturalregen 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_fdp 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_universalanger 0
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_collisions 0
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_pvp 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_immresp 0
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_nametagvis 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_deathmessages 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_specgen 0
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_announceadv 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_elimbox 2
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_rwt 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_rejointime 3
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_minutes 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_seconds 0
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_teammode 1
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_flashmode 0
execute unless entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=1..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] s_blastmode 0
# Hit detecting objectives
scoreboard objectives add mob1 minecraft.killed:minecraft.chicken
scoreboard objectives add mob2 minecraft.killed:minecraft.cow
scoreboard objectives add mob3 minecraft.killed:minecraft.mooshroom
scoreboard objectives add mob4 minecraft.killed:minecraft.pig
scoreboard objectives add mob5 minecraft.killed:minecraft.sheep
scoreboard objectives add mob6 minecraft.killed:minecraft.squid
scoreboard objectives add mob7 minecraft.killed:minecraft.villager
scoreboard objectives add mob8 minecraft.killed:minecraft.wandering_trader
scoreboard objectives add mob9 minecraft.killed:minecraft.bat
scoreboard objectives add mob10 minecraft.killed:minecraft.ocelot
scoreboard objectives add mob11 minecraft.killed:minecraft.cat
scoreboard objectives add mob12 minecraft.killed:minecraft.horse
scoreboard objectives add mob13 minecraft.killed:minecraft.donkey
scoreboard objectives add mob14 minecraft.killed:minecraft.mule
scoreboard objectives add mob15 minecraft.killed:minecraft.strider
scoreboard objectives add mob16 minecraft.killed:minecraft.fox
scoreboard objectives add mob17 minecraft.killed:minecraft.rabbit
scoreboard objectives add mob18 minecraft.killed:minecraft.parrot
scoreboard objectives add mob19 minecraft.killed:minecraft.turtle
scoreboard objectives add mob20 minecraft.killed:minecraft.cod
scoreboard objectives add mob21 minecraft.killed:minecraft.salmon
scoreboard objectives add mob22 minecraft.killed:minecraft.pufferfish
scoreboard objectives add mob23 minecraft.killed:minecraft.tropical_fish
scoreboard objectives add mob24 minecraft.killed:minecraft.enderman
scoreboard objectives add mob25 minecraft.killed:minecraft.piglin
scoreboard objectives add mob26 minecraft.killed:minecraft.zombified_piglin
scoreboard objectives add mob27 minecraft.killed:minecraft.dolphin
scoreboard objectives add mob28 minecraft.killed:minecraft.bee
scoreboard objectives add mob29 minecraft.killed:minecraft.wolf
scoreboard objectives add mob30 minecraft.killed:minecraft.spider
scoreboard objectives add mob31 minecraft.killed:minecraft.cave_spider
scoreboard objectives add mob32 minecraft.killed:minecraft.polar_bear
scoreboard objectives add mob33 minecraft.killed:minecraft.llama
scoreboard objectives add mob34 minecraft.killed:minecraft.trader_llama
scoreboard objectives add mob35 minecraft.killed:minecraft.iron_golem
scoreboard objectives add mob36 minecraft.killed:minecraft.panda
scoreboard objectives add mob37 minecraft.killed:minecraft.snow_golem
scoreboard objectives add mob38 minecraft.killed:minecraft.blaze
scoreboard objectives add mob39 minecraft.killed:minecraft.creeper
scoreboard objectives add mob40 minecraft.killed:minecraft.ghast
scoreboard objectives add mob41 minecraft.killed:minecraft.magma_cube
scoreboard objectives add mob42 minecraft.killed:minecraft.silverfish
scoreboard objectives add mob43 minecraft.killed:minecraft.skeleton
scoreboard objectives add mob44 minecraft.killed:minecraft.slime
scoreboard objectives add mob45 minecraft.killed:minecraft.zombie
scoreboard objectives add mob46 minecraft.killed:minecraft.zombie_villager
scoreboard objectives add mob47 minecraft.killed:minecraft.drowned
scoreboard objectives add mob48 minecraft.killed:minecraft.wither_skeleton
scoreboard objectives add mob49 minecraft.killed:minecraft.witch
scoreboard objectives add mob50 minecraft.killed:minecraft.vindicator
scoreboard objectives add mob51 minecraft.killed:minecraft.evoker
scoreboard objectives add mob52 minecraft.killed:minecraft.pillager
scoreboard objectives add mob53 minecraft.killed:minecraft.ravager
scoreboard objectives add mob54 minecraft.killed:minecraft.vex
scoreboard objectives add mob55 minecraft.killed:minecraft.piglin_brute
scoreboard objectives add mob56 minecraft.killed:minecraft.hoglin
scoreboard objectives add mob57 minecraft.killed:minecraft.zoglin
scoreboard objectives add mob58 minecraft.killed:minecraft.endermite
scoreboard objectives add mob59 minecraft.killed:minecraft.guardian
scoreboard objectives add mob60 minecraft.killed:minecraft.elder_guardian
scoreboard objectives add mob61 minecraft.killed:minecraft.shulker
scoreboard objectives add mob62 minecraft.killed:minecraft.husk
scoreboard objectives add mob63 minecraft.killed:minecraft.stray
scoreboard objectives add mob64 minecraft.killed:minecraft.ender_dragon
scoreboard objectives add mob65 minecraft.killed:minecraft.wither
scoreboard objectives add mob66 minecraft.killed:minecraft.axolotl
scoreboard objectives add mob67 minecraft.killed:minecraft.glow_squid
scoreboard objectives add mob68 minecraft.killed:minecraft.goat
scoreboard objectives add mob69 minecraft.killed:minecraft.allay
scoreboard objectives add mob70 minecraft.killed:minecraft.frog
scoreboard objectives add mob71 minecraft.killed:minecraft.tadpole
scoreboard objectives add mob72 minecraft.killed:minecraft.sniffer
scoreboard objectives add mob73 minecraft.killed:minecraft.camel
# Hit testing objectives
scoreboard objectives add tested1 minecraft.killed:minecraft.chicken
scoreboard objectives add tested2 minecraft.killed:minecraft.cow
scoreboard objectives add tested3 minecraft.killed:minecraft.mooshroom
scoreboard objectives add tested4 minecraft.killed:minecraft.pig
scoreboard objectives add tested5 minecraft.killed:minecraft.sheep
scoreboard objectives add tested6 minecraft.killed:minecraft.squid
scoreboard objectives add tested7 minecraft.killed:minecraft.villager
scoreboard objectives add tested8 minecraft.killed:minecraft.wandering_trader
scoreboard objectives add tested9 minecraft.killed:minecraft.bat
scoreboard objectives add tested10 minecraft.killed:minecraft.ocelot
scoreboard objectives add tested11 minecraft.killed:minecraft.cat
scoreboard objectives add tested12 minecraft.killed:minecraft.horse
scoreboard objectives add tested13 minecraft.killed:minecraft.donkey
scoreboard objectives add tested14 minecraft.killed:minecraft.mule
scoreboard objectives add tested15 minecraft.killed:minecraft.strider
scoreboard objectives add tested16 minecraft.killed:minecraft.fox
scoreboard objectives add tested17 minecraft.killed:minecraft.rabbit
scoreboard objectives add tested18 minecraft.killed:minecraft.parrot
scoreboard objectives add tested19 minecraft.killed:minecraft.turtle
scoreboard objectives add tested20 minecraft.killed:minecraft.cod
scoreboard objectives add tested21 minecraft.killed:minecraft.salmon
scoreboard objectives add tested22 minecraft.killed:minecraft.pufferfish
scoreboard objectives add tested23 minecraft.killed:minecraft.tropical_fish
scoreboard objectives add tested24 minecraft.killed:minecraft.enderman
scoreboard objectives add tested25 minecraft.killed:minecraft.piglin
scoreboard objectives add tested26 minecraft.killed:minecraft.zombified_piglin
scoreboard objectives add tested27 minecraft.killed:minecraft.dolphin
scoreboard objectives add tested28 minecraft.killed:minecraft.bee
scoreboard objectives add tested29 minecraft.killed:minecraft.wolf
scoreboard objectives add tested30 minecraft.killed:minecraft.spider
scoreboard objectives add tested31 minecraft.killed:minecraft.cave_spider
scoreboard objectives add tested32 minecraft.killed:minecraft.polar_bear
scoreboard objectives add tested33 minecraft.killed:minecraft.llama
scoreboard objectives add tested34 minecraft.killed:minecraft.trader_llama
scoreboard objectives add tested35 minecraft.killed:minecraft.iron_golem
scoreboard objectives add tested36 minecraft.killed:minecraft.panda
scoreboard objectives add tested37 minecraft.killed:minecraft.snow_golem
scoreboard objectives add tested38 minecraft.killed:minecraft.blaze
scoreboard objectives add tested39 minecraft.killed:minecraft.creeper
scoreboard objectives add tested40 minecraft.killed:minecraft.ghast
scoreboard objectives add tested41 minecraft.killed:minecraft.magma_cube
scoreboard objectives add tested42 minecraft.killed:minecraft.silverfish
scoreboard objectives add tested43 minecraft.killed:minecraft.skeleton
scoreboard objectives add tested44 minecraft.killed:minecraft.slime
scoreboard objectives add tested45 minecraft.killed:minecraft.zombie
scoreboard objectives add tested46 minecraft.killed:minecraft.zombie_villager
scoreboard objectives add tested47 minecraft.killed:minecraft.drowned
scoreboard objectives add tested48 minecraft.killed:minecraft.wither_skeleton
scoreboard objectives add tested49 minecraft.killed:minecraft.witch
scoreboard objectives add tested50 minecraft.killed:minecraft.vindicator
scoreboard objectives add tested51 minecraft.killed:minecraft.evoker
scoreboard objectives add tested52 minecraft.killed:minecraft.pillager
scoreboard objectives add tested53 minecraft.killed:minecraft.ravager
scoreboard objectives add tested54 minecraft.killed:minecraft.vex
scoreboard objectives add tested55 minecraft.killed:minecraft.piglin_brute
scoreboard objectives add tested56 minecraft.killed:minecraft.hoglin
scoreboard objectives add tested57 minecraft.killed:minecraft.zoglin
scoreboard objectives add tested58 minecraft.killed:minecraft.endermite
scoreboard objectives add tested59 minecraft.killed:minecraft.guardian
scoreboard objectives add tested60 minecraft.killed:minecraft.elder_guardian
scoreboard objectives add tested61 minecraft.killed:minecraft.shulker
scoreboard objectives add tested62 minecraft.killed:minecraft.husk
scoreboard objectives add tested63 minecraft.killed:minecraft.stray
scoreboard objectives add tested64 minecraft.killed:minecraft.ender_dragon
scoreboard objectives add tested65 minecraft.killed:minecraft.wither
scoreboard objectives add tested66 minecraft.killed:minecraft.axolotl
scoreboard objectives add tested67 minecraft.killed:minecraft.glow_squid
scoreboard objectives add tested68 minecraft.killed:minecraft.goat
scoreboard objectives add tested69 minecraft.killed:minecraft.allay
scoreboard objectives add tested70 minecraft.killed:minecraft.frog
scoreboard objectives add tested71 minecraft.killed:minecraft.tadpole
scoreboard objectives add tested72 minecraft.killed:minecraft.sniffer
scoreboard objectives add tested73 minecraft.killed:minecraft.camel
# Create platform
execute as @e[type=minecraft:armor_stand,name="moderator"] at @s run fill ~6 200 ~6 ~-6 200 ~-6 minecraft:white_stained_glass
# Set spawnpoint
execute as @e[type=minecraft:armor_stand,name="moderator"] at @s run spawnpoint @a ~ 201 ~
# Worldborder settings
execute as @e[type=minecraft:armor_stand,name="moderator"] at @s run worldborder center ~ ~
worldborder damage amount 5
worldborder warning distance 1
worldborder set 12
# Create, modify and join teams
team add alive {"text":"Alive","color":"green"}
team add eliminated {"text":"Eliminated","color":"gray"}
team modify alive color green
team modify eliminated color gray
team modify alive friendlyFire false
team modify eliminated friendlyFire false
team modify alive collisionRule never
team modify eliminated collisionRule never
team modify alive deathMessageVisibility never
team modify eliminated deathMessageVisibility never
team modify alive nametagVisibility always
team modify eliminated nametagVisibility always
team modify alive seeFriendlyInvisibles false
team modify eliminated seeFriendlyInvisibles true
team join alive @a
# Gamerule modification
gamerule announceAdvancements false
gamerule sendCommandFeedback false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
# Set gamemode
gamemode adventure @a
# Title times change
title @a times 10 100 10
# Clearing
clear @a
effect clear @a
kill @e[type=minecraft:item]
# Teleportation on platform
execute as @e[type=minecraft:armor_stand,name="moderator"] at @s run tp @a ~ 201 ~
# Tags for admin
tag @s add admin
scoreboard players set @a[tag=admin] settingspage 0
scoreboard players set @a[tag=admin] resetgraphic 0
item replace entity @a[tag=admin] armor.feet with minecraft:golden_boots{display:{Name:'[{"text":"Admin boots","color":"gold","bold": true}]'},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}]}
# Playsound
execute as @e[type=minecraft:armor_stand,name="moderator"] at @s run playsound minecraft:block.note_block.pling voice @a ~ 201 ~ 1 1
# Tellraw text
tellraw @a [{"text":"What's their mob","color":"yellow","bold":false},{"text":" game was sucesfully generated","color":"green","bold": false}]
tellraw @a [{"text":"Reset this game by clicking ","color":"gray","bold":false},{"text":"[Here]","color":"red","clickEvent":{"action":"run_command","value":"/function wtm:regenerate"},"hoverEvent":{"action":"show_text","contents":[{"text":"Reset What's their mob game","italic":false,"color":"yellow"}]}}]