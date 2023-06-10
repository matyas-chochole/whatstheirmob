# Tellraw and playsound
title @a actionbar {"text":""}
tellraw @a [{"text":"What's their mob","color":"yellow","bold":false},{"text":" game is regenerating","color":"white","bold":false}]
playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 1 1
# Clearing
clear @a
effect clear @a
advancement revoke @a everything
recipe take @a *
xp set @a 0 levels
xp set @a 0 points

## Objectives removing
# Main
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
scoreboard objectives remove gamephase
scoreboard objectives remove mob
scoreboard objectives remove timer
scoreboard objectives remove timerhelp1
scoreboard objectives remove timerhelp2
scoreboard objectives remove timer2
scoreboard objectives remove elimtimer
scoreboard objectives remove playercount
scoreboard objectives remove elim_x
scoreboard objectives remove elim_y
scoreboard objectives remove elim_z
scoreboard objectives remove minutes
scoreboard objectives remove seconds
scoreboard objectives remove tick
scoreboard objectives remove lifes
scoreboard objectives remove random
scoreboard objectives remove resetgraphic
scoreboard objectives remove shulsrandom
scoreboard objectives remove settingspage
scoreboard objectives remove hurttimer
scoreboard objectives remove findtimer
scoreboard objectives remove rolltimer
scoreboard objectives remove hurt
scoreboard objectives remove find
scoreboard objectives remove reveal
scoreboard objectives remove dupcount
scoreboard objectives remove forcealivecount
scoreboard objectives remove rejointimer
scoreboard objectives remove rejointimer2
scoreboard objectives remove team
scoreboard objectives remove teamcount
scoreboard objectives remove aliveteams
scoreboard objectives remove glowtimer
scoreboard objectives remove coascount
scoreboard objectives remove blast1
scoreboard objectives remove blast2
scoreboard objectives remove blast3
scoreboard objectives remove blast4
scoreboard objectives remove blast5
scoreboard objectives remove blasttimer
# Settings
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_abdrop
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_blockranking
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_daylightcycle
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_weathercycle
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_firetick
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_keepinventory
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_falldamage
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_insomnia
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_raids
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_mobgriefing
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_elimbox
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove difficulty
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_firedamage
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_drowndamage
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_freezedamage
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_patrolspawn
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_unlockrecipes
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_roundtime
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_wtspawn
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_psp
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_naturalregen
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_fdp
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_universalanger
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_collisions
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_pvp
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_immresp
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_nametagvis
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_deathmessages
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_specgen
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_announceadv
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_randomstyle
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_rwt
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_rejointime
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_minutes
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_seconds
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_teammode
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_flashmode
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run scoreboard objectives remove s_blastmode
# Listeners
scoreboard objectives remove mob1
scoreboard objectives remove mob2
scoreboard objectives remove mob3
scoreboard objectives remove mob4
scoreboard objectives remove mob5
scoreboard objectives remove mob6
scoreboard objectives remove mob7
scoreboard objectives remove mob8
scoreboard objectives remove mob9
scoreboard objectives remove mob10
scoreboard objectives remove mob11
scoreboard objectives remove mob12
scoreboard objectives remove mob13
scoreboard objectives remove mob14
scoreboard objectives remove mob15
scoreboard objectives remove mob16
scoreboard objectives remove mob17
scoreboard objectives remove mob18
scoreboard objectives remove mob19
scoreboard objectives remove mob20
scoreboard objectives remove mob21
scoreboard objectives remove mob22
scoreboard objectives remove mob23
scoreboard objectives remove mob24
scoreboard objectives remove mob25
scoreboard objectives remove mob26
scoreboard objectives remove mob27
scoreboard objectives remove mob28
scoreboard objectives remove mob29
scoreboard objectives remove mob30
scoreboard objectives remove mob31
scoreboard objectives remove mob32
scoreboard objectives remove mob33
scoreboard objectives remove mob34
scoreboard objectives remove mob35
scoreboard objectives remove mob36
scoreboard objectives remove mob37
scoreboard objectives remove mob38
scoreboard objectives remove mob39
scoreboard objectives remove mob40
scoreboard objectives remove mob41
scoreboard objectives remove mob42
scoreboard objectives remove mob43
scoreboard objectives remove mob44
scoreboard objectives remove mob45
scoreboard objectives remove mob46
scoreboard objectives remove mob47
scoreboard objectives remove mob48
scoreboard objectives remove mob49
scoreboard objectives remove mob50
scoreboard objectives remove mob51
scoreboard objectives remove mob52
scoreboard objectives remove mob53
scoreboard objectives remove mob54
scoreboard objectives remove mob55
scoreboard objectives remove mob56
scoreboard objectives remove mob57
scoreboard objectives remove mob58
scoreboard objectives remove mob59
scoreboard objectives remove mob60
scoreboard objectives remove mob61
scoreboard objectives remove mob62
scoreboard objectives remove mob63
scoreboard objectives remove mob64
scoreboard objectives remove mob65
scoreboard objectives remove mob66
scoreboard objectives remove mob67
scoreboard objectives remove mob68
scoreboard objectives remove mob69
scoreboard objectives remove mob70
scoreboard objectives remove mob71
scoreboard objectives remove mob72
scoreboard objectives remove mob73
# Force listeners
scoreboard objectives remove tested1
scoreboard objectives remove tested2
scoreboard objectives remove tested3
scoreboard objectives remove tested4
scoreboard objectives remove tested5
scoreboard objectives remove tested6
scoreboard objectives remove tested7
scoreboard objectives remove tested8
scoreboard objectives remove tested9
scoreboard objectives remove tested10
scoreboard objectives remove tested11
scoreboard objectives remove tested12
scoreboard objectives remove tested13
scoreboard objectives remove tested14
scoreboard objectives remove tested15
scoreboard objectives remove tested16
scoreboard objectives remove tested17
scoreboard objectives remove tested18
scoreboard objectives remove tested19
scoreboard objectives remove tested20
scoreboard objectives remove tested21
scoreboard objectives remove tested22
scoreboard objectives remove tested23
scoreboard objectives remove tested24
scoreboard objectives remove tested25
scoreboard objectives remove tested26
scoreboard objectives remove tested27
scoreboard objectives remove tested28
scoreboard objectives remove tested29
scoreboard objectives remove tested30
scoreboard objectives remove tested31
scoreboard objectives remove tested32
scoreboard objectives remove tested33
scoreboard objectives remove tested34
scoreboard objectives remove tested35
scoreboard objectives remove tested36
scoreboard objectives remove tested37
scoreboard objectives remove tested38
scoreboard objectives remove tested39
scoreboard objectives remove tested40
scoreboard objectives remove tested41
scoreboard objectives remove tested42
scoreboard objectives remove tested43
scoreboard objectives remove tested44
scoreboard objectives remove tested45
scoreboard objectives remove tested46
scoreboard objectives remove tested47
scoreboard objectives remove tested48
scoreboard objectives remove tested49
scoreboard objectives remove tested50
scoreboard objectives remove tested51
scoreboard objectives remove tested52
scoreboard objectives remove tested53
scoreboard objectives remove tested54
scoreboard objectives remove tested55
scoreboard objectives remove tested56
scoreboard objectives remove tested57
scoreboard objectives remove tested58
scoreboard objectives remove tested59
scoreboard objectives remove tested60
scoreboard objectives remove tested61
scoreboard objectives remove tested62
scoreboard objectives remove tested63
scoreboard objectives remove tested64
scoreboard objectives remove tested65
scoreboard objectives remove tested66
scoreboard objectives remove tested67
scoreboard objectives remove tested68
scoreboard objectives remove tested69
scoreboard objectives remove tested70
scoreboard objectives remove tested71
scoreboard objectives remove tested72
scoreboard objectives remove tested73

## Tags removing
tag @e[type=minecraft:armor_stand,name="moderator"] remove completed
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal1
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal2
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal3
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal4
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal5
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal6
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal7
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal8
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal9
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal10
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal11
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal12
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal13
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal14
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal15
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal16
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal17
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal18
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal19
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal20
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal21
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal22
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal23
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal24
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal25
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal26
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal27
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal28
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal29
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal30
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal31
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal32
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal33
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal34
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal35
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal36
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal37
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal38
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal39
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal40
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal41
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal42
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal43
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal44
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal45
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal46
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal47
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal48
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal49
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal50
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal51
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal52
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal53
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal54
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal55
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal56
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal57
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal58
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal59
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal60
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal61
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal62
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal63
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal64
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal65
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal66
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal67
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal68
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal69
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal70
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal71
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal72
tag @e[type=minecraft:armor_stand,name="moderator"] remove reveal73
# Tag removing
tag @a[tag=admin] remove admin
tag @a[tag=winner] remove winner
tag @a[tag=captain] remove captain
tag @e[type=minecraft:armor_stand,name=moderator] remove schelp
tag @e[type=minecraft:armor_stand,name=moderator] remove schelp2
# Team removing
team remove alive
team remove eliminated
# Firework debug
gamerule spectatorsGenerateChunks true
# Gamemode changing
gamemode spectator @a
# Worldborder enlarge
worldborder set 10000000
# Platform debug
execute at @e[type=minecraft:armor_stand,name="moderator"] run fill ~20 200 ~20 ~-20 200 ~-20 minecraft:air replace minecraft:white_stained_glass
# Killing moderator
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={settingssave=0}] run kill @e[type=minecraft:armor_stand,name="moderator"]
# Settingssave objective remove
execute unless entity @e[type=minecraft:armor_stand,name="moderator"] run scoreboard objectives remove settingssave
# Killing other entities
kill @e[type=minecraft:armor_stand,name="spawnpointer"]
kill @e[type=minecraft:armor_stand,name="holder"]
kill @e[type=minecraft:armor_stand,name="gp3helper"]
kill @e[type=minecraft:item]
# Forceload removing
forceload remove all
# End tellraws
tellraw @a [{"text":"What's their mob","color":"yellow","bold":false},{"text":" game was sucesfully regenerated!","color":"green","bold":false}]
tellraw @a [{"text":"Start new game of What's their mob by clicking ","color":"gray","bold":false},{"text":"[Here]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function wtm:generate"},"hoverEvent":{"action":"show_text","contents":[{"text":"Start What's their mob game","italic":false,"color":"yellow"}]}}]
# Command feedback change
gamerule sendCommandFeedback true