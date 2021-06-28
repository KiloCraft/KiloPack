execute in kilocraft:mighty_highlands run function kilocraft:util/spawn

#makes fixing book bans easier
clear @a[tag=bookban] minecraft:writable_book
clear @a[tag=bookban] minecraft:written_book

schedule function kilocraft:util/loop 1t replace
