# Clearing duplicates
tag @e remove duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=1}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=1}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=1}] if entity @a[team=alive,scores={mob=1}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=1}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=2}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=2}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=2}] if entity @a[team=alive,scores={mob=2}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=2}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=3}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=3}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=3}] if entity @a[team=alive,scores={mob=3}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=3}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=4}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=4}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=4}] if entity @a[team=alive,scores={mob=4}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=4}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=5}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=5}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=5}] if entity @a[team=alive,scores={mob=5}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=5}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=6}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=6}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=6}] if entity @a[team=alive,scores={mob=6}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=6}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=7}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=7}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=7}] if entity @a[team=alive,scores={mob=7}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=7}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=8}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=8}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=8}] if entity @a[team=alive,scores={mob=8}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=8}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=9}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=9}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=9}] if entity @a[team=alive,scores={mob=9}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=9}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=10}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=10}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=10}] if entity @a[team=alive,scores={mob=10}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=10}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=11}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=11}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=11}] if entity @a[team=alive,scores={mob=11}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=11}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=12}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=12}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=12}] if entity @a[team=alive,scores={mob=12}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=12}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=13}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=13}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=13}] if entity @a[team=alive,scores={mob=13}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=13}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=14}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=14}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=14}] if entity @a[team=alive,scores={mob=14}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=14}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=15}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=15}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=15}] if entity @a[team=alive,scores={mob=15}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=15}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=16}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=16}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=16}] if entity @a[team=alive,scores={mob=16}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=16}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=17}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=17}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=17}] if entity @a[team=alive,scores={mob=17}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=17}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=18}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=18}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=18}] if entity @a[team=alive,scores={mob=18}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=18}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=19}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=19}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=19}] if entity @a[team=alive,scores={mob=19}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=19}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=20}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=20}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=20}] if entity @a[team=alive,scores={mob=20}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=20}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=21}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=21}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=21}] if entity @a[team=alive,scores={mob=21}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=21}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=22}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=22}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=22}] if entity @a[team=alive,scores={mob=22}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=22}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=23}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=23}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=23}] if entity @a[team=alive,scores={mob=23}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=23}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=24}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=24}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=24}] if entity @a[team=alive,scores={mob=24}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=24}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=25}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=25}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=25}] if entity @a[team=alive,scores={mob=25}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=25}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=26}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=26}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=26}] if entity @a[team=alive,scores={mob=26}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=26}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=27}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=27}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=27}] if entity @a[team=alive,scores={mob=27}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=27}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=28}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=28}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=28}] if entity @a[team=alive,scores={mob=28}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=28}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=29}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=29}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=29}] if entity @a[team=alive,scores={mob=29}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=29}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=30}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=30}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=30}] if entity @a[team=alive,scores={mob=30}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=30}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=31}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=31}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=31}] if entity @a[team=alive,scores={mob=31}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=31}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=32}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=32}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=32}] if entity @a[team=alive,scores={mob=32}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=32}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=33}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=33}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=33}] if entity @a[team=alive,scores={mob=33}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=33}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=34}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=34}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=34}] if entity @a[team=alive,scores={mob=34}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=34}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=35}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=35}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=35}] if entity @a[team=alive,scores={mob=35}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=35}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=36}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=36}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=36}] if entity @a[team=alive,scores={mob=36}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=36}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=37}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=37}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=37}] if entity @a[team=alive,scores={mob=37}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=37}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=38}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=38}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=38}] if entity @a[team=alive,scores={mob=38}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=38}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=39}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=39}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=39}] if entity @a[team=alive,scores={mob=39}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=39}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=40}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=40}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=40}] if entity @a[team=alive,scores={mob=40}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=40}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=41}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=41}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=41}] if entity @a[team=alive,scores={mob=41}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=41}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=42}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=42}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=42}] if entity @a[team=alive,scores={mob=42}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=42}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=43}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=43}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=43}] if entity @a[team=alive,scores={mob=43}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=43}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=44}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=44}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=44}] if entity @a[team=alive,scores={mob=44}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=44}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=45}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=45}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=45}] if entity @a[team=alive,scores={mob=45}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=45}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=46}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=46}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=46}] if entity @a[team=alive,scores={mob=46}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=46}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=47}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=47}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=47}] if entity @a[team=alive,scores={mob=47}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=47}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=48}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=48}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=48}] if entity @a[team=alive,scores={mob=48}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=48}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=49}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=49}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=49}] if entity @a[team=alive,scores={mob=49}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=49}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=50}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=50}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=50}] if entity @a[team=alive,scores={mob=50}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=50}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=51}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=51}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=51}] if entity @a[team=alive,scores={mob=51}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=51}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=52}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=52}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=52}] if entity @a[team=alive,scores={mob=52}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=52}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=53}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=53}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=53}] if entity @a[team=alive,scores={mob=53}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=53}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=54}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=54}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=54}] if entity @a[team=alive,scores={mob=54}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=54}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=55}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=55}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=55}] if entity @a[team=alive,scores={mob=55}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=55}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=56}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=56}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=56}] if entity @a[team=alive,scores={mob=56}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=56}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=57}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=57}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=57}] if entity @a[team=alive,scores={mob=57}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=57}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=58}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=58}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=58}] if entity @a[team=alive,scores={mob=58}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=58}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=59}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=59}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=59}] if entity @a[team=alive,scores={mob=59}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=59}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=60}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=60}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=60}] if entity @a[team=alive,scores={mob=60}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=60}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=61}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=61}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=61}] if entity @a[team=alive,scores={mob=61}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=61}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=62}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=62}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=62}] if entity @a[team=alive,scores={mob=62}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=62}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=63}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=63}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=63}] if entity @a[team=alive,scores={mob=63}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=63}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=64}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=64}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=64}] if entity @a[team=alive,scores={mob=64}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=64}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=65}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=65}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=65}] if entity @a[team=alive,scores={mob=65}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=65}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=66}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=66}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=66}] if entity @a[team=alive,scores={mob=66}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=66}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=67}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=67}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=67}] if entity @a[team=alive,scores={mob=67}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=67}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=68}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=68}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=68}] if entity @a[team=alive,scores={mob=68}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=68}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=69}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=69}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=69}] if entity @a[team=alive,scores={mob=69}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=69}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=70}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=70}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=70}] if entity @a[team=alive,scores={mob=70}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=70}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=71}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=71}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=71}] if entity @a[team=alive,scores={mob=71}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=71}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=72}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=72}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=72}] if entity @a[team=alive,scores={mob=72}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=72}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @e[type=minecraft:armor_stand,tag=bm,scores={mob=73}]
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=73}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=73}] if entity @a[team=alive,scores={mob=73}] run tag @e[type=minecraft:armor_stand,name="moderator"] add match
execute as @e[type=minecraft:armor_stand,tag=bm,scores={mob=73}] if entity @e[type=minecraft:armor_stand,name="moderator",tag=match] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator",tag=match] add duplicate
tag @e[type=minecraft:armor_stand,name="moderator"] remove match

#---------------------------------------------------------------------------------------------------------------------------------------

execute as @e[type=minecraft:armor_stand,name="moderator",tag=!duplicate] at @s run scoreboard players operation @s blast1 = @e[type=minecraft:armor_stand,name="bm1",sort=nearest,limit=1] mob
execute as @e[type=minecraft:armor_stand,name="moderator",tag=!duplicate,scores={s_blastmode=2..}] at @s run scoreboard players operation @s blast2 = @e[type=minecraft:armor_stand,name="bm2",sort=nearest,limit=1] mob
execute as @e[type=minecraft:armor_stand,name="moderator",tag=!duplicate,scores={s_blastmode=3..}] at @s run scoreboard players operation @s blast3 = @e[type=minecraft:armor_stand,name="bm3",sort=nearest,limit=1] mob
execute as @e[type=minecraft:armor_stand,name="moderator",tag=!duplicate,scores={s_blastmode=4..}] at @s run scoreboard players operation @s blast4 = @e[type=minecraft:armor_stand,name="bm4",sort=nearest,limit=1] mob
execute as @e[type=minecraft:armor_stand,name="moderator",tag=!duplicate,scores={s_blastmode=5..}] at @s run scoreboard players operation @s blast5 = @e[type=minecraft:armor_stand,name="bm5",sort=nearest,limit=1] mob
execute if entity @e[type=minecraft:armor_stand,name="moderator",tag=!duplicate] at @s run kill @e[type=minecraft:armor_stand,tag=bm]

#---------------------------------------------------------------------------------------------------------------------------------------

execute if entity @e[type=minecraft:armor_stand,name="moderator",tag=duplicate] run function wtm:blast

#---------------------------------------------------------------------------------------------------------------------------------------