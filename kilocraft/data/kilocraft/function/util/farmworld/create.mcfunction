$wm create kilocraft:farmworld {seed:$(seed),generator:{settings:"minecraft:overworld",biome_source:{preset:"minecraft:overworld",type:"minecraft:multi_noise"},type:"minecraft:noise"},type:"minecraft:overworld"}
$wm create kilocraft:farmworld_nether {seed:$(seed),generator:{settings:"minecraft:nether",biome_source:{preset:"minecraft:nether",type:"minecraft:multi_noise"},type:"minecraft:noise"},type:"minecraft:the_nether"}

# Connect portals
execute in kilocraft:farmworld run wm setportal minecraft:nether_portal kilocraft:farmworld_nether
execute in kilocraft:farmworld_nether run wm setportal minecraft:nether_portal kilocraft:farmworld