execute as @e[type=minecraft:cow,tag=!nbm.notransform] at @s run loot spawn ~ ~ ~ loot nbm:transformtest
execute as @e[type=minecraft:cow,tag=!nbm.notransform] at @s if entity @e[type=minecraft:item,nbt={Item:{tag:{nbm.transform:1b}}},distance=..2] run tag @s add moobloom
tag @e[type=minecraft:cow,tag=!nbm.notransform] add nbm.notransform

execute as @e[type=minecraft:vindicator,tag=!nbm.notransform] at @s run loot spawn ~ ~ ~ loot nbm:transformtest
execute as @e[type=minecraft:vindicator,tag=!nbm.notransform] at @s if entity @e[type=minecraft:item,nbt={Item:{tag:{nbm.transform:1b}}},distance=..2] run tag @s add vindicator
tag @e[type=minecraft:vindicator,tag=!nbm.notransform] add nbm.notransform

execute as @e[type=minecraft:item,nbt={Item:{tag:{nbm.transform:1b}}}] run kill @s
