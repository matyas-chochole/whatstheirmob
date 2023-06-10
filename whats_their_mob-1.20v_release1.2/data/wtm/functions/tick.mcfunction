## Player count testing
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] playercount if entity @a[team=alive]

## Debug
# Gamephase 0
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=0}] run tp @a[team=!alive] ~ 201 ~
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=0}] run spawnpoint @a[team=!alive] ~ 201 ~
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=0}] run gamemode adventure @a[team=!alive]
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=0}] run scoreboard players set @a[team=!alive] team 0
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=0}] run team join alive @a[team=!alive]
# Gamephase 0 disabling item drop
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=0}] run kill @e[type=item]
# Gamephase 1
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1}] run tp @a[team=!alive,team=!eliminated] ~ 201 ~
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1}] run spawnpoint @a[team=!alive,team=!eliminated] ~ 201 ~
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1}] run gamemode spectator @a[team=!alive,team=!eliminated]
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1}] run team join eliminated @a[team=!alive,team=!eliminated]
# Gamephase 2
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] run team join eliminated @a[team=!alive]
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] run gamemode spectator @a[team=!alive]

## Minutes and seconds countdowns
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer=1..}] run scoreboard players add @e[type=minecraft:armor_stand,name="moderator"] tick 1
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer=1..99000,tick=20..}] run scoreboard players remove @e[type=minecraft:armor_stand,name="moderator"] seconds 1
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer=1..99000,tick=20..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] tick 0
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer=1..,seconds=..-1}] run scoreboard players remove @e[type=minecraft:armor_stand,name="moderator"] minutes 1
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer=1..,seconds=..-1}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] seconds 59


#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Roll starting
# Text Tellraw
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=300}] run tellraw @a [{"text":"What's their mob","color":"yellow","bold":false},{"text":" game is starting...","color":"white","bold":false}]
# Clear Inventory
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=300}] run clear @a
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200}] run clear @a
# Removing 1 every tick
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=1..}] run scoreboard players remove @e[type=minecraft:armor_stand,name="moderator"] timer 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer=1..99000}] run scoreboard players remove @e[type=minecraft:armor_stand,name="moderator"] timer 1
# Tellraws and sounds about timer
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=299}] run title @a title {"text":"5","color":"dark_green","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=299}] run title @a subtitle {"text":""}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=299}] run execute as @a at @s run playsound minecraft:block.note_block.hat voice @p ~ ~ ~ 1 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=280}] run title @a title {"text":"4","color":"green","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=280}] run execute as @a at @s run playsound minecraft:block.note_block.hat voice @p ~ ~ ~ 1 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=260}] run title @a title {"text":"3","color":"yellow","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=260}] run execute as @a at @s run playsound minecraft:block.note_block.hat voice @p ~ ~ ~ 1 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=240}] run title @a title {"text":"2","color":"gold","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=240}] run execute as @a at @s run playsound minecraft:block.note_block.hat voice @p ~ ~ ~ 1 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=220}] run title @a title {"text":"1","color":"red","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=220}] run execute as @a at @s run playsound minecraft:block.note_block.hat voice @p ~ ~ ~ 1 1
# Actionbar graphics
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=299}] run title @a actionbar {"text":"W","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=295}] run title @a actionbar {"text":"Wh","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=290}] run title @a actionbar {"text":"Wha","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=285}] run title @a actionbar {"text":"What","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=280}] run title @a actionbar {"text":"What'","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=275}] run title @a actionbar {"text":"What's","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=270}] run title @a actionbar {"text":"What's ","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=265}] run title @a actionbar {"text":"What's t","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=260}] run title @a actionbar {"text":"What's th","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=255}] run title @a actionbar {"text":"What's the","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=250}] run title @a actionbar {"text":"What's thei","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=245}] run title @a actionbar {"text":"What's their","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=240}] run title @a actionbar {"text":"What's their ","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=235}] run title @a actionbar {"text":"What's their m","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=230}] run title @a actionbar {"text":"What's their mo","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=225}] run title @a actionbar {"text":"What's their mob","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=220}] run title @a actionbar {"text":"What's their mob","color":"yellow","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=215}] run title @a actionbar {"text":"What's their mob","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=210}] run title @a actionbar {"text":"What's their mob","color":"yellow","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=205}] run title @a actionbar {"text":"What's their mob","color":"gray","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200}] run title @a actionbar {"text":"What's their mob","color":"yellow","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=..190}] run title @a actionbar {"text":"www.matmaps.wz.cz","color":"gray","bold":false,"italic":true}
# Scoreboard hiding
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200}] run scoreboard objectives setdisplay sidebar

## Mob rolling
# Platform destroy
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200}] run fill ~20 200 ~20 ~-20 200 ~-20 minecraft:air replace
# Worldborder enlarge
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200}] run worldborder set 10000000
# Effects give
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200}] run effect give @a blindness 11 255 true
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200}] run effect give @a levitation 10 0 true
# Team selection
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] store result score @s teamcount if entity @a[team=alive,scores={team=1}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=0}] run scoreboard players set @a[team=alive,scores={team=0},limit=2,sort=random] team 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=1}] run scoreboard players set @a[team=alive,scores={team=0},limit=1,sort=random] team 1
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] store result score @s teamcount if entity @a[team=alive,scores={team=2}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=0}] run scoreboard players set @a[team=alive,scores={team=0},limit=2,sort=random] team 2
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=1}] run scoreboard players set @a[team=alive,scores={team=0},limit=1,sort=random] team 2
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] store result score @s teamcount if entity @a[team=alive,scores={team=3}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=0}] run scoreboard players set @a[team=alive,scores={team=0},limit=2,sort=random] team 3
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=1}] run scoreboard players set @a[team=alive,scores={team=0},limit=1,sort=random] team 3
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] store result score @s teamcount if entity @a[team=alive,scores={team=4}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=0}] run scoreboard players set @a[team=alive,scores={team=0},limit=2,sort=random] team 4
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=1}] run scoreboard players set @a[team=alive,scores={team=0},limit=1,sort=random] team 4
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] store result score @s teamcount if entity @a[team=alive,scores={team=5}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=0}] run scoreboard players set @a[team=alive,scores={team=0},limit=2,sort=random] team 5
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=1}] run scoreboard players set @a[team=alive,scores={team=0},limit=1,sort=random] team 5
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] store result score @s teamcount if entity @a[team=alive,scores={team=6}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=0}] run scoreboard players set @a[team=alive,scores={team=0},limit=2,sort=random] team 6
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=1}] run scoreboard players set @a[team=alive,scores={team=0},limit=1,sort=random] team 6
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] store result score @s teamcount if entity @a[team=alive,scores={team=7}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=0}] run scoreboard players set @a[team=alive,scores={team=0},limit=2,sort=random] team 7
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=1}] run scoreboard players set @a[team=alive,scores={team=0},limit=1,sort=random] team 7
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] store result score @s teamcount if entity @a[team=alive,scores={team=8}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=0}] run scoreboard players set @a[team=alive,scores={team=0},limit=2,sort=random] team 8
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=1}] run scoreboard players set @a[team=alive,scores={team=0},limit=1,sort=random] team 8
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] store result score @s teamcount if entity @a[team=alive,scores={team=9}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=0}] run scoreboard players set @a[team=alive,scores={team=0},limit=2,sort=random] team 9
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=1}] run scoreboard players set @a[team=alive,scores={team=0},limit=1,sort=random] team 9
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] store result score @s teamcount if entity @a[team=alive,scores={team=10}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=0}] run scoreboard players set @a[team=alive,scores={team=0},limit=2,sort=random] team 10
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=1}] run scoreboard players set @a[team=alive,scores={team=0},limit=1,sort=random] team 10
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] store result score @s teamcount if entity @a[team=alive,scores={team=11}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=0}] run scoreboard players set @a[team=alive,scores={team=0},limit=2,sort=random] team 11
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=1}] run scoreboard players set @a[team=alive,scores={team=0},limit=1,sort=random] team 11
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] store result score @s teamcount if entity @a[team=alive,scores={team=12}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=0}] run scoreboard players set @a[team=alive,scores={team=0},limit=2,sort=random] team 12
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2,teamcount=1}] run scoreboard players set @a[team=alive,scores={team=0},limit=1,sort=random] team 12
# Rolltimer
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] rolltimer 3
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=1}] run tag @a[team=alive] add captain
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] run tag @r[team=alive,scores={team=1}] add captain
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] run tag @r[team=alive,scores={team=2}] add captain
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] run tag @r[team=alive,scores={team=3}] add captain
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] run tag @r[team=alive,scores={team=4}] add captain
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] run tag @r[team=alive,scores={team=5}] add captain
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] run tag @r[team=alive,scores={team=6}] add captain
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] run tag @r[team=alive,scores={team=7}] add captain
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] run tag @r[team=alive,scores={team=8}] add captain
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] run tag @r[team=alive,scores={team=9}] add captain
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] run tag @r[team=alive,scores={team=10}] add captain
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] run tag @r[team=alive,scores={team=11}] add captain
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200,s_teammode=2}] run tag @r[team=alive,scores={team=12}] add captain
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=100..200}] run scoreboard players add @e[type=minecraft:armor_stand,name="moderator"] rolltimer 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=100..200,rolltimer=5..}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] rolltimer 1
# Roll sounds 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,rolltimer=2,timer=100..200}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.8
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,rolltimer=4,timer=100..200}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1
# Roll randomization
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=100..200,rolltimer=4}] run execute as @a[team=alive,tag=captain] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
# Roll fade time change
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=200}] run title @a times 0 160 20
# Roll part 2
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=97}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=97}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=94}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.8
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=94}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=91}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=91}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=88}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.8
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=88}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=85}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=85}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=82}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.8
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=82}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=79}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=79}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=75}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.8
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=75}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=71}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=71}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=67}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.8
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=67}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=63}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=63}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=58}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.8
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=58}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=53}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=53}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=48}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.8
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=48}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=42}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=42}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=33}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.8
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=33}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=23}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=23}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10}] run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.8
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10}] run execute as @a[team=alive] at @s store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
# Roll team paste
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0..200}] run scoreboard players operation @a[team=alive,scores={team=1},tag=!captain] mob = @a[team=alive,scores={team=1},tag=captain] mob
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0..200}] run scoreboard players operation @a[team=alive,scores={team=2},tag=!captain] mob = @a[team=alive,scores={team=2},tag=captain] mob
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0..200}] run scoreboard players operation @a[team=alive,scores={team=3},tag=!captain] mob = @a[team=alive,scores={team=3},tag=captain] mob
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0..200}] run scoreboard players operation @a[team=alive,scores={team=4},tag=!captain] mob = @a[team=alive,scores={team=4},tag=captain] mob
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0..200}] run scoreboard players operation @a[team=alive,scores={team=5},tag=!captain] mob = @a[team=alive,scores={team=5},tag=captain] mob
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0..200}] run scoreboard players operation @a[team=alive,scores={team=6},tag=!captain] mob = @a[team=alive,scores={team=6},tag=captain] mob
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0..200}] run scoreboard players operation @a[team=alive,scores={team=7},tag=!captain] mob = @a[team=alive,scores={team=7},tag=captain] mob
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0..200}] run scoreboard players operation @a[team=alive,scores={team=8},tag=!captain] mob = @a[team=alive,scores={team=8},tag=captain] mob
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0..200}] run scoreboard players operation @a[team=alive,scores={team=9},tag=!captain] mob = @a[team=alive,scores={team=9},tag=captain] mob
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0..200}] run scoreboard players operation @a[team=alive,scores={team=10},tag=!captain] mob = @a[team=alive,scores={team=10},tag=captain] mob
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0..200}] run scoreboard players operation @a[team=alive,scores={team=11},tag=!captain] mob = @a[team=alive,scores={team=11},tag=captain] mob
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0..200}] run scoreboard players operation @a[team=alive,scores={team=12},tag=!captain] mob = @a[team=alive,scores={team=12},tag=captain] mob
# Roll graphics 10..200
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a subtitle [{"text":"Your mob is...","color":"gray"}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=1}] title [{"text":"Chicken","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=2}] title [{"text":"Cow","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=3}] title [{"text":"Mooshroom","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=4}] title [{"text":"Pig","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=5}] title [{"text":"Sheep","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=6}] title [{"text":"Squid","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=7}] title [{"text":"Villager","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=8}] title [{"text":"Wandering trader","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=9}] title [{"text":"Bat","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=10}] title [{"text":"Ocelot","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=11}] title [{"text":"Cat","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=12}] title [{"text":"Horse","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=13}] title [{"text":"Donkey","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=14}] title [{"text":"Mule","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=15}] title [{"text":"Strider","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=16}] title [{"text":"Fox","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=17}] title [{"text":"Rabbit","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=18}] title [{"text":"Parrot","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=19}] title [{"text":"Turtle","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=20}] title [{"text":"Cod","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=21}] title [{"text":"Salmon","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=22}] title [{"text":"Pufferfish","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=23}] title [{"text":"Tropical Fish","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=24}] title [{"text":"Enderman","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=25}] title [{"text":"Piglin","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=26}] title [{"text":"Zombified piglin","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=27}] title [{"text":"Dolphin","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=28}] title [{"text":"Bee","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=29}] title [{"text":"Wolf","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=30}] title [{"text":"Spider","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=31}] title [{"text":"Cave spider","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=32}] title [{"text":"Polar bear","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=33}] title [{"text":"Llama","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=34}] title [{"text":"Trader llama","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=35}] title [{"text":"Iron golem","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=36}] title [{"text":"Panda","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=37}] title [{"text":"Snow golem","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=38}] title [{"text":"Blaze","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=39}] title [{"text":"Creeper","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=40}] title [{"text":"Ghast","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=41}] title [{"text":"Magma cube","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=42}] title [{"text":"Silverfish","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=43}] title [{"text":"Skeleton","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=44}] title [{"text":"Slime","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=45}] title [{"text":"Zombie","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=46}] title [{"text":"Zombie villager","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=47}] title [{"text":"Drowned","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=48}] title [{"text":"Wither skeleton","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=49}] title [{"text":"Witch","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=50}] title [{"text":"Vindicator","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=51}] title [{"text":"Evoker","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=52}] title [{"text":"Pillager","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=53}] title [{"text":"Ravager","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=54}] title [{"text":"Vex","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=55}] title [{"text":"Piglin brute","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=56}] title [{"text":"Hoglin","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=57}] title [{"text":"Zoglin","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=58}] title [{"text":"Endermite","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=59}] title [{"text":"Guardian","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=60}] title [{"text":"Elder guardian","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=61}] title [{"text":"Shulker","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=62}] title [{"text":"Husk","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=63}] title [{"text":"Stray","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=64}] title [{"text":"Ender dragon","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=65}] title [{"text":"Wither","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=66}] title [{"text":"Axolotl","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=67}] title [{"text":"Glow squid","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=68}] title [{"text":"Goat","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=69}] title [{"text":"Allay","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=70}] title [{"text":"Frog","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=71}] title [{"text":"Tadpole","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=72}] title [{"text":"Sniffer","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=10..200}] run title @a[scores={mob=73}] title [{"text":"Camel","color":"white","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=9}] run function wtm:duplicate
# Roll graphics 0
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a subtitle [{"text":"Your mob is...","color":"gray"}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=1}] title [{"text":"Chicken","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=2}] title [{"text":"Cow","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=3}] title [{"text":"Mooshroom","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=4}] title [{"text":"Pig","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=5}] title [{"text":"Sheep","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=6}] title [{"text":"Squid","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=7}] title [{"text":"Villager","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=8}] title [{"text":"Wandering trader","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=9}] title [{"text":"Bat","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=10}] title [{"text":"Ocelot","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=11}] title [{"text":"Cat","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=12}] title [{"text":"Horse","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=13}] title [{"text":"Donkey","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=14}] title [{"text":"Mule","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=15}] title [{"text":"Strider","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=16}] title [{"text":"Fox","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=17}] title [{"text":"Rabbit","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=18}] title [{"text":"Parrot","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=19}] title [{"text":"Turtle","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=20}] title [{"text":"Cod","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=21}] title [{"text":"Salmon","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=22}] title [{"text":"Pufferfish","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=23}] title [{"text":"Tropical Fish","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=24}] title [{"text":"Enderman","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=25}] title [{"text":"Piglin","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=26}] title [{"text":"Zombified piglin","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=27}] title [{"text":"Dolphin","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=28}] title [{"text":"Bee","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=29}] title [{"text":"Wolf","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=30}] title [{"text":"Spider","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=31}] title [{"text":"Cave spider","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=32}] title [{"text":"Polar bear","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=33}] title [{"text":"Llama","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=34}] title [{"text":"Trader llama","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=35}] title [{"text":"Iron golem","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=36}] title [{"text":"Panda","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=37}] title [{"text":"Snow golem","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=38}] title [{"text":"Blaze","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=39}] title [{"text":"Creeper","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=40}] title [{"text":"Ghast","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=41}] title [{"text":"Magma cube","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=42}] title [{"text":"Silverfish","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=43}] title [{"text":"Skeleton","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=44}] title [{"text":"Slime","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=45}] title [{"text":"Zombie","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=46}] title [{"text":"Zombie villager","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=47}] title [{"text":"Drowned","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=48}] title [{"text":"Wither skeleton","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=49}] title [{"text":"Witch","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=50}] title [{"text":"Vindicator","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=51}] title [{"text":"Evoker","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=52}] title [{"text":"Pillager","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=53}] title [{"text":"Ravager","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=54}] title [{"text":"Vex","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=55}] title [{"text":"Piglin brute","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=56}] title [{"text":"Hoglin","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=57}] title [{"text":"Zoglin","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=58}] title [{"text":"Endermite","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=59}] title [{"text":"Guardian","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=60}] title [{"text":"Elder guardian","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=61}] title [{"text":"Shulker","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=62}] title [{"text":"Husk","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=63}] title [{"text":"Stray","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=64}] title [{"text":"Ender dragon","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=65}] title [{"text":"Wither","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=66}] title [{"text":"Axolotl","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=67}] title [{"text":"Glow squid","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=68}] title [{"text":"Goat","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=69}] title [{"text":"Allay","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=70}] title [{"text":"Frog","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=71}] title [{"text":"Tadpole","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=72}] title [{"text":"Sniffer","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run title @a[scores={mob=73}] title [{"text":"Camel","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run function wtm:lives
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] run execute as @a at @s run particle minecraft:firework ~ ~1 ~ 1 1 1 0.5 200
# Roll 0 duplicate
tag @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] remove duplicate

## Game start
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=1,timer=0}] at @s run function wtm:start

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Special countdowns
# PVP
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer=20..},tag=!schelp] run effect give @a resistance 1 100 false
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer=0},tag=!schelp] run execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_pvp=1}] run team modify alive friendlyFire true
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer=0},tag=!schelp] run execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={s_pvp=1}] run tellraw @a {"text":"PVP is now enabled","color":"red"}
tag @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer=0},tag=!schelp] add schelp
# Title SSSSSSH...
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer2=40},tag=!schelp2] run title @a title {"text":"Sssssh...","color":"dark_red","bold":true}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer2=40},tag=!schelp2] run title @a subtitle [{"text":"✖ ","color":"dark_red"},{"text":"Do not reveal your mob to others","color":"gray"},{"text":" ✖","color":"dark_red"}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer2=60},tag=!schelp2] run title @a subtitle [{"text":"✖ ","color":"dark_red"},{"text":"Do not reveal your mob to others","color":"red"},{"text":" ✖","color":"dark_red"}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer2=80},tag=!schelp2] run title @a subtitle [{"text":"✖ ","color":"dark_red"},{"text":"Do not reveal your mob to others","color":"gray"},{"text":" ✖","color":"dark_red"}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer2=100},tag=!schelp2] run title @a subtitle [{"text":"✖ ","color":"dark_red"},{"text":"Do not reveal your mob to others","color":"red"},{"text":" ✖","color":"dark_red"}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer2=120},tag=!schelp2] run title @a subtitle [{"text":"✖ ","color":"dark_red"},{"text":"Do not reveal your mob to others","color":"gray"},{"text":" ✖","color":"dark_red"}]
tag @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer2=120},tag=!schelp2] add schelp2

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Lastkill tag
execute as @a[team=alive,scores={mob1=1..}] unless entity @s[scores={mob=1}] if entity @a[team=alive,scores={mob=1}] run tag @s add lastkill
execute as @a[team=alive,scores={mob2=1..}] unless entity @s[scores={mob=2}] if entity @a[team=alive,scores={mob=2}] run tag @s add lastkill
execute as @a[team=alive,scores={mob3=1..}] unless entity @s[scores={mob=3}] if entity @a[team=alive,scores={mob=3}] run tag @s add lastkill
execute as @a[team=alive,scores={mob4=1..}] unless entity @s[scores={mob=4}] if entity @a[team=alive,scores={mob=4}] run tag @s add lastkill
execute as @a[team=alive,scores={mob5=1..}] unless entity @s[scores={mob=5}] if entity @a[team=alive,scores={mob=5}] run tag @s add lastkill
execute as @a[team=alive,scores={mob6=1..}] unless entity @s[scores={mob=6}] if entity @a[team=alive,scores={mob=6}] run tag @s add lastkill
execute as @a[team=alive,scores={mob7=1..}] unless entity @s[scores={mob=7}] if entity @a[team=alive,scores={mob=7}] run tag @s add lastkill
execute as @a[team=alive,scores={mob8=1..}] unless entity @s[scores={mob=8}] if entity @a[team=alive,scores={mob=8}] run tag @s add lastkill
execute as @a[team=alive,scores={mob9=1..}] unless entity @s[scores={mob=9}] if entity @a[team=alive,scores={mob=9}] run tag @s add lastkill
execute as @a[team=alive,scores={mob10=1..}] unless entity @s[scores={mob=10}] if entity @a[team=alive,scores={mob=10}] run tag @s add lastkill
execute as @a[team=alive,scores={mob11=1..}] unless entity @s[scores={mob=11}] if entity @a[team=alive,scores={mob=11}] run tag @s add lastkill
execute as @a[team=alive,scores={mob12=1..}] unless entity @s[scores={mob=12}] if entity @a[team=alive,scores={mob=12}] run tag @s add lastkill
execute as @a[team=alive,scores={mob13=1..}] unless entity @s[scores={mob=13}] if entity @a[team=alive,scores={mob=13}] run tag @s add lastkill
execute as @a[team=alive,scores={mob14=1..}] unless entity @s[scores={mob=14}] if entity @a[team=alive,scores={mob=14}] run tag @s add lastkill
execute as @a[team=alive,scores={mob15=1..}] unless entity @s[scores={mob=15}] if entity @a[team=alive,scores={mob=15}] run tag @s add lastkill
execute as @a[team=alive,scores={mob16=1..}] unless entity @s[scores={mob=16}] if entity @a[team=alive,scores={mob=16}] run tag @s add lastkill
execute as @a[team=alive,scores={mob17=1..}] unless entity @s[scores={mob=17}] if entity @a[team=alive,scores={mob=17}] run tag @s add lastkill
execute as @a[team=alive,scores={mob18=1..}] unless entity @s[scores={mob=18}] if entity @a[team=alive,scores={mob=18}] run tag @s add lastkill
execute as @a[team=alive,scores={mob19=1..}] unless entity @s[scores={mob=19}] if entity @a[team=alive,scores={mob=19}] run tag @s add lastkill
execute as @a[team=alive,scores={mob20=1..}] unless entity @s[scores={mob=20}] if entity @a[team=alive,scores={mob=20}] run tag @s add lastkill
execute as @a[team=alive,scores={mob21=1..}] unless entity @s[scores={mob=21}] if entity @a[team=alive,scores={mob=21}] run tag @s add lastkill
execute as @a[team=alive,scores={mob22=1..}] unless entity @s[scores={mob=22}] if entity @a[team=alive,scores={mob=22}] run tag @s add lastkill
execute as @a[team=alive,scores={mob23=1..}] unless entity @s[scores={mob=23}] if entity @a[team=alive,scores={mob=23}] run tag @s add lastkill
execute as @a[team=alive,scores={mob24=1..}] unless entity @s[scores={mob=24}] if entity @a[team=alive,scores={mob=24}] run tag @s add lastkill
execute as @a[team=alive,scores={mob25=1..}] unless entity @s[scores={mob=25}] if entity @a[team=alive,scores={mob=25}] run tag @s add lastkill
execute as @a[team=alive,scores={mob26=1..}] unless entity @s[scores={mob=26}] if entity @a[team=alive,scores={mob=26}] run tag @s add lastkill
execute as @a[team=alive,scores={mob27=1..}] unless entity @s[scores={mob=27}] if entity @a[team=alive,scores={mob=27}] run tag @s add lastkill
execute as @a[team=alive,scores={mob28=1..}] unless entity @s[scores={mob=28}] if entity @a[team=alive,scores={mob=28}] run tag @s add lastkill
execute as @a[team=alive,scores={mob29=1..}] unless entity @s[scores={mob=29}] if entity @a[team=alive,scores={mob=29}] run tag @s add lastkill
execute as @a[team=alive,scores={mob30=1..}] unless entity @s[scores={mob=30}] if entity @a[team=alive,scores={mob=30}] run tag @s add lastkill
execute as @a[team=alive,scores={mob31=1..}] unless entity @s[scores={mob=31}] if entity @a[team=alive,scores={mob=31}] run tag @s add lastkill
execute as @a[team=alive,scores={mob32=1..}] unless entity @s[scores={mob=32}] if entity @a[team=alive,scores={mob=32}] run tag @s add lastkill
execute as @a[team=alive,scores={mob33=1..}] unless entity @s[scores={mob=33}] if entity @a[team=alive,scores={mob=33}] run tag @s add lastkill
execute as @a[team=alive,scores={mob34=1..}] unless entity @s[scores={mob=34}] if entity @a[team=alive,scores={mob=34}] run tag @s add lastkill
execute as @a[team=alive,scores={mob35=1..}] unless entity @s[scores={mob=35}] if entity @a[team=alive,scores={mob=35}] run tag @s add lastkill
execute as @a[team=alive,scores={mob36=1..}] unless entity @s[scores={mob=36}] if entity @a[team=alive,scores={mob=36}] run tag @s add lastkill
execute as @a[team=alive,scores={mob37=1..}] unless entity @s[scores={mob=37}] if entity @a[team=alive,scores={mob=37}] run tag @s add lastkill
execute as @a[team=alive,scores={mob38=1..}] unless entity @s[scores={mob=38}] if entity @a[team=alive,scores={mob=38}] run tag @s add lastkill
execute as @a[team=alive,scores={mob39=1..}] unless entity @s[scores={mob=39}] if entity @a[team=alive,scores={mob=39}] run tag @s add lastkill
execute as @a[team=alive,scores={mob40=1..}] unless entity @s[scores={mob=40}] if entity @a[team=alive,scores={mob=40}] run tag @s add lastkill
execute as @a[team=alive,scores={mob41=1..}] unless entity @s[scores={mob=41}] if entity @a[team=alive,scores={mob=41}] run tag @s add lastkill
execute as @a[team=alive,scores={mob42=1..}] unless entity @s[scores={mob=42}] if entity @a[team=alive,scores={mob=42}] run tag @s add lastkill
execute as @a[team=alive,scores={mob43=1..}] unless entity @s[scores={mob=43}] if entity @a[team=alive,scores={mob=43}] run tag @s add lastkill
execute as @a[team=alive,scores={mob44=1..}] unless entity @s[scores={mob=44}] if entity @a[team=alive,scores={mob=44}] run tag @s add lastkill
execute as @a[team=alive,scores={mob45=1..}] unless entity @s[scores={mob=45}] if entity @a[team=alive,scores={mob=45}] run tag @s add lastkill
execute as @a[team=alive,scores={mob46=1..}] unless entity @s[scores={mob=46}] if entity @a[team=alive,scores={mob=46}] run tag @s add lastkill
execute as @a[team=alive,scores={mob47=1..}] unless entity @s[scores={mob=47}] if entity @a[team=alive,scores={mob=47}] run tag @s add lastkill
execute as @a[team=alive,scores={mob48=1..}] unless entity @s[scores={mob=48}] if entity @a[team=alive,scores={mob=48}] run tag @s add lastkill
execute as @a[team=alive,scores={mob49=1..}] unless entity @s[scores={mob=49}] if entity @a[team=alive,scores={mob=49}] run tag @s add lastkill
execute as @a[team=alive,scores={mob50=1..}] unless entity @s[scores={mob=50}] if entity @a[team=alive,scores={mob=50}] run tag @s add lastkill
execute as @a[team=alive,scores={mob51=1..}] unless entity @s[scores={mob=51}] if entity @a[team=alive,scores={mob=51}] run tag @s add lastkill
execute as @a[team=alive,scores={mob52=1..}] unless entity @s[scores={mob=52}] if entity @a[team=alive,scores={mob=52}] run tag @s add lastkill
execute as @a[team=alive,scores={mob53=1..}] unless entity @s[scores={mob=53}] if entity @a[team=alive,scores={mob=53}] run tag @s add lastkill
execute as @a[team=alive,scores={mob54=1..}] unless entity @s[scores={mob=54}] if entity @a[team=alive,scores={mob=54}] run tag @s add lastkill
execute as @a[team=alive,scores={mob55=1..}] unless entity @s[scores={mob=55}] if entity @a[team=alive,scores={mob=55}] run tag @s add lastkill
execute as @a[team=alive,scores={mob56=1..}] unless entity @s[scores={mob=56}] if entity @a[team=alive,scores={mob=56}] run tag @s add lastkill
execute as @a[team=alive,scores={mob57=1..}] unless entity @s[scores={mob=57}] if entity @a[team=alive,scores={mob=57}] run tag @s add lastkill
execute as @a[team=alive,scores={mob58=1..}] unless entity @s[scores={mob=58}] if entity @a[team=alive,scores={mob=58}] run tag @s add lastkill
execute as @a[team=alive,scores={mob59=1..}] unless entity @s[scores={mob=59}] if entity @a[team=alive,scores={mob=59}] run tag @s add lastkill
execute as @a[team=alive,scores={mob60=1..}] unless entity @s[scores={mob=60}] if entity @a[team=alive,scores={mob=60}] run tag @s add lastkill
execute as @a[team=alive,scores={mob61=1..}] unless entity @s[scores={mob=61}] if entity @a[team=alive,scores={mob=61}] run tag @s add lastkill
execute as @a[team=alive,scores={mob62=1..}] unless entity @s[scores={mob=62}] if entity @a[team=alive,scores={mob=62}] run tag @s add lastkill
execute as @a[team=alive,scores={mob63=1..}] unless entity @s[scores={mob=63}] if entity @a[team=alive,scores={mob=63}] run tag @s add lastkill
execute as @a[team=alive,scores={mob64=1..}] unless entity @s[scores={mob=64}] if entity @a[team=alive,scores={mob=64}] run tag @s add lastkill
execute as @a[team=alive,scores={mob65=1..}] unless entity @s[scores={mob=65}] if entity @a[team=alive,scores={mob=65}] run tag @s add lastkill
execute as @a[team=alive,scores={mob66=1..}] unless entity @s[scores={mob=66}] if entity @a[team=alive,scores={mob=66}] run tag @s add lastkill
execute as @a[team=alive,scores={mob67=1..}] unless entity @s[scores={mob=67}] if entity @a[team=alive,scores={mob=67}] run tag @s add lastkill
execute as @a[team=alive,scores={mob68=1..}] unless entity @s[scores={mob=68}] if entity @a[team=alive,scores={mob=68}] run tag @s add lastkill
execute as @a[team=alive,scores={mob69=1..}] unless entity @s[scores={mob=69}] if entity @a[team=alive,scores={mob=69}] run tag @s add lastkill
execute as @a[team=alive,scores={mob70=1..}] unless entity @s[scores={mob=70}] if entity @a[team=alive,scores={mob=70}] run tag @s add lastkill
execute as @a[team=alive,scores={mob71=1..}] unless entity @s[scores={mob=71}] if entity @a[team=alive,scores={mob=71}] run tag @s add lastkill
execute as @a[team=alive,scores={mob72=1..}] unless entity @s[scores={mob=72}] if entity @a[team=alive,scores={mob=72}] run tag @s add lastkill
execute as @a[team=alive,scores={mob73=1..}] unless entity @s[scores={mob=73}] if entity @a[team=alive,scores={mob=73}] run tag @s add lastkill

## Hit detection
execute as @a[team=alive,scores={mob1=1..}] unless entity @s[scores={mob=1}] run scoreboard players remove @a[scores={mob=1,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob1=1..}] unless entity @s[scores={mob=1}] run scoreboard players set @a[scores={mob=1,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob1=1..}] unless entity @s[scores={mob=1}] run execute if entity @a[team=alive,scores={mob=1}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob1=1..}] run scoreboard players remove @s mob1 1
execute as @a[team=alive,scores={mob2=1..}] unless entity @s[scores={mob=2}] run scoreboard players remove @a[scores={mob=2,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob2=1..}] unless entity @s[scores={mob=2}] run scoreboard players set @a[scores={mob=2,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob2=1..}] unless entity @s[scores={mob=2}] run execute if entity @a[team=alive,scores={mob=2}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob2=1..}] run scoreboard players remove @s mob2 1
execute as @a[team=alive,scores={mob3=1..}] unless entity @s[scores={mob=3}] run scoreboard players remove @a[scores={mob=3,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob3=1..}] unless entity @s[scores={mob=3}] run scoreboard players set @a[scores={mob=3,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob3=1..}] unless entity @s[scores={mob=3}] run execute if entity @a[team=alive,scores={mob=3}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob3=1..}] run scoreboard players remove @s mob3 1
execute as @a[team=alive,scores={mob4=1..}] unless entity @s[scores={mob=4}] run scoreboard players remove @a[scores={mob=4,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob4=1..}] unless entity @s[scores={mob=4}] run scoreboard players set @a[scores={mob=4,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob4=1..}] unless entity @s[scores={mob=4}] run execute if entity @a[team=alive,scores={mob=4}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob4=1..}] run scoreboard players remove @s mob4 1
execute as @a[team=alive,scores={mob5=1..}] unless entity @s[scores={mob=5}] run scoreboard players remove @a[scores={mob=5,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob5=1..}] unless entity @s[scores={mob=5}] run scoreboard players set @a[scores={mob=5,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob5=1..}] unless entity @s[scores={mob=5}] run execute if entity @a[team=alive,scores={mob=5}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob5=1..}] run scoreboard players remove @s mob5 1
execute as @a[team=alive,scores={mob6=1..}] unless entity @s[scores={mob=6}] run scoreboard players remove @a[scores={mob=6,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob6=1..}] unless entity @s[scores={mob=6}] run scoreboard players set @a[scores={mob=6,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob6=1..}] unless entity @s[scores={mob=6}] run execute if entity @a[team=alive,scores={mob=6}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob6=1..}] run scoreboard players remove @s mob6 1
execute as @a[team=alive,scores={mob7=1..}] unless entity @s[scores={mob=7}] run scoreboard players remove @a[scores={mob=7,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob7=1..}] unless entity @s[scores={mob=7}] run scoreboard players set @a[scores={mob=7,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob7=1..}] unless entity @s[scores={mob=7}] run execute if entity @a[team=alive,scores={mob=7}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob7=1..}] run scoreboard players remove @s mob7 1
execute as @a[team=alive,scores={mob8=1..}] unless entity @s[scores={mob=8}] run scoreboard players remove @a[scores={mob=8,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob8=1..}] unless entity @s[scores={mob=8}] run scoreboard players set @a[scores={mob=8,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob8=1..}] unless entity @s[scores={mob=8}] run execute if entity @a[team=alive,scores={mob=8}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob8=1..}] run scoreboard players remove @s mob8 1
execute as @a[team=alive,scores={mob9=1..}] unless entity @s[scores={mob=9}] run scoreboard players remove @a[scores={mob=9,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob9=1..}] unless entity @s[scores={mob=9}] run scoreboard players set @a[scores={mob=9,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob9=1..}] unless entity @s[scores={mob=9}] run execute if entity @a[team=alive,scores={mob=9}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob9=1..}] run scoreboard players remove @s mob9 1
execute as @a[team=alive,scores={mob10=1..}] unless entity @s[scores={mob=10}] run scoreboard players remove @a[scores={mob=10,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob10=1..}] unless entity @s[scores={mob=10}] run scoreboard players set @a[scores={mob=10,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob10=1..}] unless entity @s[scores={mob=10}] run execute if entity @a[team=alive,scores={mob=10}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob10=1..}] run scoreboard players remove @s mob10 1
execute as @a[team=alive,scores={mob11=1..}] unless entity @s[scores={mob=11}] run scoreboard players remove @a[scores={mob=11,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob11=1..}] unless entity @s[scores={mob=11}] run scoreboard players set @a[scores={mob=11,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob11=1..}] unless entity @s[scores={mob=11}] run execute if entity @a[team=alive,scores={mob=11}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob11=1..}] run scoreboard players remove @s mob11 1
execute as @a[team=alive,scores={mob12=1..}] unless entity @s[scores={mob=12}] run scoreboard players remove @a[scores={mob=12,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob12=1..}] unless entity @s[scores={mob=12}] run scoreboard players set @a[scores={mob=12,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob12=1..}] unless entity @s[scores={mob=12}] run execute if entity @a[team=alive,scores={mob=12}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob12=1..}] run scoreboard players remove @s mob12 1
execute as @a[team=alive,scores={mob13=1..}] unless entity @s[scores={mob=13}] run scoreboard players remove @a[scores={mob=13,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob13=1..}] unless entity @s[scores={mob=13}] run scoreboard players set @a[scores={mob=13,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob13=1..}] unless entity @s[scores={mob=13}] run execute if entity @a[team=alive,scores={mob=13}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob13=1..}] run scoreboard players remove @s mob13 1
execute as @a[team=alive,scores={mob14=1..}] unless entity @s[scores={mob=14}] run scoreboard players remove @a[scores={mob=14,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob14=1..}] unless entity @s[scores={mob=14}] run scoreboard players set @a[scores={mob=14,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob14=1..}] unless entity @s[scores={mob=14}] run execute if entity @a[team=alive,scores={mob=14}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob14=1..}] run scoreboard players remove @s mob14 1
execute as @a[team=alive,scores={mob15=1..}] unless entity @s[scores={mob=15}] run scoreboard players remove @a[scores={mob=15,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob15=1..}] unless entity @s[scores={mob=15}] run scoreboard players set @a[scores={mob=15,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob15=1..}] unless entity @s[scores={mob=15}] run execute if entity @a[team=alive,scores={mob=15}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob15=1..}] run scoreboard players remove @s mob15 1
execute as @a[team=alive,scores={mob16=1..}] unless entity @s[scores={mob=16}] run scoreboard players remove @a[scores={mob=16,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob16=1..}] unless entity @s[scores={mob=16}] run scoreboard players set @a[scores={mob=16,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob16=1..}] unless entity @s[scores={mob=16}] run execute if entity @a[team=alive,scores={mob=16}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob16=1..}] run scoreboard players remove @s mob16 1
execute as @a[team=alive,scores={mob17=1..}] unless entity @s[scores={mob=17}] run scoreboard players remove @a[scores={mob=17,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob17=1..}] unless entity @s[scores={mob=17}] run scoreboard players set @a[scores={mob=17,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob17=1..}] unless entity @s[scores={mob=17}] run execute if entity @a[team=alive,scores={mob=17}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob17=1..}] run scoreboard players remove @s mob17 1
execute as @a[team=alive,scores={mob18=1..}] unless entity @s[scores={mob=18}] run scoreboard players remove @a[scores={mob=18,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob18=1..}] unless entity @s[scores={mob=18}] run scoreboard players set @a[scores={mob=18,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob18=1..}] unless entity @s[scores={mob=18}] run execute if entity @a[team=alive,scores={mob=18}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob18=1..}] run scoreboard players remove @s mob18 1
execute as @a[team=alive,scores={mob19=1..}] unless entity @s[scores={mob=19}] run scoreboard players remove @a[scores={mob=19,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob19=1..}] unless entity @s[scores={mob=19}] run scoreboard players set @a[scores={mob=19,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob19=1..}] unless entity @s[scores={mob=19}] run execute if entity @a[team=alive,scores={mob=19}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob19=1..}] run scoreboard players remove @s mob19 1
execute as @a[team=alive,scores={mob20=1..}] unless entity @s[scores={mob=20}] run scoreboard players remove @a[scores={mob=20,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob20=1..}] unless entity @s[scores={mob=20}] run scoreboard players set @a[scores={mob=20,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob20=1..}] unless entity @s[scores={mob=20}] run execute if entity @a[team=alive,scores={mob=20}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob20=1..}] run scoreboard players remove @s mob20 1
execute as @a[team=alive,scores={mob21=1..}] unless entity @s[scores={mob=21}] run scoreboard players remove @a[scores={mob=21,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob21=1..}] unless entity @s[scores={mob=21}] run scoreboard players set @a[scores={mob=21,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob21=1..}] unless entity @s[scores={mob=21}] run execute if entity @a[team=alive,scores={mob=21}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob21=1..}] run scoreboard players remove @s mob21 1
execute as @a[team=alive,scores={mob22=1..}] unless entity @s[scores={mob=22}] run scoreboard players remove @a[scores={mob=22,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob22=1..}] unless entity @s[scores={mob=22}] run scoreboard players set @a[scores={mob=22,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob22=1..}] unless entity @s[scores={mob=22}] run execute if entity @a[team=alive,scores={mob=22}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob22=1..}] run scoreboard players remove @s mob22 1
execute as @a[team=alive,scores={mob23=1..}] unless entity @s[scores={mob=23}] run scoreboard players remove @a[scores={mob=23,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob23=1..}] unless entity @s[scores={mob=23}] run scoreboard players set @a[scores={mob=23,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob23=1..}] unless entity @s[scores={mob=23}] run execute if entity @a[team=alive,scores={mob=23}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob23=1..}] run scoreboard players remove @s mob23 1
execute as @a[team=alive,scores={mob24=1..}] unless entity @s[scores={mob=24}] run scoreboard players remove @a[scores={mob=24,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob24=1..}] unless entity @s[scores={mob=24}] run scoreboard players set @a[scores={mob=24,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob24=1..}] unless entity @s[scores={mob=24}] run execute if entity @a[team=alive,scores={mob=24}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob24=1..}] run scoreboard players remove @s mob24 1
execute as @a[team=alive,scores={mob25=1..}] unless entity @s[scores={mob=25}] run scoreboard players remove @a[scores={mob=25,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob25=1..}] unless entity @s[scores={mob=25}] run scoreboard players set @a[scores={mob=25,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob25=1..}] unless entity @s[scores={mob=25}] run execute if entity @a[team=alive,scores={mob=25}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob25=1..}] run scoreboard players remove @s mob25 1
execute as @a[team=alive,scores={mob26=1..}] unless entity @s[scores={mob=26}] run scoreboard players remove @a[scores={mob=26,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob26=1..}] unless entity @s[scores={mob=26}] run scoreboard players set @a[scores={mob=26,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob26=1..}] unless entity @s[scores={mob=26}] run execute if entity @a[team=alive,scores={mob=26}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob26=1..}] run scoreboard players remove @s mob26 1
execute as @a[team=alive,scores={mob27=1..}] unless entity @s[scores={mob=27}] run scoreboard players remove @a[scores={mob=27,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob27=1..}] unless entity @s[scores={mob=27}] run scoreboard players set @a[scores={mob=27,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob27=1..}] unless entity @s[scores={mob=27}] run execute if entity @a[team=alive,scores={mob=27}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob27=1..}] run scoreboard players remove @s mob27 1
execute as @a[team=alive,scores={mob28=1..}] unless entity @s[scores={mob=28}] run scoreboard players remove @a[scores={mob=28,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob28=1..}] unless entity @s[scores={mob=28}] run scoreboard players set @a[scores={mob=28,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob28=1..}] unless entity @s[scores={mob=28}] run execute if entity @a[team=alive,scores={mob=28}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob28=1..}] run scoreboard players remove @s mob28 1
execute as @a[team=alive,scores={mob29=1..}] unless entity @s[scores={mob=29}] run scoreboard players remove @a[scores={mob=29,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob29=1..}] unless entity @s[scores={mob=29}] run scoreboard players set @a[scores={mob=29,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob29=1..}] unless entity @s[scores={mob=29}] run execute if entity @a[team=alive,scores={mob=29}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob29=1..}] run scoreboard players remove @s mob29 1
execute as @a[team=alive,scores={mob30=1..}] unless entity @s[scores={mob=30}] run scoreboard players remove @a[scores={mob=30,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob30=1..}] unless entity @s[scores={mob=30}] run scoreboard players set @a[scores={mob=30,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob30=1..}] unless entity @s[scores={mob=30}] run execute if entity @a[team=alive,scores={mob=30}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob30=1..}] run scoreboard players remove @s mob30 1
execute as @a[team=alive,scores={mob31=1..}] unless entity @s[scores={mob=31}] run scoreboard players remove @a[scores={mob=31,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob31=1..}] unless entity @s[scores={mob=31}] run scoreboard players set @a[scores={mob=31,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob31=1..}] unless entity @s[scores={mob=31}] run execute if entity @a[team=alive,scores={mob=31}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob31=1..}] run scoreboard players remove @s mob31 1
execute as @a[team=alive,scores={mob32=1..}] unless entity @s[scores={mob=32}] run scoreboard players remove @a[scores={mob=32,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob32=1..}] unless entity @s[scores={mob=32}] run scoreboard players set @a[scores={mob=32,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob32=1..}] unless entity @s[scores={mob=32}] run execute if entity @a[team=alive,scores={mob=32}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob32=1..}] run scoreboard players remove @s mob32 1
execute as @a[team=alive,scores={mob33=1..}] unless entity @s[scores={mob=33}] run scoreboard players remove @a[scores={mob=33,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob33=1..}] unless entity @s[scores={mob=33}] run scoreboard players set @a[scores={mob=33,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob33=1..}] unless entity @s[scores={mob=33}] run execute if entity @a[team=alive,scores={mob=33}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob33=1..}] run scoreboard players remove @s mob33 1
execute as @a[team=alive,scores={mob34=1..}] unless entity @s[scores={mob=34}] run scoreboard players remove @a[scores={mob=34,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob34=1..}] unless entity @s[scores={mob=34}] run scoreboard players set @a[scores={mob=34,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob34=1..}] unless entity @s[scores={mob=34}] run execute if entity @a[team=alive,scores={mob=34}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob34=1..}] run scoreboard players remove @s mob34 1
execute as @a[team=alive,scores={mob35=1..}] unless entity @s[scores={mob=35}] run scoreboard players remove @a[scores={mob=35,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob35=1..}] unless entity @s[scores={mob=35}] run scoreboard players set @a[scores={mob=35,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob35=1..}] unless entity @s[scores={mob=35}] run execute if entity @a[team=alive,scores={mob=35}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob35=1..}] run scoreboard players remove @s mob35 1
execute as @a[team=alive,scores={mob36=1..}] unless entity @s[scores={mob=36}] run scoreboard players remove @a[scores={mob=36,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob36=1..}] unless entity @s[scores={mob=36}] run scoreboard players set @a[scores={mob=36,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob36=1..}] unless entity @s[scores={mob=36}] run execute if entity @a[team=alive,scores={mob=36}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob36=1..}] run scoreboard players remove @s mob36 1
execute as @a[team=alive,scores={mob37=1..}] unless entity @s[scores={mob=37}] run scoreboard players remove @a[scores={mob=37,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob37=1..}] unless entity @s[scores={mob=37}] run scoreboard players set @a[scores={mob=37,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob37=1..}] unless entity @s[scores={mob=37}] run execute if entity @a[team=alive,scores={mob=37}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob37=1..}] run scoreboard players remove @s mob37 1
execute as @a[team=alive,scores={mob38=1..}] unless entity @s[scores={mob=38}] run scoreboard players remove @a[scores={mob=38,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob38=1..}] unless entity @s[scores={mob=38}] run scoreboard players set @a[scores={mob=38,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob38=1..}] unless entity @s[scores={mob=38}] run execute if entity @a[team=alive,scores={mob=38}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob38=1..}] run scoreboard players remove @s mob38 1
execute as @a[team=alive,scores={mob39=1..}] unless entity @s[scores={mob=39}] run scoreboard players remove @a[scores={mob=39,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob39=1..}] unless entity @s[scores={mob=39}] run scoreboard players set @a[scores={mob=39,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob39=1..}] unless entity @s[scores={mob=39}] run execute if entity @a[team=alive,scores={mob=39}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob39=1..}] run scoreboard players remove @s mob39 1
execute as @a[team=alive,scores={mob40=1..}] unless entity @s[scores={mob=40}] run scoreboard players remove @a[scores={mob=40,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob40=1..}] unless entity @s[scores={mob=40}] run scoreboard players set @a[scores={mob=40,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob40=1..}] unless entity @s[scores={mob=40}] run execute if entity @a[team=alive,scores={mob=40}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob40=1..}] run scoreboard players remove @s mob40 1
execute as @a[team=alive,scores={mob41=1..}] unless entity @s[scores={mob=41}] run scoreboard players remove @a[scores={mob=41,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob41=1..}] unless entity @s[scores={mob=41}] run scoreboard players set @a[scores={mob=41,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob41=1..}] unless entity @s[scores={mob=41}] run execute if entity @a[team=alive,scores={mob=41}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob41=1..}] run scoreboard players remove @s mob41 1
execute as @a[team=alive,scores={mob42=1..}] unless entity @s[scores={mob=42}] run scoreboard players remove @a[scores={mob=42,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob42=1..}] unless entity @s[scores={mob=42}] run scoreboard players set @a[scores={mob=42,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob42=1..}] unless entity @s[scores={mob=42}] run execute if entity @a[team=alive,scores={mob=42}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob42=1..}] run scoreboard players remove @s mob42 1
execute as @a[team=alive,scores={mob43=1..}] unless entity @s[scores={mob=43}] run scoreboard players remove @a[scores={mob=43,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob43=1..}] unless entity @s[scores={mob=43}] run scoreboard players set @a[scores={mob=43,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob43=1..}] unless entity @s[scores={mob=43}] run execute if entity @a[team=alive,scores={mob=43}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob43=1..}] run scoreboard players remove @s mob43 1
execute as @a[team=alive,scores={mob44=1..}] unless entity @s[scores={mob=44}] run scoreboard players remove @a[scores={mob=44,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob44=1..}] unless entity @s[scores={mob=44}] run scoreboard players set @a[scores={mob=44,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob44=1..}] unless entity @s[scores={mob=44}] run execute if entity @a[team=alive,scores={mob=44}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob44=1..}] run scoreboard players remove @s mob44 1
execute as @a[team=alive,scores={mob45=1..}] unless entity @s[scores={mob=45}] run scoreboard players remove @a[scores={mob=45,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob45=1..}] unless entity @s[scores={mob=45}] run scoreboard players set @a[scores={mob=45,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob45=1..}] unless entity @s[scores={mob=45}] run execute if entity @a[team=alive,scores={mob=45}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob45=1..}] run scoreboard players remove @s mob45 1
execute as @a[team=alive,scores={mob46=1..}] unless entity @s[scores={mob=46}] run scoreboard players remove @a[scores={mob=46,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob46=1..}] unless entity @s[scores={mob=46}] run scoreboard players set @a[scores={mob=46,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob46=1..}] unless entity @s[scores={mob=46}] run execute if entity @a[team=alive,scores={mob=46}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob46=1..}] run scoreboard players remove @s mob46 1
execute as @a[team=alive,scores={mob47=1..}] unless entity @s[scores={mob=47}] run scoreboard players remove @a[scores={mob=47,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob47=1..}] unless entity @s[scores={mob=47}] run scoreboard players set @a[scores={mob=47,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob47=1..}] unless entity @s[scores={mob=47}] run execute if entity @a[team=alive,scores={mob=47}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob47=1..}] run scoreboard players remove @s mob47 1
execute as @a[team=alive,scores={mob48=1..}] unless entity @s[scores={mob=48}] run scoreboard players remove @a[scores={mob=48,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob48=1..}] unless entity @s[scores={mob=48}] run scoreboard players set @a[scores={mob=48,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob48=1..}] unless entity @s[scores={mob=48}] run execute if entity @a[team=alive,scores={mob=48}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob48=1..}] run scoreboard players remove @s mob48 1
execute as @a[team=alive,scores={mob49=1..}] unless entity @s[scores={mob=49}] run scoreboard players remove @a[scores={mob=49,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob49=1..}] unless entity @s[scores={mob=49}] run scoreboard players set @a[scores={mob=49,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob49=1..}] unless entity @s[scores={mob=49}] run execute if entity @a[team=alive,scores={mob=49}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob49=1..}] run scoreboard players remove @s mob49 1
execute as @a[team=alive,scores={mob50=1..}] unless entity @s[scores={mob=50}] run scoreboard players remove @a[scores={mob=50,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob50=1..}] unless entity @s[scores={mob=50}] run scoreboard players set @a[scores={mob=50,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob50=1..}] unless entity @s[scores={mob=50}] run execute if entity @a[team=alive,scores={mob=50}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob50=1..}] run scoreboard players remove @s mob50 1
execute as @a[team=alive,scores={mob51=1..}] unless entity @s[scores={mob=51}] run scoreboard players remove @a[scores={mob=51,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob51=1..}] unless entity @s[scores={mob=51}] run scoreboard players set @a[scores={mob=51,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob51=1..}] unless entity @s[scores={mob=51}] run execute if entity @a[team=alive,scores={mob=51}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob51=1..}] run scoreboard players remove @s mob51 1
execute as @a[team=alive,scores={mob52=1..}] unless entity @s[scores={mob=52}] run scoreboard players remove @a[scores={mob=52,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob52=1..}] unless entity @s[scores={mob=52}] run scoreboard players set @a[scores={mob=52,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob52=1..}] unless entity @s[scores={mob=52}] run execute if entity @a[team=alive,scores={mob=52}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob52=1..}] run scoreboard players remove @s mob52 1
execute as @a[team=alive,scores={mob53=1..}] unless entity @s[scores={mob=53}] run scoreboard players remove @a[scores={mob=53,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob53=1..}] unless entity @s[scores={mob=53}] run scoreboard players set @a[scores={mob=53,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob53=1..}] unless entity @s[scores={mob=53}] run execute if entity @a[team=alive,scores={mob=53}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob53=1..}] run scoreboard players remove @s mob53 1
execute as @a[team=alive,scores={mob54=1..}] unless entity @s[scores={mob=54}] run scoreboard players remove @a[scores={mob=54,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob54=1..}] unless entity @s[scores={mob=54}] run scoreboard players set @a[scores={mob=54,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob54=1..}] unless entity @s[scores={mob=54}] run execute if entity @a[team=alive,scores={mob=54}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob54=1..}] run scoreboard players remove @s mob54 1
execute as @a[team=alive,scores={mob55=1..}] unless entity @s[scores={mob=55}] run scoreboard players remove @a[scores={mob=55,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob55=1..}] unless entity @s[scores={mob=55}] run scoreboard players set @a[scores={mob=55,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob55=1..}] unless entity @s[scores={mob=55}] run execute if entity @a[team=alive,scores={mob=55}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob55=1..}] run scoreboard players remove @s mob55 1
execute as @a[team=alive,scores={mob56=1..}] unless entity @s[scores={mob=56}] run scoreboard players remove @a[scores={mob=56,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob56=1..}] unless entity @s[scores={mob=56}] run scoreboard players set @a[scores={mob=56,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob56=1..}] unless entity @s[scores={mob=56}] run execute if entity @a[team=alive,scores={mob=56}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob56=1..}] run scoreboard players remove @s mob56 1
execute as @a[team=alive,scores={mob57=1..}] unless entity @s[scores={mob=57}] run scoreboard players remove @a[scores={mob=57,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob57=1..}] unless entity @s[scores={mob=57}] run scoreboard players set @a[scores={mob=57,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob57=1..}] unless entity @s[scores={mob=57}] run execute if entity @a[team=alive,scores={mob=57}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob57=1..}] run scoreboard players remove @s mob57 1
execute as @a[team=alive,scores={mob58=1..}] unless entity @s[scores={mob=58}] run scoreboard players remove @a[scores={mob=58,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob58=1..}] unless entity @s[scores={mob=58}] run scoreboard players set @a[scores={mob=58,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob58=1..}] unless entity @s[scores={mob=58}] run execute if entity @a[team=alive,scores={mob=58}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob58=1..}] run scoreboard players remove @s mob58 1
execute as @a[team=alive,scores={mob59=1..}] unless entity @s[scores={mob=59}] run scoreboard players remove @a[scores={mob=59,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob59=1..}] unless entity @s[scores={mob=59}] run scoreboard players set @a[scores={mob=59,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob59=1..}] unless entity @s[scores={mob=59}] run execute if entity @a[team=alive,scores={mob=59}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob59=1..}] run scoreboard players remove @s mob59 1
execute as @a[team=alive,scores={mob60=1..}] unless entity @s[scores={mob=60}] run scoreboard players remove @a[scores={mob=60,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob60=1..}] unless entity @s[scores={mob=60}] run scoreboard players set @a[scores={mob=60,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob60=1..}] unless entity @s[scores={mob=60}] run execute if entity @a[team=alive,scores={mob=60}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob60=1..}] run scoreboard players remove @s mob60 1
execute as @a[team=alive,scores={mob61=1..}] unless entity @s[scores={mob=61}] run scoreboard players remove @a[scores={mob=61,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob61=1..}] unless entity @s[scores={mob=61}] run scoreboard players set @a[scores={mob=61,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob61=1..}] unless entity @s[scores={mob=61}] run execute if entity @a[team=alive,scores={mob=61}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob61=1..}] run scoreboard players remove @s mob61 1
execute as @a[team=alive,scores={mob62=1..}] unless entity @s[scores={mob=62}] run scoreboard players remove @a[scores={mob=62,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob62=1..}] unless entity @s[scores={mob=62}] run scoreboard players set @a[scores={mob=62,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob62=1..}] unless entity @s[scores={mob=62}] run execute if entity @a[team=alive,scores={mob=62}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob62=1..}] run scoreboard players remove @s mob62 1
execute as @a[team=alive,scores={mob63=1..}] unless entity @s[scores={mob=63}] run scoreboard players remove @a[scores={mob=63,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob63=1..}] unless entity @s[scores={mob=63}] run scoreboard players set @a[scores={mob=63,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob63=1..}] unless entity @s[scores={mob=63}] run execute if entity @a[team=alive,scores={mob=63}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob63=1..}] run scoreboard players remove @s mob63 1
execute as @a[team=alive,scores={mob64=1..}] unless entity @s[scores={mob=64}] run scoreboard players remove @a[scores={mob=64,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob64=1..}] unless entity @s[scores={mob=64}] run scoreboard players set @a[scores={mob=64,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob64=1..}] unless entity @s[scores={mob=64}] run execute if entity @a[team=alive,scores={mob=64}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob64=1..}] run scoreboard players remove @s mob64 1
execute as @a[team=alive,scores={mob65=1..}] unless entity @s[scores={mob=65}] run scoreboard players remove @a[scores={mob=65,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob65=1..}] unless entity @s[scores={mob=65}] run scoreboard players set @a[scores={mob=65,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob65=1..}] unless entity @s[scores={mob=65}] run execute if entity @a[team=alive,scores={mob=65}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob65=1..}] run scoreboard players remove @s mob65 1
execute as @a[team=alive,scores={mob66=1..}] unless entity @s[scores={mob=66}] run scoreboard players remove @a[scores={mob=66,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob66=1..}] unless entity @s[scores={mob=66}] run scoreboard players set @a[scores={mob=66,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob66=1..}] unless entity @s[scores={mob=66}] run execute if entity @a[team=alive,scores={mob=66}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob66=1..}] run scoreboard players remove @s mob66 1
execute as @a[team=alive,scores={mob67=1..}] unless entity @s[scores={mob=67}] run scoreboard players remove @a[scores={mob=67,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob67=1..}] unless entity @s[scores={mob=67}] run scoreboard players set @a[scores={mob=67,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob67=1..}] unless entity @s[scores={mob=67}] run execute if entity @a[team=alive,scores={mob=67}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob67=1..}] run scoreboard players remove @s mob67 1
execute as @a[team=alive,scores={mob68=1..}] unless entity @s[scores={mob=68}] run scoreboard players remove @a[scores={mob=68,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob68=1..}] unless entity @s[scores={mob=68}] run scoreboard players set @a[scores={mob=68,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob68=1..}] unless entity @s[scores={mob=68}] run execute if entity @a[team=alive,scores={mob=68}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob68=1..}] run scoreboard players remove @s mob68 1
execute as @a[team=alive,scores={mob69=1..}] unless entity @s[scores={mob=69}] run scoreboard players remove @a[scores={mob=69,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob69=1..}] unless entity @s[scores={mob=69}] run scoreboard players set @a[scores={mob=69,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob69=1..}] unless entity @s[scores={mob=69}] run execute if entity @a[team=alive,scores={mob=69}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob69=1..}] run scoreboard players remove @s mob69 1
execute as @a[team=alive,scores={mob70=1..}] unless entity @s[scores={mob=70}] run scoreboard players remove @a[scores={mob=70,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob70=1..}] unless entity @s[scores={mob=70}] run scoreboard players set @a[scores={mob=70,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob70=1..}] unless entity @s[scores={mob=70}] run execute if entity @a[team=alive,scores={mob=70}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob70=1..}] run scoreboard players remove @s mob70 1
execute as @a[team=alive,scores={mob71=1..}] unless entity @s[scores={mob=71}] run scoreboard players remove @a[scores={mob=71,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob71=1..}] unless entity @s[scores={mob=71}] run scoreboard players set @a[scores={mob=71,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob71=1..}] unless entity @s[scores={mob=71}] run execute if entity @a[team=alive,scores={mob=71}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob71=1..}] run scoreboard players remove @s mob71 1
execute as @a[team=alive,scores={mob72=1..}] unless entity @s[scores={mob=72}] run scoreboard players remove @a[scores={mob=72,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob72=1..}] unless entity @s[scores={mob=72}] run scoreboard players set @a[scores={mob=72,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob72=1..}] unless entity @s[scores={mob=72}] run execute if entity @a[team=alive,scores={mob=72}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob72=1..}] run scoreboard players remove @s mob72 1
execute as @a[team=alive,scores={mob73=1..}] unless entity @s[scores={mob=73}] run scoreboard players remove @a[scores={mob=73,lifes=1..}] lifes 1
execute as @a[team=alive,scores={mob73=1..}] unless entity @s[scores={mob=73}] run scoreboard players set @a[scores={mob=73,lifes=1..}] hurt 1
execute as @a[team=alive,scores={mob73=1..}] unless entity @s[scores={mob=73}] run execute if entity @a[team=alive,scores={mob=73}] run scoreboard players set @s find 1
execute as @a[team=alive,scores={mob73=1..}] run scoreboard players remove @s mob73 1
# Visual and sound effects
# Hurt timer
scoreboard players set @a[scores={hurt=1}] hurttimer 50
scoreboard players set @a[scores={hurt=1}] hurt 2
scoreboard players remove @a[scores={hurt=2,hurttimer=1..}] hurttimer 1
scoreboard players set @a[scores={hurt=2,hurttimer=0}] hurt 0
# Find timer
scoreboard players set @a[scores={find=1}] findtimer 50
scoreboard players set @a[scores={find=1}] find 2
scoreboard players remove @a[scores={find=2,findtimer=1..}] findtimer 1
scoreboard players set @a[scores={find=2,findtimer=0}] find 0
# Hurt timer sounds
execute as @a[scores={hurt=2,hurttimer=49}] at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.5
execute as @a[scores={hurt=2,hurttimer=46}] at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.6
execute as @a[scores={hurt=2,hurttimer=43}] at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.5
execute as @a[scores={hurt=2,hurttimer=40}] at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 0.6
# Find timer sounds
execute as @a[scores={find=2,findtimer=49}] at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1.5
execute as @a[scores={find=2,findtimer=46}] at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 2
execute as @a[scores={find=2,findtimer=43}] at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1.5
execute as @a[scores={find=2,findtimer=40}] at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 2

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Next reveal
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,timer=0}] run execute unless entity @e[type=minecraft:armor_stand,name="moderator",tag=reveal1,tag=reveal2,tag=reveal3,tag=reveal4,tag=reveal5,tag=reveal6,tag=reveal7,tag=reveal8,tag=reveal9,tag=reveal10,tag=reveal11,tag=reveal12,tag=reveal13,tag=reveal14,tag=reveal15,tag=reveal16,tag=reveal17,tag=reveal18,tag=reveal19,tag=reveal20,tag=reveal21,tag=reveal22,tag=reveal23,tag=reveal24,tag=reveal25,tag=reveal26,tag=reveal27,tag=reveal28,tag=reveal29,tag=reveal30,tag=reveal31,tag=reveal32,tag=reveal33,tag=reveal34,tag=reveal35,tag=reveal36,tag=reveal37,tag=reveal38,tag=reveal39,tag=reveal40,tag=reveal41,tag=reveal42,tag=reveal43,tag=reveal44,tag=reveal45,tag=reveal46,tag=reveal47,tag=reveal48,tag=reveal49,tag=reveal50,tag=reveal51,tag=reveal52,tag=reveal53,tag=reveal54,tag=reveal55,tag=reveal56,tag=reveal57,tag=reveal58,tag=reveal59,tag=reveal60,tag=reveal61,tag=reveal62,tag=reveal63,tag=reveal64,tag=reveal65,tag=reveal66,tag=reveal67,tag=reveal68] run function wtm:reveal

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Elimination
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=125}] run title @s title [{"text":"Eliminated ","color":"gray","bold":true},{"text":"x","color":"dark_red","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=114}] run title @s times 0 105 20
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=110}] run title @s title [{"text":"E","color":"gold","bold":true},{"text":"liminated ","color":"gray","bold":true},{"text":"x","color":"dark_red","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=106}] run title @s title [{"text":"E","color":"gray","bold":true},{"text":"l","color":"gold","bold":true},{"text":"iminated ","color":"gray","bold":true},{"text":"x","color":"dark_red","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=102}] run title @s title [{"text":"El","color":"gray","bold":true},{"text":"i","color":"gold","bold":true},{"text":"minated ","color":"gray","bold":true},{"text":"x","color":"dark_red","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=98}] run title @s title [{"text":"Eli","color":"gray","bold":true},{"text":"m","color":"gold","bold":true},{"text":"inated ","color":"gray","bold":true},{"text":"x","color":"dark_red","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=94}] run title @s title [{"text":"Elim","color":"gray","bold":true},{"text":"i","color":"gold","bold":true},{"text":"nated ","color":"gray","bold":true},{"text":"x","color":"dark_red","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=90}] run title @s title [{"text":"Elimi","color":"gray","bold":true},{"text":"n","color":"gold","bold":true},{"text":"ated ","color":"gray","bold":true},{"text":"x","color":"dark_red","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=86}] run title @s title [{"text":"Elimin","color":"gray","bold":true},{"text":"a","color":"gold","bold":true},{"text":"ted ","color":"gray","bold":true},{"text":"x","color":"dark_red","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=82}] run title @s title [{"text":"Elimina","color":"gray","bold":true},{"text":"t","color":"gold","bold":true},{"text":"ed ","color":"gray","bold":true},{"text":"x","color":"dark_red","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=78}] run title @s title [{"text":"Eliminat","color":"gray","bold":true},{"text":"e","color":"gold","bold":true},{"text":"d ","color":"gray","bold":true},{"text":"x","color":"dark_red","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=74}] run title @s title [{"text":"Eliminate","color":"gray","bold":true},{"text":"d ","color":"gold","bold":true},{"text":"x","color":"dark_red","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=70}] run title @s title [{"text":"Eliminated ","color":"gold","bold":true},{"text":"x","color":"dark_red","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=61}] run title @s times 0 40 20
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=61}] run title @s title [{"text":"Eliminated ","color":"gray","bold":true},{"text":"x","color":"dark_red","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=1..125}] run scoreboard players remove @s elimtimer 1

execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=alive,scores={lifes=..0}] at @s run function wtm:elimination
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] as @a[team=eliminated,scores={elimtimer=125}] run title @s subtitle [{"text":"Last kill delivered by ","color":"red","bold":false},{"selector":"@e[team=alive,tag=lastkill]","color":"gray","bold":false}]


#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Player count retesting
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] playercount if entity @a[team=alive]
# Playercount > Forcealivecount
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2},limit=1] playercount > @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2},limit=1] forcealivecount run scoreboard players operation @e[type=minecraft:armor_stand,name="moderator"] forcealivecount = @e[type=minecraft:armor_stand,name="moderator"] playercount
# Gamephase 3 -> Gamephase 2
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rwt=1}] run kill @e[type=minecraft:armor_stand,name="gp3helper"]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] run gamemode survival @a[team=alive]
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3,s_rwt=1},limit=1] playercount = @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3,s_rwt=1},limit=1] forcealivecount run effect give @a[team=alive] minecraft:resistance 1 100 true
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3},limit=1] playercount = @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] rejointimer 0
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3},limit=1] playercount = @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] gamephase 2
# Playercount < Forcealivecount
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=0},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=0},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] rejointimer 0
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=1},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=1},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] rejointimer 1200
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=2},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=2},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] rejointimer 2400
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=3},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=3},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] rejointimer 3600
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=4},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=4},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] rejointimer 4800
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=5},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=5},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] rejointimer 6000
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=6},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=6},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] rejointimer 1
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] rejointimer2 0
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rwt=1,s_rejointime=1..},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rwt=1,s_rejointime=1..},limit=1] forcealivecount run execute as @a[team=alive] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:'"gp3helper"',NoGravity:1b,Invulnerable:1b,Invisible:1b,Marker:1b}
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rwt=1},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2},limit=1] forcealivecount run gamemode spectator @a[team=alive]
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=1..5},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=1..5},limit=1] forcealivecount run execute as @e[type=minecraft:armor_stand,name="moderator"] run tellraw @a [{"text":"Some player has just left the ongoing game. This player has ","color":"red","bold":false},{"score":{"objective":"s_rejointime","name":"@s"},"color":"red","bold":false},{"text":" minutes to rejoin this game! ","color":"red","bold":false},{"text":"[Skip]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players operation @e[type=minecraft:armor_stand,name=moderator] forcealivecount = @e[type=minecraft:armor_stand,name=moderator] playercount"},"hoverEvent":{"action":"show_text","contents":[{"text":"Skip rejoin time","italic":false,"color":"yellow"}]}}]
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=6},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_rejointime=6},limit=1] forcealivecount run execute as @e[type=minecraft:armor_stand,name="moderator"] run tellraw @a [{"text":"Some player has just left the ongoing game. This player has UNLIMITED time to rejoin! ","color":"red","bold":false},{"text":"[Skip]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players operation @e[type=minecraft:armor_stand,name=moderator] forcealivecount = @e[type=minecraft:armor_stand,name=moderator] playercount"},"hoverEvent":{"action":"show_text","contents":[{"text":"Skip rejoin time","italic":false,"color":"yellow"}]}}]
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] gamephase 3

execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3,s_rwt=1},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3,s_rwt=1},limit=1] forcealivecount run execute as @a[team=alive] at @s run tp @s @e[type=minecraft:armor_stand,name="gp3helper",limit=1,sort=nearest,distance=..10]
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3,rejointimer=1..5},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3,rejointimer=1..},limit=1] forcealivecount run scoreboard players remove @e[type=minecraft:armor_stand,name="moderator",scores={s_rejointime=0..5}] rejointimer 1
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3},limit=1] forcealivecount run scoreboard players add @e[type=minecraft:armor_stand,name="moderator"] rejointimer2 1
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator",scores={rejointimer2=61..}] rejointimer2 0
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3,rejointimer2=0..20},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3,rejointimer2=0..20},limit=1] forcealivecount run title @a actionbar [{"text":"Waiting for player rejoin.","color":"red","bold":false}]
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3,rejointimer2=21..40},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3,rejointimer2=21..40},limit=1] forcealivecount run title @a actionbar [{"text":"Waiting for player rejoin..","color":"red","bold":false}]
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3,rejointimer2=41..60},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3,rejointimer2=41..60},limit=1] forcealivecount run title @a actionbar [{"text":"Waiting for player rejoin...","color":"red","bold":false}]
# Rejointimer 0
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3,rejointimer=0},limit=1] playercount < @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=3,rejointimer=0},limit=1] forcealivecount run scoreboard players operation @e[type=minecraft:armor_stand,name="moderator"] forcealivecount = @e[type=minecraft:armor_stand,name="moderator"] playercount

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Game end
# Player count retesting
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] playercount if entity @a[team=alive]
# Test for SOLO
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2},limit=1] playercount = @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator",scores={playercount=1,s_teammode=1}] timer 200
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2},limit=1] playercount = @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator",scores={playercount=1,s_teammode=1}] gamephase 4
# Test for DUOS
scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] aliveteams 0
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,gamephase=2}] teamcount if entity @a[team=alive,scores={team=1}]
scoreboard players add @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=1..,gamephase=2}] aliveteams 1
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,gamephase=2}] teamcount if entity @a[team=alive,scores={team=2}]
scoreboard players add @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=1..,gamephase=2}] aliveteams 1
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,gamephase=2}] teamcount if entity @a[team=alive,scores={team=3}]
scoreboard players add @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=1..,gamephase=2}] aliveteams 1
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,gamephase=2}] teamcount if entity @a[team=alive,scores={team=4}]
scoreboard players add @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=1..,gamephase=2}] aliveteams 1
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,gamephase=2}] teamcount if entity @a[team=alive,scores={team=5}]
scoreboard players add @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=1..,gamephase=2}] aliveteams 1
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,gamephase=2}] teamcount if entity @a[team=alive,scores={team=6}]
scoreboard players add @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=1..,gamephase=2}] aliveteams 1
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,gamephase=2}] teamcount if entity @a[team=alive,scores={team=7}]
scoreboard players add @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=1..,gamephase=2}] aliveteams 1
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,gamephase=2}] teamcount if entity @a[team=alive,scores={team=8}]
scoreboard players add @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=1..,gamephase=2}] aliveteams 1
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,gamephase=2}] teamcount if entity @a[team=alive,scores={team=9}]
scoreboard players add @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=1..,gamephase=2}] aliveteams 1
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,gamephase=2}] teamcount if entity @a[team=alive,scores={team=10}]
scoreboard players add @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=1..,gamephase=2}] aliveteams 1
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,gamephase=2}] teamcount if entity @a[team=alive,scores={team=11}]
scoreboard players add @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=1..,gamephase=2}] aliveteams 1
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,gamephase=2}] teamcount if entity @a[team=alive,scores={team=12}]
scoreboard players add @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=1..,gamephase=2}] aliveteams 1
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2},limit=1] playercount = @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator",scores={aliveteams=1,s_teammode=2}] timer 200
execute if score @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2},limit=1] playercount = @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2},limit=1] forcealivecount run scoreboard players set @e[type=minecraft:armor_stand,name="moderator",scores={aliveteams=1,s_teammode=2}] gamephase 4
# Actions
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run gamemode survival @a[team=alive]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run tp @a[team=eliminated] @a[team=alive,sort=random,limit=1,tag=captain]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run effect give @a resistance 10 100 true
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run effect give @a[team=alive] glowing 10 1 true
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run scoreboard objectives setdisplay sidebar wins
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] timer2 3

execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200,s_teammode=1}] run tellraw @a [{"selector":"@a[team=alive]","color":"gray","bold":true},{"text":" is the winner of the What's their mob game!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200,s_teammode=2}] run tellraw @a [{"selector":"@a[team=alive]","color":"gray","bold":true},{"text":" is/are the winner/s of the What's their mob game!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=1}] run tellraw @a [{"text":"Chicken","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=2}] run tellraw @a [{"text":"Cow","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=3}] run tellraw @a [{"text":"Mooshroom","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=4}] run tellraw @a [{"text":"Pig","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=5}] run tellraw @a [{"text":"Sheep","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=6}] run tellraw @a [{"text":"Squid","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=7}] run tellraw @a [{"text":"Villager","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=8}] run tellraw @a [{"text":"Wandering trader","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=9}] run tellraw @a [{"text":"Bat","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=10}] run tellraw @a [{"text":"Ocelot","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=11}] run tellraw @a [{"text":"Cat","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=12}] run tellraw @a [{"text":"Horse","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=13}] run tellraw @a [{"text":"Donkey","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=14}] run tellraw @a [{"text":"Mule","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=15}] run tellraw @a [{"text":"Strider","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=16}] run tellraw @a [{"text":"Fox","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=17}] run tellraw @a [{"text":"Rabbit","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=18}] run tellraw @a [{"text":"Parrot","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=19}] run tellraw @a [{"text":"Turtle","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=20}] run tellraw @a [{"text":"Cod","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=21}] run tellraw @a [{"text":"Salmon","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=22}] run tellraw @a [{"text":"Pufferfish","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=23}] run tellraw @a [{"text":"Tropical fish","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=24}] run tellraw @a [{"text":"Enderman","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=25}] run tellraw @a [{"text":"Piglin","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=26}] run tellraw @a [{"text":"Zombified piglin","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=27}] run tellraw @a [{"text":"Dolphin","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=28}] run tellraw @a [{"text":"Bee","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=29}] run tellraw @a [{"text":"Wolf","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=30}] run tellraw @a [{"text":"Spider","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=31}] run tellraw @a [{"text":"Cave spider","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=32}] run tellraw @a [{"text":"Polar bear","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=33}] run tellraw @a [{"text":"Llama","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=34}] run tellraw @a [{"text":"Trader llama","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=35}] run tellraw @a [{"text":"Iron golem","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=36}] run tellraw @a [{"text":"Panda","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=37}] run tellraw @a [{"text":"Snow golem","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=38}] run tellraw @a [{"text":"Blaze","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=39}] run tellraw @a [{"text":"Creeper","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=40}] run tellraw @a [{"text":"Ghast","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=41}] run tellraw @a [{"text":"Magma cube","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=42}] run tellraw @a [{"text":"Silverfish","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=43}] run tellraw @a [{"text":"Skeleton","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=44}] run tellraw @a [{"text":"Slime","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=45}] run tellraw @a [{"text":"Zombie","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=46}] run tellraw @a [{"text":"Zombie villager","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=47}] run tellraw @a [{"text":"Drowned","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=48}] run tellraw @a [{"text":"Wither skeleton","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=49}] run tellraw @a [{"text":"Witch","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=50}] run tellraw @a [{"text":"Vindicator","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=51}] run tellraw @a [{"text":"Evoker","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=52}] run tellraw @a [{"text":"Pillager","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=53}] run tellraw @a [{"text":"Ravager","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=54}] run tellraw @a [{"text":"Vex","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=55}] run tellraw @a [{"text":"Piglin brute","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=56}] run tellraw @a [{"text":"Hoglin","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=57}] run tellraw @a [{"text":"Zoglin","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=58}] run tellraw @a [{"text":"Endermite","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=59}] run tellraw @a [{"text":"Guardian","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=60}] run tellraw @a [{"text":"Elder guardian","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=61}] run tellraw @a [{"text":"Shulker","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=62}] run tellraw @a [{"text":"Husk","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=63}] run tellraw @a [{"text":"Stray","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=64}] run tellraw @a [{"text":"Ender dragon","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=65}] run tellraw @a [{"text":"Wither","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=66}] run tellraw @a [{"text":"Axolotl","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=67}] run tellraw @a [{"text":"Glow squid","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=68}] run tellraw @a [{"text":"Goat","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=69}] run tellraw @a [{"text":"Allay","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=70}] run tellraw @a [{"text":"Frog","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=71}] run tellraw @a [{"text":"Tadpole","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=72}] run tellraw @a [{"text":"Sniffer","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute if entity @a[team=alive,scores={mob=73}] run tellraw @a [{"text":"Camel","color":"gray","bold":true},{"text":" is the winning mob!","color":"gold","bold":true}]

execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=1}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2100988622,-532328774,-1418628645,-182068495],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTYzODQ2OWE1OTljZWVmNzIwNzUzNzYwMzI0OGE5YWIxMWZmNTkxZmQzNzhiZWE0NzM1YjM0NmE3ZmFlODkzIn19fQ=="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=2}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-559698266,-962900245,-1709699529,-1829095512],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2RmYTBhYzM3YmFiYTJhYTI5MGU0ZmFlZTQxOWE2MTNjZDYxMTdmYTU2OGU3MDlkOTAzNzQ3NTNjMDMyZGNiMCJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=3}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1825144796,981091908,-1434894899,-336322911],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmI1Mjg0MWYyZmQ1ODllMGJjODRjYmFiZjllMWMyN2NiNzBjYWM5OGY4ZDZiM2RkMDY1ZTU1YTRkY2I3MGQ3NyJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=4}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-505298204,517097277,-1109246265,408114073],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjIxNjY4ZWY3Y2I3OWRkOWMyMmNlM2QxZjNmNGNiNmUyNTU5ODkzYjZkZjRhNDY5NTE0ZTY2N2MxNmFhNCJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=5}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-98350811,-1648473201,-1522238352,-76846395],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjMxZjljY2M2YjNlMzJlY2YxM2I4YTExYWMyOWNkMzNkMThjOTVmYzczZGI4YTY2YzVkNjU3Y2NiOGJlNzAifX19"}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=6}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;307521972,-1457961559,-2055518770,-450152061],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDg3MDU2MjRkYWEyOTU2YWE0NTk1NmM4MWJhYjVmNGZkYjJjNzRhNTk2MDUxZTI0MTkyMDM5YWVhM2E4YjgifX19"}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=7}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1480608382,-1588769976,-1183003207,-1970401256],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDFiODMwZWI0MDgyYWNlYzgzNmJjODM1ZTQwYTExMjgyYmI1MTE5MzMxNWY5MTE4NDMzN2U4ZDM1NTU1ODMifX19"}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=8}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1808185366,1041911772,-2048527048,933168617],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWYxMzc5YTgyMjkwZDdhYmUxZWZhYWJiYzcwNzEwZmYyZWMwMmRkMzRhZGUzODZiYzAwYzkzMGM0NjFjZjkzMiJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=9}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-807732989,416238226,-1393365080,1651306674],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWU5OWRlZWY5MTlkYjY2YWMyYmQyOGQ2MzAyNzU2Y2NkNTdjN2Y4YjEyYjlkY2E4ZjQxYzNlMGEwNGFjMWNjIn19fQ=="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=10}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1716376722,1070416955,-1637790594,-1113698800],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTY1N2NkNWMyOTg5ZmY5NzU3MGZlYzRkZGNkYzY5MjZhNjhhMzM5MzI1MGMxYmUxZjBiMTE0YTFkYjEifX19"}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=11}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-262891590,1085230348,-1590312733,-829972881],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGVkM2RiYWUzZDNhZmJkMWZiNDJkN2Q3YzE2MjE5MjJmYWI1NmZhNGNhNTc0OTViYmNkNGFiOWI3YjI3ZDUifX19"}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=12}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1406765500,865946182,-1911991759,830393677],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzcyZDUyNDIxZDg0MTQ1NzdkM2Y2MjY2NDQwZjY4NDJiNzI3NjdjOWM0ZTMzNjdkYWVlNTE2NTcyYTk0ZDUifX19"}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=13}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;423734112,1766213251,-1262474536,871235589],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjE0NGJkYWQ2YmMxOGEzNzE2YjE5NmRjNGE0YmQ2OTUyNjVlY2NhYWRkMGQ5NDViZWI5NzY0NDNmODI2OTNiIn19fQ=="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=14}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-467997905,405622047,-1712157852,-1079024775],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDZkY2RhMjY1ZTU3ZTRmNTFiMTQ1YWFjYmY1YjU5YmRjNjA5OWZmZDNjY2UwYTY2MWIyYzAwNjVkODA5MzBkOCJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=15}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1228418290,1767981658,-1077355550,903373370],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTI0NWU0NzYwYWJmMTBmMjkwMDYyNjkxNGNmNDJmODA0NDBjZDUzMDk5YWU1NTI5NTM0ZjU5ODI0MDY3ZGFkNiJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=16}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;595207761,2108179834,-1427491052,-1128163678],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDg5NTRhNDJlNjllMDg4MWFlNmQyNGQ0MjgxNDU5YzE0NGEwZDVhOTY4YWVkMzVkNmQzZDczYTNjNjVkMjZhIn19fQ=="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=17}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1903850075,629096818,-1111859736,1349498588],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2QxMTY5YjI2OTRhNmFiYTgyNjM2MDk5MjM2NWJjZGE1YTEwYzg5YTNhYTJiNDhjNDM4NTMxZGQ4Njg1YzNhNyJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=18}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1775031928,-875412244,-2018474236,854311563],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWRmNGIzNDAxYTRkMDZhZDY2YWM4YjVjNGQxODk2MThhZTYxN2Y5YzE0MzA3MWM4YWMzOWE1NjNjZjRlNDIwOCJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=19}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;610214580,746343068,-2030395706,1280632058],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMGE0MDUwZTdhYWNjNDUzOTIwMjY1OGZkYzMzOWRkMTgyZDdlMzIyZjlmYmNjNGQ1Zjk5YjU3MThhIn19fQ=="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=20}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-690698428,112478858,-1132806736,1997255119],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzg5MmQ3ZGQ2YWFkZjM1Zjg2ZGEyN2ZiNjNkYTRlZGRhMjExZGY5NmQyODI5ZjY5MTQ2MmE0ZmIxY2FiMCJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=21}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;55886896,964250478,-1905940066,-1276475368],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGFlYjIxYTI1ZTQ2ODA2Y2U4NTM3ZmJkNjY2ODI4MWNmMTc2Y2VhZmU5NWFmOTBlOTRhNWZkODQ5MjQ4NzgifX19"}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=22}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-41704708,388844361,-1198208880,1537633749],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTcwOTAyOTk3MzJjNTFlZGFmNmM1ZGQ2YWUzZWRkNTk0MzNkYTM3YTc4NzhiOWY0YWY1NDI4ZDdlZDI1N2Y0YiJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=23}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-132883870,-1696183701,-2101532548,178925883],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDZkZDVlNmFkZGI1NmFjYmM2OTRlYTRiYTU5MjNiMWIyNTY4ODE3OGZlZmZhNzIyOTAyOTllMjUwNWM5NzI4MSJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=24}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1850552016,99109209,-1335040439,-653184183],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTZjMGIzNmQ1M2ZmZjY5YTQ5YzdkNmYzOTMyZjJiMGZlOTQ4ZTAzMjIyNmQ1ZTgwNDVlYzU4NDA4YTM2ZTk1MSJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=25}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;603261359,1475036898,-1545513462,-493402950],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTA4MWExMjM5ZmZmZTEzNWNiZmE0YTk4YTZhYTZjYzViMDc4N2FkMDc5MGY1NmExNmJmMDdmODYzNzQ2MDZjNSJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=26}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1123455074,-1705688075,-1169354462,-906907068],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTkzNTg0MmFmNzY5MzgwZjc4ZThiOGE4OGQxZWE2Y2EyODA3YzFlNTY5M2MyY2Y3OTc0NTY2MjA4MzNlOTM2ZiJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=27}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1954755219,920537056,-1923453081,-1715011912],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGU5Njg4Yjk1MGQ4ODBiNTViN2FhMmNmY2Q3NmU1YTBmYTk0YWFjNmQxNmY3OGU4MzNmNzQ0M2VhMjlmZWQzIn19fQ=="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=28}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1347566685,-1680848226,-1812695161,-1666522082],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWFhODhiYzNjNTMxMGM4NDBmNDgxN2ZlZWQ2NmU4YTg0ZWMyNjM2YmNhY2I1NzdjZDAwZjA3OTc4NTc5OGFmNCJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=29}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1432346887,-451130204,-1850366599,-1999698253],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjRkNzcyN2Y1MjM1NGQyNGE2NGJkNjYwMmEwY2U3MWE3YjQ4NGQwNTk2M2RhODNiNDcwMzYwZmFhOWNlYWI1ZiJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=30}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;924026232,198264679,-1687572293,1513739562],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzg3YTk2YThjMjNiODNiMzJhNzNkZjA1MWY2Yjg0YzJlZjI0ZDI1YmE0MTkwZGJlNzRmMTExMzg2MjliNWFlZiJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=31}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-641461519,1564101566,-1793803965,-125708785],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjA0ZDVmY2IyODlmZTY1YjY3ODY2ODJlMWM3MzZjM2Y3YjE2ZjM5ZDk0MGUzZDJmNDFjZjAwNDA3MDRjNjI4MiJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=32}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;854297185,1852198397,-2024901503,419435689],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2Q1ZDYwYTRkNzBlYzEzNmE2NTg1MDdjZTgyZTM0NDNjZGFhMzk1OGQ3ZmNhM2Q5Mzc2NTE3YzdkYjRlNjk1ZCJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=33}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1492472113,-1883682050,-2145799763,-1043345621],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzc3NmE3OGY5NjI0NGUzZGE3MzJmYWZmZDkzYTMzOTgzNGRiMjdiNjk1NWJmN2E5YjI0YWU5ODEyNWI3ZWQifX19"}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=34}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1453867496,843729284,-1474562730,-1483495862],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODQyNDc4MGIzYzVjNTM1MWNmNDlmYjViZjQxZmNiMjg5NDkxZGY2YzQzMDY4M2M4NGQ3ODQ2MTg4ZGI0Zjg0ZCJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=35}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-847629707,-1011593993,-2048760807,-2341734],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjJiY2FjZWViNDE2MmY0MDBkNDQ3NDMzMTU5MzJhYzgyMGQzMTE5YWM4OTg2YTAxNjFhNzI2MTYxY2NjOTNmYyJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=36}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1016042011,1117277363,-1382715027,567918687],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGYwMDg1ODkyNmNkOGNkZjNmMWNmNzFlMjEwY2RlNWRhZjg3MDgzMjA1NDdiZDZkZjU3OTU4NTljNjhkOWIzZiJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=37}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2123952133,-46841029,-1740743230,-742739724],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWZkZmQxZjc1MzhjMDQwMjU4YmU3YTkxNDQ2ZGE4OWVkODQ1Y2M1ZWY3MjhlYjVlNjkwNTQzMzc4ZmNmNCJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=38}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2095810738,2136949657,-1413910424,622570141],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjc4ZWYyZTRjZjJjNDFhMmQxNGJmZGU5Y2FmZjEwMjE5ZjViMWJmNWIzNWE0OWViNTFjNjQ2Nzg4MmNiNWYwIn19fQ=="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=39}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:creeper_head",Count:1b,tag:{}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=40}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2139150209,1687768723,-1467545047,-1967978209],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGI2YTcyMTM4ZDY5ZmJiZDJmZWEzZmEyNTFjYWJkODcxNTJlNGYxYzk3ZTVmOTg2YmY2ODU1NzFkYjNjYzAifX19"}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=41}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1767051932,1535462297,-1205513267,2057279270],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzg5NTdkNTAyM2M5MzdjNGM0MWFhMjQxMmQ0MzQxMGJkYTIzY2Y3OWE5ZjZhYjM2Yjc2ZmVmMmQ3YzQyOSJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=42}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;816106844,1465142712,-1990191102,712270461],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGE5MWRhYjgzOTFhZjVmZGE1NGFjZDJjMGIxOGZiZDgxOWI4NjVlMWE4ZjFkNjIzODEzZmE3NjFlOTI0NTQwIn19fQ=="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=43}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:skeleton_skull",Count:1b,tag:{}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=44}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2131429491,-546682343,-1681000759,251135175],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODk1YWVlYzZiODQyYWRhODY2OWY4NDZkNjViYzQ5NzYyNTk3ODI0YWI5NDRmMjJmNDViZjNiYmI5NDFhYmU2YyJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=45}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:zombie_head",Count:1b,tag:{}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=46}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-684646928,-1780986962,-2040836982,-735132460],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzQ1YzExZTAzMjcwMzU2NDljYTA2MDBlZjkzODkwMGUyNWZkMWUzODAxNzQyMmJjOTc0MGU0Y2RhMmNiYTg5MiJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=47}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1943150917,724453901,-1528537058,1492972198],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzg0ZGY3OWM0OTEwNGIxOThjZGFkNmQ5OWZkMGQwYmNmMTUzMWM5MmQ0YWI2MjY5ZTQwYjdkM2NiYmI4ZTk4YyJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=48}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:wither_skeleton_skull",Count:1b,tag:{}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=49}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2140320726,1591757494,-1347542522,-1185854877],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjBlMTNkMTg0NzRmYzk0ZWQ1NWFlYjcwNjk1NjZlNDY4N2Q3NzNkYWMxNmY0YzNmODcyMmZjOTViZjlmMmRmYSJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=50}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1705780283,128205205,-1982555327,1794311501],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFlZWQ5ZDhlZDE3NjllNzdlM2NmZTExZGMxNzk2NjhlZDBkYjFkZTZjZTI5ZjFjOGUwZDVmZTVlNjU3M2I2MCJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=51}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1695604743,2120698196,-1934226442,-2062254106],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjMwY2U3NzVlZGI2NWRiOGMyNzQxYmRmYWU4NGYzYzBkMDI4NWFiYTkzYWZhZGM3NDkwMGQ1NWRmZDk1MDRhNSJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=52}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;449435050,1190088049,-1334360732,942410307],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGFlZTZiYjM3Y2JmYzkyYjBkODZkYjVhZGE0NzkwYzY0ZmY0NDY4ZDY4Yjg0OTQyZmRlMDQ0MDVlOGVmNTMzMyJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=53}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-554165289,-2048571836,-1313675438,508804008],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWNiOWYxMzlmOTQ4OWQ4NmU0MTBhMDZkOGNiYzY3MGM4MDI4MTM3NTA4ZTNlNGJlZjYxMmZlMzJlZGQ2MDE5MyJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=54}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-130297919,34818391,-2003905566,-85519869],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWU3MzMwYzdkNWNkOGEwYTU1YWI5ZTk1MzIxNTM1YWM3YWUzMGZlODM3YzM3ZWE5ZTUzYmVhN2JhMmRlODZiIn19fQ=="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=55}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-985925803,1350451669,-1815615794,1647970142],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODFmYzc5NTdlNDYwMmIzMmRjMTM1MDE0MzgzZDkzZGViYTQzZGM0ODQzMzJiYzE5YzY3OTJiZTFhOTBmNzIwYSJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=56}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2120826304,-378911692,-1238340839,485405824],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWJiOWJjMGYwMWRiZDc2MmEwOGQ5ZTc3YzA4MDY5ZWQ3Yzk1MzY0YWEzMGNhMTA3MjIwODU2MWI3MzBlOGQ3NSJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=57}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1017211146,893928000,-1894613410,2050284576],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTY3ZTE4NjAyZTAzMDM1YWQ2ODk2N2NlMDkwMjM1ZDg5OTY2NjNmYjllYTQ3NTc4ZDNhN2ViYmM0MmE1Y2NmOSJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=58}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1356981155,-1011923515,-1813307092,709382968],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWJjN2I5ZDM2ZmI5MmI2YmYyOTJiZTczZDMyYzZjNWIwZWNjMjViNDQzMjNhNTQxZmFlMWYxZTY3ZTM5M2EzZSJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=59}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;781978215,-1833744055,-1679688975,588836488],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTMyYzI0NTI0YzgyYWIzYjNlNTdjMjA1MmM1MzNmMTNkZDhjMGJlYjhiZGQwNjM2OWJiMjU1NGRhODZjMTIzIn19fQ=="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=60}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2099301300,637488734,-1188482528,1503333],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTkyMDg5NjE4NDM1YTBlZjYzZTk1ZWU5NWE5MmI4MzA3M2Y4YzMzZmE3N2RjNTM2NTE5OWJhZDMzYjYyNTYifX19"}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=61}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1778823362,-434352489,-1592043985,1155190429],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTM3YTI5NGY2YjdiNGJhNDM3ZTVjYjM1ZmIyMGY0Njc5MmU3YWMwYTQ5MGE2NjEzMmE1NTcxMjRlYzVmOTk3YSJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=62}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;448664699,-361085172,-1904994610,-1880265546],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDY3NGM2M2M4ZGI1ZjRjYTYyOGQ2OWEzYjFmOGEzNmUyOWQ4ZmQ3NzVlMWE2YmRiNmNhYmI0YmU0ZGIxMjEifX19"}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=63}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1682742189,-1786035250,-1657857635,-2051121028],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzhkZGY3NmU1NTVkZDVjNGFhOGEwYTVmYzU4NDUyMGNkNjNkNDg5YzI1M2RlOTY5ZjdmMjJmODVhOWEyZDU2In19fQ=="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=64}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:dragon_head",Count:1b,tag:{}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=65}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;295450395,-367638583,-1384176717,-661368310],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2RmNzRlMzIzZWQ0MTQzNjk2NWY1YzU3ZGRmMjgxNWQ1MzMyZmU5OTllNjhmYmI5ZDZjZjVjOGJkNDEzOWYifX19"}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=66}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;997095318,-563722540,-2064800638,-366973875],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGViZjJiMTEzZjRhODEzNzBhMWNmOWQyNTA0ZTg3NTZiNjZkZWVmNzllOTQzMzE4N2RhNzc0Yjk2YzlmMzViYSJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=67}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-188971529,704594796,-1571695001,-2091444551],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2U5NGExYmIxY2IwMGFhYTE1M2E3NGRhZjRiMGVlYTIwYjg5NzQ1MjJmZTk5MDFlYjU1YWVmNDc4ZWJlZmYwZCJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=68}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-632048996,2024818863,-1996415687,1785189839],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDU3YTBkNTM4ZmEwOGE3YWZmZTMxMjkwMzQ2ODg2MTcyMGY5ZmEzNGU4NmQ0NGI4OWRjZWM1NjM5MjY1ZjAzIn19fQ=="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=69}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;115351623,-181647520,-2077434469,513339198],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmVlYTg0NWNjMGI1OGZmNzYzZGVjZmZlMTFjZDFjODQ1YzVkMDljM2IwNGZlODBiMDY2M2RhNWM3YzY5OWViMyJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=70}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1882942946,1317228021,-1805681443,-782860339],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjNjZTZmOTk5OGVkMmRhNzU3ZDFlNjM3MmYwNGVmYTIwZTU3ZGZjMTdjM2EwNjQ3ODY1N2JiZGY1MWMyZjJhMiJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=71}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2109355407,-1381285799,-1219740275,-1638011237],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTg3MDM1ZjUzNTIzMzRjMmNiYTZhYzRjNjVjMmI5MDU5NzM5ZDZkMGU4MzljMWRkOThkNzVkMmU3Nzk1Nzg0NyJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=72}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1383088259,-940030622,-1307834190,-16019236],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODdhZDkyMGE2NmUzOGNjMzQyNmE1YmZmMDg0NjY3ZTg3NzIxMTY5MTVlMjk4MDk4NTY3YzEzOWYyMjJlMmM0MiJ9fX0="}]}}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0..200,timer2=10}] run execute if entity @a[team=alive,scores={mob=73}] as @a[team=alive] at @s run summon minecraft:item ~ ~1.5 ~ {PickupDelay:32767,Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;621780053,-790216079,-2029030100,1148459574],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzRiOGEzMzNkZmE5MmU3ZTVhOTVhZDRhZTJkODRiMWJhZmEzM2RjMjhjMDU0OTI1Mjc3ZjYwZTc5ZGFmYzhjNCJ9fX0="}]}}}}}

execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute at @a[team=alive] run playsound minecraft:ui.toast.challenge_complete voice @a ~ ~ ~ 1 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;11250603,15435844],FadeColors:[I;11250603,4408131]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=190}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;3552822,15418436],FadeColors:[I;16777215,16084590]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=180}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;16777215,10742132],FadeColors:[I;11250603,33586]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=170}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;2368548,2765407],FadeColors:[I;16091610,16448250]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=160}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;10418167,12709616],FadeColors:[I;14679499,4473924]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=150}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;11250603,15435844],FadeColors:[I;11250603,4408131]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=140}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;3552822,15418436],FadeColors:[I;16777215,16084590]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=130}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;16777215,10742132],FadeColors:[I;11250603,33586]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=120}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;2368548,2765407],FadeColors:[I;16091610,16448250]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=110}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;10418167,12709616],FadeColors:[I;14679499,4473924]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=100}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;11250603,15435844],FadeColors:[I;11250603,4408131]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=90}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;3552822,15418436],FadeColors:[I;16777215,16084590]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=80}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;16777215,10742132],FadeColors:[I;11250603,33586]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=70}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;2368548,2765407],FadeColors:[I;16091610,16448250]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=60}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;10418167,12709616],FadeColors:[I;14679499,4473924]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=50}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;11250603,15435844],FadeColors:[I;11250603,4408131]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=40}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;3552822,15418436],FadeColors:[I;16777215,16084590]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=30}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;16777215,10742132],FadeColors:[I;11250603,33586]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=20}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;2368548,2765407],FadeColors:[I;16091610,16448250]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=10}] run execute at @a[team=alive] run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;10418167,12709616],FadeColors:[I;14679499,4473924]}]}}}}
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=200}] run team modify alive color gray
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=190}] run team modify alive color gold
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=180}] run team modify alive color gray
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=170}] run team modify alive color gold
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=160}] run team modify alive color gray
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=150}] run team modify alive color gold
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=140}] run team modify alive color gray
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=130}] run team modify alive color gold
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=120}] run team modify alive color gray
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=110}] run team modify alive color gold
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=100}] run team modify alive color gray
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=90}] run team modify alive color gold
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=80}] run team modify alive color gray
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=70}] run team modify alive color gold
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=60}] run team modify alive color gray
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=50}] run team modify alive color gold
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=40}] run team modify alive color gray
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=30}] run team modify alive color gold
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=20}] run team modify alive color gray
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=10}] run team modify alive color gold
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=140}] run scoreboard players add @a[team=alive] wins 1 
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=1..}] run scoreboard players remove @e[type=minecraft:armor_stand,name="moderator"] timer 1
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4}] run execute at @a[team=alive,tag=captain] run tp @a[distance=10..] ~ ~1 ~
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4}] run scoreboard players add @s timer2 1
execute as @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer2=11..}] run scoreboard players set @s timer2 1

execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0}] at @e[type=minecraft:item] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 50 normal
# Regeneration
execute if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=4,timer=0}] run function wtm:regenerate


# Lastkill tag remove
tag @a[tag=lastkill] remove lastkill