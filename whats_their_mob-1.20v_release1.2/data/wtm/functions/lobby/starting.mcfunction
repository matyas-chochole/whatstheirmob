# Team testing
tag @e[type=minecraft:armor_stand,name="moderator"] remove stop
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] teamcount if entity @a[team=alive,scores={team=1}]
tag @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=3..}] add stop
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] teamcount if entity @a[team=alive,scores={team=2}]
tag @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=3..}] add stop
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] teamcount if entity @a[team=alive,scores={team=3}]
tag @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=3..}] add stop
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] teamcount if entity @a[team=alive,scores={team=4}]
tag @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=3..}] add stop
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] teamcount if entity @a[team=alive,scores={team=5}]
tag @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=3..}] add stop
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] teamcount if entity @a[team=alive,scores={team=6}]
tag @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=3..}] add stop
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] teamcount if entity @a[team=alive,scores={team=7}]
tag @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=3..}] add stop
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] teamcount if entity @a[team=alive,scores={team=8}]
tag @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=3..}] add stop
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] teamcount if entity @a[team=alive,scores={team=9}]
tag @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=3..}] add stop
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] teamcount if entity @a[team=alive,scores={team=10}]
tag @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=3..}] add stop
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] teamcount if entity @a[team=alive,scores={team=11}]
tag @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=3..}] add stop
execute store result score @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2}] teamcount if entity @a[team=alive,scores={team=12}]
tag @e[type=minecraft:armor_stand,name="moderator",scores={s_teammode=2,teamcount=3..}] add stop

# Not enough players
execute if entity @e[type=minecraft:armor_stand,name="moderator",tag=!stop,scores={playercount=..1}] run tellraw @a {"text":"Wait for other players... You can't play the game alone!","color":"red","bold":false}
execute if entity @e[type=minecraft:armor_stand,name="moderator",tag=!stop,scores={playercount=..1}] run execute as @a[tag=admin] at @s run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 1 1
# Too many players
execute if entity @e[type=minecraft:armor_stand,name="moderator",tag=!stop,scores={playercount=25..}] run tellraw @a {"text":"Too many players... There are only 24 player slots!","color":"red","bold":false}
execute if entity @e[type=minecraft:armor_stand,name="moderator",tag=!stop,scores={playercount=25..}] run execute as @a[tag=admin] at @s run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 1 1
# Countdown start
execute as @e[type=minecraft:armor_stand,name="moderator",tag=!stop,scores={playercount=2..24}] run scoreboard players set @s timer 300
execute as @e[type=minecraft:armor_stand,name="moderator",tag=!stop,scores={playercount=2..24}] run scoreboard players set @s gamephase 1
# Too many players in some team
execute if entity @e[type=minecraft:armor_stand,name="moderator",tag=stop] run tellraw @a {"text":"There are too many players in some team!","color":"red","bold":false}
execute if entity @e[type=minecraft:armor_stand,name="moderator",tag=stop] run function wtm:lobby/starting