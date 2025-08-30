#!/usr/bin/env python3

import json
import os
import shutil

MCFUNCTION_FILE_PREFIX = """# THIS FILE IS GENERATED AUTOMATICALLY, DO NOT MANUALLY EDIT

tellraw @s ["", {"text":"------------- [","color":"#E0E0E0"},{"text":" HeadChances ", "color":"gold"},{"text":"] -------------","color":"#E0E0E0"}]
tellraw @s ["", {"text":"HOVER","bold":true,"color":"#E0E0E0"},{"text":" over the categories to see % chances, and mob names to see head types.","italic":true,"color":"#E0E0E0"},"\\n"]
"""

MCFUNCTION_VANILLA = """

tellraw @s ["", {"text":"VANILLA: ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Creeper/Piglin/Skeleton/Zombie: ","color":"#E0E0E0"},{"text":"Charged Creeper killing the mob","color":"white"},{"text":"\\nWither Skeleton: ","color":"#E0E0E0"},{"text":"Random chance","color":"white"},{"text":"\\nEnder Dragon: ","color":"#E0E0E0"},{"text":"Found at End Cities","color":"white"}]}},{"text":"Creeper","color":"#E0E0E0","hover_event":{"action":"show_item","id":"bundle","components":{"bundle_contents":[{"id":"creeper_head"}],"custom_name":[{"text":"1 Variant","color":"gray","italic":false}]}}},{"text":", "},{"text":"Piglin","color":"#E0E0E0","hover_event":{"action":"show_item","id":"bundle","components":{"bundle_contents":[{"id":"piglin_head"}],"custom_name":[{"text":"1 Variant","color":"gray","italic":false}]}}},{"text":", "},{"text":"Skeleton","color":"#E0E0E0","hover_event":{"action":"show_item","id":"bundle","components":{"bundle_contents":[{"id":"skeleton_skull"}],"custom_name":[{"text":"1 Variant","color":"gray","italic":false}]}}},{"text":", "},{"text":"Zombie","color":"#E0E0E0","hover_event":{"action":"show_item","id":"bundle","components":{"bundle_contents":[{"id":"zombie_head"}],"custom_name":[{"text":"1 Variant","color":"gray","italic":false}]}}},{"text":", "},{"text":"Wither Skeleton","color":"#E0E0E0","hover_event":{"action":"show_item","id":"bundle","components":{"bundle_contents":[{"id":"wither_skeleton_skull"}],"custom_name":[{"text":"1 Variant","color":"gray","italic":false}]}}},{"text":", "},{"text":"Ender Dragon","color":"#E0E0E0","hover_event":{"action":"show_item","id":"bundle","components":{"bundle_contents":[{"id":"dragon_head"}],"custom_name":[{"text":"1 Variant","color":"gray","italic":false}]}}}]

"""

MCFUNCTION_FILE_SUFFIX = """scoreboard players reset @s headchances
scoreboard players enable @s headchances"""

JSONPATCHER_FILE_PREFIX = """
@version "1";
@metapatch;
"""

JSONPATCHER_FILE_SUFFIX = """
foreach (entity_id in entities) {
    var entity_ns_parts = strings.split(entity_id, ":");
    var entity_namespace = entity_ns_parts[0];
    var entity_path = entity_ns_parts[1];
    var entity = metapatch.getFile(entity_namespace + ":loot_table/entities/" + entity_path + ".json");
    if (entity is null) {
        debug.log("Loot table for " + entity_id + " is missing...");
        entity = {
            "type": "minecraft:entity"
        };
    }
    var pool = {
        "rolls": 1,
        "entries": [
            {
                "type": "minecraft:loot_table",
                "value": "mob_heads:mob_heads_with_chance/" + entity_namespace + "/" + entity_path
            }
        ]
    };

    if ("pools" in entity) {
        arrays.push(entity.pools, pool);
    } else {
        entity.pools = [pool];
    }
    debug.log("Adding loot table " + entity_id);

    metapatch.addFile(entity_namespace + ":loot_table/entities/" + entity_path + ".json", entity);
}
"""

enable_special_heads = False


def generate_loot_pools(config: dict, entity_id: str):
    pools = []
    entity = config["entities"][entity_id]

    if "heads" in entity and len(entity["heads"]) > 0:
        pool = create_head_chances_loot_table_pool(entity_id, entity["heads"], config["groups"][entity["group"]])
        pools.append(pool)

    if "references" in entity:
        for reference in entity["references"]:
            pools += generate_loot_pools(config, reference)
    return pools


def create_head_chances_loot_table_pool(entity_id: str, heads: dict, group: dict) -> dict:
    base_chance: float = group["base_chance"]
    looting_chance: float = group["looting_chance"]
    id_namespace, id_path = entity_id.split(":")

    create_head_loot_table(entity_id, heads, group)
    return {
        "rolls": 1,
        "entries": [
            {
                "type": "minecraft:loot_table",
                "value": f"mob_heads:mob_heads/{id_namespace}/{id_path}"
            }
        ],
        "conditions": [
            {
                "condition": "killed_by_player"
            },
            {
                "condition": "random_chance_with_enchanted_bonus",
                "unenchanted_chance": base_chance * 0.01,
                "enchanted_chance": {
                    "type": "minecraft:linear",
                    # chance of level 1
                    "base": base_chance * 0.01 + looting_chance * 0.01,
                    "per_level_above_first": looting_chance * 0.01
                },
                "enchantment": "minecraft:looting"
            }
        ]
    }


def create_head_loot_table(entity_id: str, heads: dict, group: dict):
    color = "red"
    if "name" in group:
        color = group["name"]["color"]
    pool = {"rolls": 1}
    entries = []
    for head in heads:
        name = {
            "text": head["profile"]["name"],
            "italic": False,
            "color": color
        }
        entry = {
            "type": "minecraft:item",
            "name": "minecraft:player_head",
            "functions": [
                {
                    "function": "minecraft:set_components",
                    "components": {
                        "minecraft:note_block_sound": head["note_block_sound"],
                        "minecraft:profile": {
                            "properties": [
                                {
                                    "name": "textures",
                                    "value": head["profile"]["texture"]
                                }
                            ]
                        },
                        "minecraft:custom_name": name
                    }
                }
            ]
        }
        if "conditions" in head:
            terms = []

            for cond in head['conditions']:
                terms.append(
                    {
                        "condition": "entity_properties",
                        "predicate": {
                            "nbt": f"{cond}"
                        },
                        "entity": "this"
                    }
                )
            entry["conditions"] = [
                {
                    "condition": "any_of",
                    "terms": terms
                }
            ]
        entries.append(entry)
    pool["entries"] = entries
    if entity_id in mob_heads_loot_pools:
        mob_heads_loot_pools[entity_id].append(pool)
    else:
        mob_heads_loot_pools[entity_id] = [pool]


def modify_loot_tables(config: dict):
    for entity_id in config["entities"].keys():
        if entity_id in references:
            continue
        pools = generate_loot_pools(config, entity_id)
        if len(pools) > 0:
            if entity_id in mob_heads_with_chance_loot_pools:
                mob_heads_with_chance_loot_pools[entity_id] += pools
            else:
                mob_heads_with_chance_loot_pools[entity_id] = pools

def save_loot_tables(loot_pool_root, loot_pools):
    loot_pool_root = os.path.join(datapack_root, loot_pool_root)
    if os.path.exists(loot_pool_root) and os.path.isdir(loot_pool_root):
        shutil.rmtree(loot_pool_root)

    for loot_id, pools in loot_pools.items():
        id_namespace, id_path = loot_id.split(":")
        loot_pool_path = f"{os.path.join(loot_pool_root, id_namespace, id_path)}.json"
        os.makedirs(os.path.dirname(loot_pool_path), exist_ok=True)

        loot_table = {
            "type": "minecraft:entity",
            "pools": pools
        }

        with open(loot_pool_path, "w") as f:
            json.dump(loot_table, f, indent=2)


def generate_regular_head_chances(config: dict) -> str:
    group_messages = {}
    for group_id, group in config["groups"].items():
        group_prefix = group["name"]
        group_prefix["hover_event"] = {"action": "show_text", "value": generate_group_details(group)}
        group_messages.setdefault(group_id, ["", group_prefix, {"text": ": ", "color": "gray"}])
    for entity_id, entity in sorted(config["entities"].items(), key=lambda item: item[1]["name"]):
        if "heads" not in entity or len(entity["heads"]) <= 0 or "group" not in entity:
            continue
        group_messages[entity["group"]].append(
            {"text": ", "}
        )
        group_messages[entity["group"]].append(generate_head_text(entity))
    text = ""
    for key, val in group_messages.items():
        val.pop(3)  # remove first comma
        text += f"tellraw @s {json.dumps(val)}\n"

    return text


def collect_references(config: dict):
    references = []
    for entity_config in config["entities"].values():
        if "references" in entity_config:
            references.extend(entity_config["references"])
    return references


def generate_special_head_chances(config: dict) -> str:
    message = ["", {
        "text": "MONTHLY HEADS",
        "color": "red"
    }, {"text": ": ", "color": "gray"}]
    for entity_id, entity in config["entities"].items():
        if "heads" not in entity or len(entity["heads"]) <= 0 or "group" not in entity:
            continue
        group = config["groups"][entity["group"]]
        base_chance: float = group["base_chance"]
        looting_chance: float = group["looting_chance"]
        message.append({"text": ", "})
        message.append(generate_head_text(entity, name_suffix=[{"text": " Looting III: ", "italic": False},
                                                               {"text": f"{base_chance + looting_chance * 3}%",
                                                                "color": "green", "italic": False}]))
    message.pop(3)  # remove first comma
    return f"tellraw @s {json.dumps(message)}\n"


def generate_head_text(entity: dict, name_suffix=None):
    bundle_contents = [
    ]
    for head in entity["heads"]:
        bundle_contents.append(
            {
                "id": "player_head",
                "components": {
                    "minecraft:profile": {
                        "name": "get_in_contact",
                        "properties": [
                            {
                                "name": "textures",
                                "value": head["profile"]["texture"]
                            }
                        ]
                    }
                }
            }
        )

    name = ["", {
        "text": f"{len(entity['heads'])} Variant{'s' if len(entity['heads']) != 1 else ''}",
        "color": "gray",
        "italic": False
    }]
    if name_suffix is not None:
        name += name_suffix
    return {
        "text": entity["name"],
        "color": "#E0E0E0" if len(entity["heads"]) == 1 else "#939393",
        "hover_event": {
            "action": "show_item",
            "id": "bundle",
            "components": {
                "bundle_contents": bundle_contents,
                "custom_name": name
            }
        }
    }


def generate_group_details(group: dict):
    base_chance: float = group["base_chance"]
    looting_chance: float = group["looting_chance"]

    return [
        {"text": f"Base Chance: "},
        {"text": f"{base_chance}%", "color": "gray"},
        {"text": "\n"},
        {"text": "Chance / Looting Lvl: "},
        {"text": f"{looting_chance}%", "color": "gray"},
        {"text": "\n\n"},
        {"text": "Looting III: "},
        {"text": f"{base_chance + looting_chance * 3}%", "color": "green"},
    ]


datapack_root = f"../../mob_heads"

print("Generating data:")
mob_heads_loot_pools = {}
mob_heads_with_chance_loot_pools = {}
references = {}

with open("config.json", "r") as f:
    config = json.load(f)
    references = collect_references(config)
    print("- Parsing monthly heads config")
    modify_loot_tables(config)
    print("- Applying mob heads")

special_head_chances = ""
if enable_special_heads:
    with open("special_config.json", "r") as f:
        special_config = json.load(f)
        print("- Parsing monthly heads config")
        print("- Applying monthly heads")
        modify_loot_tables(special_config)
        special_head_chances = generate_special_head_chances(special_config)

print("Saving loot tables")
save_loot_tables("data/mob_heads/loot_table/mob_heads/", mob_heads_loot_pools)
save_loot_tables("data/mob_heads/loot_table/mob_heads_with_chance/", mob_heads_with_chance_loot_pools)

mcfunction_data = "\n".join(
    [
        MCFUNCTION_FILE_PREFIX,
        generate_regular_head_chances(config),
        MCFUNCTION_VANILLA,
        special_head_chances,
        MCFUNCTION_FILE_SUFFIX
    ]
)

jsonpatcher_data = "\n".join(
    [
        JSONPATCHER_FILE_PREFIX,
        f"var entities = {json.dumps(list(mob_heads_with_chance_loot_pools.keys()))};",
        JSONPATCHER_FILE_SUFFIX
    ]
)

print("Saving function")
headchances_path = os.path.join(datapack_root, "data/mob_heads/function/headchances.mcfunction")
os.makedirs(os.path.dirname(headchances_path), exist_ok=True)
with open(headchances_path, "w") as f:
    f.write(mcfunction_data)

print("Saving jsonpatch")
jsonpatcher_path = os.path.join(datapack_root, "data/mob_heads/jsonpatch/mobheads.jsonpatch")
os.makedirs(os.path.dirname(jsonpatcher_path), exist_ok=True)
with open(jsonpatcher_path, "w") as f:
    f.write(jsonpatcher_data)

print("Done!")
