## Main
# Sound play
execute as @a at @s run playsound minecraft:block.glass.break voice @s ~ ~ ~ 1 0.8
# Clear players
clear @a
# Killing holder
kill @e[type=minecraft:armor_stand,name="holder"]
# Regeneration effects
effect give @a saturation 1 100 true
effect give @a instant_health 1 100 true
# Spawnpoint and worldspawn set
summon minecraft:armor_stand ~ ~ ~ {NoGravity:0b,Invisible:1b,Invulnerable:1b,Marker:0b,CustomName:'"spawnpointer"'}
spreadplayers ~ ~ 1 1 false @e[type=minecraft:armor_stand,name="spawnpointer"]
execute as @e[type=minecraft:armor_stand,name="spawnpointer"] at @s run spawnpoint @a ~ ~ ~
execute as @e[type=minecraft:armor_stand,name="spawnpointer"] at @s run setworldspawn ~ ~ ~
kill @e[type=minecraft:armor_stand,name="spawnpointer"]
# Chunk forceload
forceload add ~ ~
# Gamemode set
gamemode survival @a
# Admin tag remove
tag @a[tag=admin] remove admin
# Revoke advancements
advancement revoke @a everything
# XP clear
xp set @a 0 points
xp set @a 0 levels
# Title times change
title @a times 10 80 10
# Scoreboard hurt and find
scoreboard players set @a hurt 0
scoreboard players set @a find 0
# Team scoreboard display
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2..}] run scoreboard objectives setdisplay list team
# Scoreboard forcepc
scoreboard players operation @e[type=minecraft:armor_stand,name="moderator"] forcealivecount = @e[type=minecraft:armor_stand,name="moderator"] playercount
# Timer set
scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] timerhelp1 1200
scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] timerhelp2 20
scoreboard players operation @e[type=minecraft:armor_stand,name="moderator"] timerhelp1 *= @e[type=minecraft:armor_stand,name="moderator"] s_minutes
scoreboard players operation @e[type=minecraft:armor_stand,name="moderator"] timerhelp2 *= @e[type=minecraft:armor_stand,name="moderator"] s_seconds
scoreboard players operation @e[type=minecraft:armor_stand,name="moderator"] timer = @e[type=minecraft:armor_stand,name="moderator"] timerhelp1
scoreboard players operation @e[type=minecraft:armor_stand,name="moderator"] timer += @e[type=minecraft:armor_stand,name="moderator"] timerhelp2
execute as @e[type=minecraft:armor_stand,name="moderator",scores={s_seconds=0,s_minutes=0}] run scoreboard players set @s timer 100001
scoreboard players operation @e[type=minecraft:armor_stand,name="moderator"] minutes = @e[type=minecraft:armor_stand,name="moderator"] s_minutes
scoreboard players operation @e[type=minecraft:armor_stand,name="moderator"] seconds = @e[type=minecraft:armor_stand,name="moderator"] s_seconds
# Gamephase set
scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] gamephase 2

## Settings
# Difficulty set
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={difficulty=0}] run difficulty peaceful
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={difficulty=1}] run difficulty easy
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={difficulty=2}] run difficulty normal
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={difficulty=3}] run difficulty hard
# Weather and time set
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_daylightcycle=0..3}] run gamerule doDaylightCycle false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_daylightcycle=4}] run gamerule doDaylightCycle true
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_daylightcycle=0}] run time set 0
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_daylightcycle=1}] run time set 6000
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_daylightcycle=2}] run time set 13000
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_daylightcycle=3}] run time set 18000
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_daylightcycle=4}] run time set 0
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_weathercycle=0..2}] run gamerule doWeatherCycle false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_weathercycle=3}] run gamerule doWeatherCycle true
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_weathercycle=0}] run weather clear
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_weathercycle=1}] run weather rain
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_weathercycle=2}] run weather thunder
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_weathercycle=3}] run weather clear
# Fire Tick gamerule
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_firetick=0}] run gamerule doFireTick false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_firetick=1}] run gamerule doFireTick true
# Keep Inventory gamerule
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_keepinventory=0}] run gamerule keepInventory false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_keepinventory=1}] run gamerule keepInventory true
# Fall Damage gamerule
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_falldamage=0}] run gamerule fallDamage false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_falldamage=1}] run gamerule fallDamage true
# Fire Damage gamerule
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_firedamage=0}] run gamerule fireDamage false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_firedamage=1}] run gamerule fireDamage true
# Drowning Damage gamerule
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_drowndamage=0}] run gamerule drowningDamage false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_drowndamage=1}] run gamerule drowningDamage true
# Freeze Damage gamerule
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_freezedamage=0}] run gamerule freezeDamage false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_freezedamage=1}] run gamerule freezeDamage true
# Insomnia gamerule
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_insomnia=0}] run gamerule doInsomnia false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_insomnia=1}] run gamerule doInsomnia true
# Raids gamerule
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_raids=0}] run gamerule disableRaids true
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_raids=1}] run gamerule disableRaids false
# Mob griefing
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_mobgriefing=0}] run gamerule mobGriefing false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_mobgriefing=1}] run gamerule mobGriefing true
# Patrol spawning
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_patrolspawn=0}] run gamerule doPatrolSpawning false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_patrolspawn=1}] run gamerule doPatrolSpawning true
# Recipes unlock
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_unlockrecipes=1}] run recipe give @a *
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_unlockrecipes=0}] run recipe take @a *
# Wandering trader spawning
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_wtspawn=0}] run gamerule doTraderSpawning false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_wtspawn=1}] run gamerule doTraderSpawning true
# Natural regeneratiom
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_naturalregen=0}] run gamerule naturalRegeneration false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_naturalregen=1}] run gamerule naturalRegeneration true
# Players sleeping percentage
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_psp=0}] run gamerule playersSleepingPercentage 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_psp=1}] run gamerule playersSleepingPercentage 25
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_psp=2}] run gamerule playersSleepingPercentage 33
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_psp=3}] run gamerule playersSleepingPercentage 50
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_psp=4}] run gamerule playersSleepingPercentage 66
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_psp=5}] run gamerule playersSleepingPercentage 75
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_psp=6}] run gamerule playersSleepingPercentage 100
# Forgive death players
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_fdp=0}] run gamerule forgiveDeadPlayers false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_fdp=1}] run gamerule forgiveDeadPlayers true
# Universal anger
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_universalanger=0}] run gamerule universalAnger false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_universalanger=1}] run gamerule universalAnger true
# Collisions
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_collisions=0}] run team modify alive collisionRule never
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_collisions=1}] run team modify alive collisionRule always
# Immediate respawn
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_immresp=0}] run gamerule doImmediateRespawn false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_immresp=1}] run gamerule doImmediateRespawn true
# Nametag visibility
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_nametagvis=0}] run team modify alive nametagVisibility never
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_nametagvis=1}] run team modify alive nametagVisibility always
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_nametagvis=2}] run team modify alive nametagVisibility hideForOwnTeam
# Deathmessages visibility
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_deathmessages=0}] run team modify alive deathMessageVisibility never
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_deathmessages=1}] run team modify alive deathMessageVisibility always
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_deathmessages=2}] run team modify alive deathMessageVisibility hideForOwnTeam
# Spectators generate chunks
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_specgen=0}] run gamerule spectatorsGenerateChunks false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_specgen=1}] run gamerule spectatorsGenerateChunks true
# Announce advancements
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_announceadv=0}] run gamerule announceAdvancements false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_announceadv=1}] run gamerule announceAdvancements true

# Reveal prepare
execute if entity @a[team=alive,scores={mob=1}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal1
execute if entity @a[team=alive,scores={mob=2}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal2
execute if entity @a[team=alive,scores={mob=3}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal3
execute if entity @a[team=alive,scores={mob=4}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal4
execute if entity @a[team=alive,scores={mob=5}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal5
execute if entity @a[team=alive,scores={mob=6}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal6
execute if entity @a[team=alive,scores={mob=7}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal7
execute if entity @a[team=alive,scores={mob=8}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal8
execute if entity @a[team=alive,scores={mob=9}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal9
execute if entity @a[team=alive,scores={mob=10}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal10
execute if entity @a[team=alive,scores={mob=11}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal11
execute if entity @a[team=alive,scores={mob=12}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal12
execute if entity @a[team=alive,scores={mob=13}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal13
execute if entity @a[team=alive,scores={mob=14}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal14
execute if entity @a[team=alive,scores={mob=15}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal15
execute if entity @a[team=alive,scores={mob=16}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal16
execute if entity @a[team=alive,scores={mob=17}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal17
execute if entity @a[team=alive,scores={mob=18}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal18
execute if entity @a[team=alive,scores={mob=19}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal19
execute if entity @a[team=alive,scores={mob=20}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal20
execute if entity @a[team=alive,scores={mob=21}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal21
execute if entity @a[team=alive,scores={mob=22}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal22
execute if entity @a[team=alive,scores={mob=23}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal23
execute if entity @a[team=alive,scores={mob=24}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal24
execute if entity @a[team=alive,scores={mob=25}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal25
execute if entity @a[team=alive,scores={mob=26}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal26
execute if entity @a[team=alive,scores={mob=27}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal27
execute if entity @a[team=alive,scores={mob=28}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal28
execute if entity @a[team=alive,scores={mob=29}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal29
execute if entity @a[team=alive,scores={mob=30}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal30
execute if entity @a[team=alive,scores={mob=31}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal31
execute if entity @a[team=alive,scores={mob=32}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal32
execute if entity @a[team=alive,scores={mob=33}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal33
execute if entity @a[team=alive,scores={mob=34}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal34
execute if entity @a[team=alive,scores={mob=35}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal35
execute if entity @a[team=alive,scores={mob=36}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal36
execute if entity @a[team=alive,scores={mob=37}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal37
execute if entity @a[team=alive,scores={mob=38}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal38
execute if entity @a[team=alive,scores={mob=39}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal39
execute if entity @a[team=alive,scores={mob=40}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal40
execute if entity @a[team=alive,scores={mob=41}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal41
execute if entity @a[team=alive,scores={mob=42}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal42
execute if entity @a[team=alive,scores={mob=43}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal43
execute if entity @a[team=alive,scores={mob=44}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal44
execute if entity @a[team=alive,scores={mob=45}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal45
execute if entity @a[team=alive,scores={mob=46}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal46
execute if entity @a[team=alive,scores={mob=47}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal47
execute if entity @a[team=alive,scores={mob=48}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal48
execute if entity @a[team=alive,scores={mob=49}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal49
execute if entity @a[team=alive,scores={mob=50}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal50
execute if entity @a[team=alive,scores={mob=51}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal51
execute if entity @a[team=alive,scores={mob=52}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal52
execute if entity @a[team=alive,scores={mob=53}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal53
execute if entity @a[team=alive,scores={mob=54}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal54
execute if entity @a[team=alive,scores={mob=55}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal55
execute if entity @a[team=alive,scores={mob=56}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal56
execute if entity @a[team=alive,scores={mob=57}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal57
execute if entity @a[team=alive,scores={mob=58}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal58
execute if entity @a[team=alive,scores={mob=59}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal59
execute if entity @a[team=alive,scores={mob=60}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal60
execute if entity @a[team=alive,scores={mob=61}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal61
execute if entity @a[team=alive,scores={mob=62}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal62
execute if entity @a[team=alive,scores={mob=63}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal63
execute if entity @a[team=alive,scores={mob=64}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal64
execute if entity @a[team=alive,scores={mob=65}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal65
execute if entity @a[team=alive,scores={mob=66}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal66
execute if entity @a[team=alive,scores={mob=67}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal67
execute if entity @a[team=alive,scores={mob=68}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal68
execute if entity @a[team=alive,scores={mob=69}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal69
execute if entity @a[team=alive,scores={mob=70}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal70
execute if entity @a[team=alive,scores={mob=71}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal71
execute if entity @a[team=alive,scores={mob=72}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal72
execute if entity @a[team=alive,scores={mob=73}] run tag @e[type=minecraft:armor_stand,name="moderator"] add reveal73

# Scoreboard testedX set to 0
scoreboard players set @a tested1 0
scoreboard players set @a tested2 0
scoreboard players set @a tested3 0
scoreboard players set @a tested4 0
scoreboard players set @a tested5 0
scoreboard players set @a tested6 0
scoreboard players set @a tested7 0
scoreboard players set @a tested8 0
scoreboard players set @a tested9 0
scoreboard players set @a tested10 0
scoreboard players set @a tested11 0
scoreboard players set @a tested12 0
scoreboard players set @a tested13 0
scoreboard players set @a tested14 0
scoreboard players set @a tested15 0
scoreboard players set @a tested16 0
scoreboard players set @a tested17 0
scoreboard players set @a tested18 0
scoreboard players set @a tested19 0
scoreboard players set @a tested20 0
scoreboard players set @a tested21 0
scoreboard players set @a tested22 0
scoreboard players set @a tested23 0
scoreboard players set @a tested24 0
scoreboard players set @a tested25 0
scoreboard players set @a tested26 0
scoreboard players set @a tested27 0
scoreboard players set @a tested28 0
scoreboard players set @a tested29 0
scoreboard players set @a tested30 0
scoreboard players set @a tested31 0
scoreboard players set @a tested32 0
scoreboard players set @a tested33 0
scoreboard players set @a tested34 0
scoreboard players set @a tested35 0
scoreboard players set @a tested36 0
scoreboard players set @a tested37 0
scoreboard players set @a tested38 0
scoreboard players set @a tested39 0
scoreboard players set @a tested40 0
scoreboard players set @a tested41 0
scoreboard players set @a tested42 0
scoreboard players set @a tested43 0
scoreboard players set @a tested44 0
scoreboard players set @a tested45 0
scoreboard players set @a tested46 0
scoreboard players set @a tested47 0
scoreboard players set @a tested48 0
scoreboard players set @a tested49 0
scoreboard players set @a tested50 0
scoreboard players set @a tested51 0
scoreboard players set @a tested52 0
scoreboard players set @a tested53 0
scoreboard players set @a tested54 0
scoreboard players set @a tested55 0
scoreboard players set @a tested56 0
scoreboard players set @a tested57 0
scoreboard players set @a tested58 0
scoreboard players set @a tested59 0
scoreboard players set @a tested60 0
scoreboard players set @a tested61 0
scoreboard players set @a tested62 0
scoreboard players set @a tested63 0
scoreboard players set @a tested64 0
scoreboard players set @a tested65 0
scoreboard players set @a tested66 0
scoreboard players set @a tested67 0
scoreboard players set @a tested68 0
scoreboard players set @a tested69 0
scoreboard players set @a tested70 0
scoreboard players set @a tested71 0
scoreboard players set @a tested72 0
scoreboard players set @a tested73 0

## Sucesfull start
tellraw @a [{"text":"What's their mob game","color":"yellow","bold":false},{"text":" was sucessfully started","color":"green","bold":false}]

# What's my mob! Can you repeat, please!
tellraw @a {"text":"\n-----------------------------------------------------","color":"dark_purple","bold":false}
tellraw @a[scores={mob=1}] [{"text":"Chicken","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=2}] [{"text":"Cow","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=3}] [{"text":"Mooshroom","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=4}] [{"text":"Pig","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=5}] [{"text":"Sheep","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=6}] [{"text":"Squid","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=7}] [{"text":"Villager","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=8}] [{"text":"Wandering trader","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=9}] [{"text":"Bat","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=10}] [{"text":"Ocelot","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=11}] [{"text":"Cat","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=12}] [{"text":"Horse","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=13}] [{"text":"Donkey","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=14}] [{"text":"Mule","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=15}] [{"text":"Strider","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=16}] [{"text":"Fox","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=17}] [{"text":"Rabbit","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=18}] [{"text":"Parrot","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=19}] [{"text":"Turtle","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=20}] [{"text":"Cod","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=21}] [{"text":"Salmon","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=22}] [{"text":"Pufferfish","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=23}] [{"text":"Tropical Fish","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=24}] [{"text":"Enderman","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=25}] [{"text":"Piglin","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=26}] [{"text":"Zombified piglin","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=27}] [{"text":"Dolphin","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=28}] [{"text":"Bee","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=29}] [{"text":"Wolf","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=30}] [{"text":"Spider","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=31}] [{"text":"Cave spider","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=32}] [{"text":"Polar bear","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=33}] [{"text":"Llama","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=34}] [{"text":"Trader llama","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=35}] [{"text":"Iron golem","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=36}] [{"text":"Panda","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=37}] [{"text":"Snow golem","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=38}] [{"text":"Blaze","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=39}] [{"text":"Creeper","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=40}] [{"text":"Ghast","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=41}] [{"text":"Magma cube","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=42}] [{"text":"Silverfish","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=43}] [{"text":"Skeleton","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=44}] [{"text":"Slime","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=45}] [{"text":"Zombie","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=46}] [{"text":"Zombie villager","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=47}] [{"text":"Drowned","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=48}] [{"text":"Wither skeleton","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=49}] [{"text":"Witch","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=50}] [{"text":"Vindicator","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=51}] [{"text":"Evoker","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=52}] [{"text":"Pillager","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=53}] [{"text":"Ravager","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=54}] [{"text":"Vex","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=55}] [{"text":"Piglin brute","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=56}] [{"text":"Hoglin","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=57}] [{"text":"Zoglin","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=58}] [{"text":"Endermite","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=59}] [{"text":"Guardian","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=60}] [{"text":"Elder guardian","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=61}] [{"text":"Shulker","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=62}] [{"text":"Husk","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=63}] [{"text":"Stray","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=64}] [{"text":"Ender dragon","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=65}] [{"text":"Wither","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=66}] [{"text":"Axolotl","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=67}] [{"text":"Glow squid","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=68}] [{"text":"Goat","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=69}] [{"text":"Allay","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=70}] [{"text":"Frog","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=71}] [{"text":"Tadpole","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=72}] [{"text":"Sniffer","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]
tellraw @a[scores={mob=73}] [{"text":"Camel","color":"white","bold":true},{"text":" is your mob for this game","color":"gray","bold":false}]

execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_blastmode=1..5,s_flashmode=0}] run tellraw @a[team=alive] {"text":""}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_blastmode=0,s_flashmode=1..10}] run tellraw @a[team=alive] {"text":""}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_blastmode=1..5,s_flashmode=1..10}] run tellraw @a[team=alive] {"text":""}

execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_blastmode=1}] run tellraw @a[team=alive] [{"text":"1 explosive mob available ","color":"red","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_blastmode=2}] run tellraw @a[team=alive] [{"text":"2 explosive mobs available ","color":"red","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_blastmode=3}] run tellraw @a[team=alive] [{"text":"3 explosive mobs available ","color":"red","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_blastmode=4}] run tellraw @a[team=alive] [{"text":"4 explosive mobs available ","color":"red","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_blastmode=5}] run tellraw @a[team=alive] [{"text":"5 explosive mobs available ","color":"red","bold":false}]

execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_flashmode=1}] run tellraw @a[team=alive] [{"text":"mobs flash every 1 second ","color":"yellow","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_flashmode=2}] run tellraw @a[team=alive] [{"text":"mobs flash every 2 seconds ","color":"yellow","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_flashmode=3}] run tellraw @a[team=alive] [{"text":"mobs flash every 3 seconds ","color":"yellow","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_flashmode=4}] run tellraw @a[team=alive] [{"text":"mobs flash every 4 seconds ","color":"yellow","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_flashmode=5}] run tellraw @a[team=alive] [{"text":"mobs flash every 5 seconds ","color":"yellow","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_flashmode=6}] run tellraw @a[team=alive] [{"text":"mobs flash every 6 seconds ","color":"yellow","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_flashmode=7}] run tellraw @a[team=alive] [{"text":"mobs flash every 7 seconds ","color":"yellow","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_flashmode=8}] run tellraw @a[team=alive] [{"text":"mobs flash every 8 seconds ","color":"yellow","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_flashmode=9}] run tellraw @a[team=alive] [{"text":"mobs flash every 9 seconds ","color":"yellow","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_flashmode=10}] run tellraw @a[team=alive] [{"text":"mobs flash every 10 seconds ","color":"yellow","bold":false}]

execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] run tellraw @a[team=alive,scores={team=1}] [{"text":"\nYour team: ","color":"gray","bold":false},{"selector":"@a[team=alive,scores={team=1}]","color":"white","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] run tellraw @a[team=alive,scores={team=2}] [{"text":"\nYour team: ","color":"gray","bold":false},{"selector":"@a[team=alive,scores={team=2}]","color":"white","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] run tellraw @a[team=alive,scores={team=3}] [{"text":"\nYour team: ","color":"gray","bold":false},{"selector":"@a[team=alive,scores={team=3}]","color":"white","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] run tellraw @a[team=alive,scores={team=4}] [{"text":"\nYour team: ","color":"gray","bold":false},{"selector":"@a[team=alive,scores={team=4}]","color":"white","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] run tellraw @a[team=alive,scores={team=5}] [{"text":"\nYour team: ","color":"gray","bold":false},{"selector":"@a[team=alive,scores={team=5}]","color":"white","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] run tellraw @a[team=alive,scores={team=6}] [{"text":"\nYour team: ","color":"gray","bold":false},{"selector":"@a[team=alive,scores={team=6}]","color":"white","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] run tellraw @a[team=alive,scores={team=7}] [{"text":"\nYour team: ","color":"gray","bold":false},{"selector":"@a[team=alive,scores={team=7}]","color":"white","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] run tellraw @a[team=alive,scores={team=8}] [{"text":"\nYour team: ","color":"gray","bold":false},{"selector":"@a[team=alive,scores={team=8}]","color":"white","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] run tellraw @a[team=alive,scores={team=9}] [{"text":"\nYour team: ","color":"gray","bold":false},{"selector":"@a[team=alive,scores={team=9}]","color":"white","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] run tellraw @a[team=alive,scores={team=10}] [{"text":"\nYour team: ","color":"gray","bold":false},{"selector":"@a[team=alive,scores={team=10}]","color":"white","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] run tellraw @a[team=alive,scores={team=11}] [{"text":"\nYour team: ","color":"gray","bold":false},{"selector":"@a[team=alive,scores={team=11}]","color":"white","bold":false}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] run tellraw @a[team=alive,scores={team=12}] [{"text":"\nYour team: ","color":"gray","bold":false},{"selector":"@a[team=alive,scores={team=12}]","color":"white","bold":false}]
tellraw @a {"text":"-----------------------------------------------------\n","color":"dark_purple","bold":false}