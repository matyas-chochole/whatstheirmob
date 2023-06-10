# Clearing duplicates
tag @e remove duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=1}]
execute as @a[team=alive,tag=captain,scores={mob=1}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=2}]
execute as @a[team=alive,tag=captain,scores={mob=2}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=3}]
execute as @a[team=alive,tag=captain,scores={mob=3}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=4}]
execute as @a[team=alive,tag=captain,scores={mob=4}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=5}]
execute as @a[team=alive,tag=captain,scores={mob=5}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=6}]
execute as @a[team=alive,tag=captain,scores={mob=6}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=7}]
execute as @a[team=alive,tag=captain,scores={mob=7}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=8}]
execute as @a[team=alive,tag=captain,scores={mob=8}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=9}]
execute as @a[team=alive,tag=captain,scores={mob=9}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=10}]
execute as @a[team=alive,tag=captain,scores={mob=10}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=11}]
execute as @a[team=alive,tag=captain,scores={mob=11}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=12}]
execute as @a[team=alive,tag=captain,scores={mob=12}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=13}]
execute as @a[team=alive,tag=captain,scores={mob=13}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=14}]
execute as @a[team=alive,tag=captain,scores={mob=14}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=15}]
execute as @a[team=alive,tag=captain,scores={mob=15}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=16}]
execute as @a[team=alive,tag=captain,scores={mob=16}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=17}]
execute as @a[team=alive,tag=captain,scores={mob=17}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=18}]
execute as @a[team=alive,tag=captain,scores={mob=18}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=19}]
execute as @a[team=alive,tag=captain,scores={mob=19}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=20}]
execute as @a[team=alive,tag=captain,scores={mob=20}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=21}]
execute as @a[team=alive,tag=captain,scores={mob=21}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=22}]
execute as @a[team=alive,tag=captain,scores={mob=22}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=23}]
execute as @a[team=alive,tag=captain,scores={mob=23}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=24}]
execute as @a[team=alive,tag=captain,scores={mob=24}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=25}]
execute as @a[team=alive,tag=captain,scores={mob=25}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=26}]
execute as @a[team=alive,tag=captain,scores={mob=26}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=27}]
execute as @a[team=alive,tag=captain,scores={mob=27}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=28}]
execute as @a[team=alive,tag=captain,scores={mob=28}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=29}]
execute as @a[team=alive,tag=captain,scores={mob=29}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=30}]
execute as @a[team=alive,tag=captain,scores={mob=30}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=31}]
execute as @a[team=alive,tag=captain,scores={mob=31}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=32}]
execute as @a[team=alive,tag=captain,scores={mob=32}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=33}]
execute as @a[team=alive,tag=captain,scores={mob=33}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=34}]
execute as @a[team=alive,tag=captain,scores={mob=34}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=35}]
execute as @a[team=alive,tag=captain,scores={mob=35}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=36}]
execute as @a[team=alive,tag=captain,scores={mob=36}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=37}]
execute as @a[team=alive,tag=captain,scores={mob=37}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=38}]
execute as @a[team=alive,tag=captain,scores={mob=38}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=39}]
execute as @a[team=alive,tag=captain,scores={mob=39}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=40}]
execute as @a[team=alive,tag=captain,scores={mob=40}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=41}]
execute as @a[team=alive,tag=captain,scores={mob=41}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=42}]
execute as @a[team=alive,tag=captain,scores={mob=42}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=43}]
execute as @a[team=alive,tag=captain,scores={mob=43}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=44}]
execute as @a[team=alive,tag=captain,scores={mob=44}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=45}]
execute as @a[team=alive,tag=captain,scores={mob=45}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=46}]
execute as @a[team=alive,tag=captain,scores={mob=46}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=47}]
execute as @a[team=alive,tag=captain,scores={mob=47}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=48}]
execute as @a[team=alive,tag=captain,scores={mob=48}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=49}]
execute as @a[team=alive,tag=captain,scores={mob=49}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=50}]
execute as @a[team=alive,tag=captain,scores={mob=50}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=51}]
execute as @a[team=alive,tag=captain,scores={mob=51}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=52}]
execute as @a[team=alive,tag=captain,scores={mob=52}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=53}]
execute as @a[team=alive,tag=captain,scores={mob=53}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=54}]
execute as @a[team=alive,tag=captain,scores={mob=54}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=55}]
execute as @a[team=alive,tag=captain,scores={mob=55}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=56}]
execute as @a[team=alive,tag=captain,scores={mob=56}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=57}]
execute as @a[team=alive,tag=captain,scores={mob=57}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=58}]
execute as @a[team=alive,tag=captain,scores={mob=58}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=59}]
execute as @a[team=alive,tag=captain,scores={mob=59}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=60}]
execute as @a[team=alive,tag=captain,scores={mob=60}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=61}]
execute as @a[team=alive,tag=captain,scores={mob=61}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=62}]
execute as @a[team=alive,tag=captain,scores={mob=62}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=63}]
execute as @a[team=alive,tag=captain,scores={mob=63}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=64}]
execute as @a[team=alive,tag=captain,scores={mob=64}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=65}]
execute as @a[team=alive,tag=captain,scores={mob=65}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=66}]
execute as @a[team=alive,tag=captain,scores={mob=66}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=67}]
execute as @a[team=alive,tag=captain,scores={mob=67}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=68}]
execute as @a[team=alive,tag=captain,scores={mob=68}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=69}]
execute as @a[team=alive,tag=captain,scores={mob=69}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=70}]
execute as @a[team=alive,tag=captain,scores={mob=70}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=71}]
execute as @a[team=alive,tag=captain,scores={mob=71}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=72}]
execute as @a[team=alive,tag=captain,scores={mob=72}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate
execute store result score @e[type=minecraft:armor_stand,name="moderator",limit=1] dupcount if entity @a[team=alive,tag=captain,scores={mob=73}]
execute as @a[team=alive,tag=captain,scores={mob=73}] if entity @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] store result score @s mob run loot spawn ~ ~-2 ~ loot wtm:random
tag @e[type=minecraft:armor_stand,name="moderator",scores={dupcount=2..}] add duplicate

#--------------------------------------------------------------------------------------------------------------------------------------------

# Blast mode
execute as @e[type=minecraft:armor_stand,name="moderator",tag=!duplicate,scores={s_blastmode=1..5}] at @s run summon minecraft:armor_stand ~ ~2 ~ {Small:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1b,Invulnerable:1b,CustomName:'"bm1"',Tags:["bm"]}
execute as @e[type=minecraft:armor_stand,name="moderator",tag=!duplicate,scores={s_blastmode=2..5}] at @s run summon minecraft:armor_stand ~ ~2 ~ {Small:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1b,Invulnerable:1b,CustomName:'"bm2"',Tags:["bm"]}
execute as @e[type=minecraft:armor_stand,name="moderator",tag=!duplicate,scores={s_blastmode=3..5}] at @s run summon minecraft:armor_stand ~ ~2 ~ {Small:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1b,Invulnerable:1b,CustomName:'"bm3"',Tags:["bm"]}
execute as @e[type=minecraft:armor_stand,name="moderator",tag=!duplicate,scores={s_blastmode=4..5}] at @s run summon minecraft:armor_stand ~ ~2 ~ {Small:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1b,Invulnerable:1b,CustomName:'"bm4"',Tags:["bm"]}
execute as @e[type=minecraft:armor_stand,name="moderator",tag=!duplicate,scores={s_blastmode=5}] at @s run summon minecraft:armor_stand ~ ~2 ~ {Small:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1b,Invulnerable:1b,CustomName:'"bm5"',Tags:["bm"]}
execute if entity @e[type=minecraft:armor_stand,name="moderator",tag=!duplicate,scores={s_blastmode=1..}] store result score @e[type=minecraft:armor_stand,tag=bm] mob run loot spawn ~ ~-2 ~ loot wtm:random
execute if entity @e[type=minecraft:armor_stand,name="moderator",tag=!duplicate,scores={s_blastmode=1..}] run function wtm:blast

#--------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @e[type=minecraft:armor_stand,name="moderator",tag=duplicate] run function wtm:duplicate

#--------------------------------------------------------------------------------------------------------------------------------------------

