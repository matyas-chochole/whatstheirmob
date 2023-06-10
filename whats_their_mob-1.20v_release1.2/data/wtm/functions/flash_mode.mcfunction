## Invisibility effect
# Invisibility add
execute as @a[team=alive] at @s if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2..3,s_flashmode=1..10}] run effect give @e[type=!player,distance=4..] minecraft:invisibility 1 1 true
# Invisibility remove
execute as @a[team=alive] at @s if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2..3,s_flashmode=1..10}] run effect clear @e[type=!player,distance=..3] minecraft:invisibility

## Glowing effect
# Glowing add
execute as @a[team=alive] at @s if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_flashmode=1..10,glowtimer=0}] run effect give @e[type=!player,type=!minecraft:armor_stand,distance=4..64] minecraft:glowing 1 1 true
# Glowing remove
execute as @a[team=alive] at @s if entity @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_flashmode=1..10,glowtimer=10}] run effect clear @e[type=!player,type=!minecraft:armor_stand] minecraft:glowing
# Glowing countdown
scoreboard players add @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2}] glowtimer 1
scoreboard players set @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_flashmode=1,glowtimer=30..}] glowtimer 0
scoreboard players set @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_flashmode=2,glowtimer=50..}] glowtimer 0
scoreboard players set @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_flashmode=3,glowtimer=70..}] glowtimer 0
scoreboard players set @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_flashmode=4,glowtimer=90..}] glowtimer 0
scoreboard players set @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_flashmode=5,glowtimer=110..}] glowtimer 0
scoreboard players set @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_flashmode=6,glowtimer=130..}] glowtimer 0
scoreboard players set @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_flashmode=7,glowtimer=150..}] glowtimer 0
scoreboard players set @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_flashmode=8,glowtimer=170..}] glowtimer 0
scoreboard players set @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_flashmode=9,glowtimer=190..}] glowtimer 0
scoreboard players set @e[type=minecraft:armor_stand,name="moderator",scores={gamephase=2,s_flashmode=10,glowtimer=210..}] glowtimer 0