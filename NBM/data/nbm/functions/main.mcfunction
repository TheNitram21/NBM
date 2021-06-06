#Funktionen
function nbm:iceologer
function nbm:moobloom
function nbm:transform

#Scoreboards
execute as @e[type=minecraft:vindicator,tag=iceologer] unless score @s nbm.time matches 1.. run scoreboard players set @s nbm.time 201
execute as @e[type=minecraft:vindicator,tag=iceologer] if score @s nbm.time matches 2.. run scoreboard players remove @s nbm.time 1
