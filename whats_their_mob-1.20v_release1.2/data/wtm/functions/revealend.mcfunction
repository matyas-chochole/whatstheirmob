scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] timerhelp1 1200
scoreboard players set @e[type=minecraft:armor_stand,name="moderator"] timerhelp2 20
scoreboard players operation @e[type=minecraft:armor_stand,name="moderator"] timerhelp1 *= @e[type=minecraft:armor_stand,name="moderator"] s_minutes
scoreboard players operation @e[type=minecraft:armor_stand,name="moderator"] timerhelp2 *= @e[type=minecraft:armor_stand,name="moderator"] s_seconds
scoreboard players operation @e[type=minecraft:armor_stand,name="moderator"] timer = @e[type=minecraft:armor_stand,name="moderator"] timerhelp1
scoreboard players operation @e[type=minecraft:armor_stand,name="moderator"] timer += @e[type=minecraft:armor_stand,name="moderator"] timerhelp2
execute as @e[type=minecraft:armor_stand,name=moderator,scores={s_seconds=0,s_minutes=0}] run scoreboard players set @s timer 100001
scoreboard players operation @e[type=minecraft:armor_stand,name="moderator"] minutes = @e[type=minecraft:armor_stand,name="moderator"] s_minutes
scoreboard players operation @e[type=minecraft:armor_stand,name="moderator"] seconds = @e[type=minecraft:armor_stand,name="moderator"] s_seconds
tag @e[type=minecraft:armor_stand,name="moderator"] remove completed