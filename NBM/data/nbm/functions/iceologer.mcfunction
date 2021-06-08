execute as @e[type=minecraft:vindicator,tag=iceologer,nbt=!{NoAI:1b}] at @s if score @s nbm.time matches 1 at @e[distance=1..7,type=!#nbm:noiceologerattack] run summon minecraft:armor_stand ~ ~3 ~ {NoBasePlate:1b,Invisible:1b,Invulnerable:1b,Small:1b,Silent:1b,Tags:["nbm.sib","nbm.csib"]}
execute as @e[type=minecraft:vindicator,tag=iceologer,nbt=!{NoAI:1b}] at @s if score @s nbm.time matches 1 at @p[distance=..7,gamemode=!creative,gamemode=!spectator] run summon minecraft:armor_stand ~ ~3 ~ {NoBasePlate:1b,Invisible:1b,Invulnerable:1b,Small:1b,Silent:1b,Tags:["nbm.sib","nbm.csib"]}
execute as @e[type=minecraft:vindicator,tag=iceologer,nbt=!{NoAI:1b}] at @s if score @s nbm.time matches 1 at @e[distance=1..7,type=!#nbm:noiceologerattack] run scoreboard players set @s nbm.time 0
execute as @e[type=minecraft:vindicator,tag=iceologer,nbt=!{NoAI:1b}] at @s if score @s nbm.time matches 1 at @p[distance=..7,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s nbm.time 0

execute as @e[tag=nbm.sib,tag=nbm.csib] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:packed_ice"},Time:-200,DropItem:0b,HurtEntities:1b,Tags:["nbm.ib"]}
execute as @e[tag=nbm.sib,tag=nbm.csib] at @s run summon minecraft:falling_block ~0.2 ~0.4 ~ {BlockState:{Name:"minecraft:packed_ice"},Time:-200,DropItem:0b,HurtEntities:1b,Tags:["nbm.ib"]}
execute as @e[tag=nbm.sib,tag=nbm.csib] at @s run summon minecraft:falling_block ~ ~0.2 ~0.4 {BlockState:{Name:"minecraft:packed_ice"},Time:-200,DropItem:0b,HurtEntities:1b,Tags:["nbm.ib"]}
execute as @e[tag=nbm.sib,tag=nbm.csib] at @s run summon minecraft:falling_block ~0.5 ~0.4 ~1 {BlockState:{Name:"minecraft:packed_ice"},Time:-200,DropItem:0b,HurtEntities:1b,Tags:["nbm.ib"]}

execute as @e[tag=nbm.sib] at @s run effect give @p[distance=..1] minecraft:wither 1 3 true

tag @e[tag=nbm.csib] remove nbm.csib

execute as @e[tag=nbm.sib] at @s unless block ~ ~-0.15 ~ minecraft:air run kill @s

execute as @e[type=minecraft:vindicator,tag=iceologer] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:1153450}}}]}
