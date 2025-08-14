#!/usr/bin/env python3

import os

import requests
import json
import zipfile
import re
import shutil

import modrinth

MCFUNCTION_FILE_PREFIX = """# THIS FILE IS GENERATED AUTOMATICALLY, DO NOT MANUALLY EDIT

tellraw @s ["", {"text":"------------- [","color":"#E0E0E0"},{"text":" HeadChances ", "color":"gold"},{"text":"] -------------","color":"#E0E0E0"}]
tellraw @s ["", {"text":"HOVER","bold":true,"color":"#E0E0E0"},{"text":" over the categories to see % chances, and mob names to see head types.","italic":true,"color":"#E0E0E0"},"\\n"]
"""

MCFUNCTION_VANILLA = """

tellraw @s [{"text":"VANILLA: ","color":"gold","hover_event":{"action":"show_text","value":[{"text":"Creeper/Piglin/Skeleton/Zombie: ","color":"#E0E0E0"},{"text":"Charged Creeper killing the mob","color":"white"},{"text":"\\nWither Skeleton: ","color":"#E0E0E0"},{"text":"Random chance","color":"white"},{"text":"\\nEnder Dragon: ","color":"#E0E0E0"},{"text":"Found at End Cities","color":"white"}]}},{"text":"Creeper","color":"#E0E0E0","hover_event":{"action":"show_item","id":"bundle","components":{"bundle_contents":[{"id":"creeper_head"}],"custom_name":[{"text":"1 Variant","color":"gray","italic":false}]}}},{"text":", "},{"text":"Piglin","color":"#E0E0E0","hover_event":{"action":"show_item","id":"bundle","components":{"bundle_contents":[{"id":"piglin_head"}],"custom_name":[{"text":"1 Variant","color":"gray","italic":false}]}}},{"text":", "},{"text":"Skeleton","color":"#E0E0E0","hover_event":{"action":"show_item","id":"bundle","components":{"bundle_contents":[{"id":"skeleton_skull"}],"custom_name":[{"text":"1 Variant","color":"gray","italic":false}]}}},{"text":", "},{"text":"Zombie","color":"#E0E0E0","hover_event":{"action":"show_item","id":"bundle","components":{"bundle_contents":[{"id":"zombie_head"}],"custom_name":[{"text":"1 Variant","color":"gray","italic":false}]}}},{"text":", "},{"text":"Wither Skeleton","color":"#E0E0E0","hover_event":{"action":"show_item","id":"bundle","components":{"bundle_contents":[{"id":"wither_skeleton_skull"}],"custom_name":[{"text":"1 Variant","color":"gray","italic":false}]}}},{"text":", "},{"text":"Ender Dragon","color":"#E0E0E0","hover_event":{"action":"show_item","id":"bundle","components":{"bundle_contents":[{"id":"dragon_head"}],"custom_name":[{"text":"1 Variant","color":"gray","italic":false}]}}}]

"""

MCFUNCTION_FILE_SUFFIX = """scoreboard players reset @s headchances
scoreboard players enable @s headchances"""

### Configuration
version = "1.21.8"
mods = [
    ("toms-mobs", "2.3.0+1.21.6"),
    ("friends-and-foes", "fabric-4.0.7+mc1.21.6"),
    ("enderscape", "1.0.8"),
    ("lovely_snails", "1.2.1+1.21.8")
]


def download_jar():
    version_manifest = json.loads(requests.get("https://launchermeta.mojang.com/mc/game/version_manifest.json").text)
    for version_entry in version_manifest["versions"]:
        if version_entry["id"] == version:
            version_data = json.loads(requests.get(version_entry["url"]).text)
            os.makedirs(os.path.dirname(client_jar), exist_ok=True)
            with open(client_jar, "wb") as f:
                f.write(requests.get(version_data["downloads"]["client"]["url"]).content)


def extract_loot_tables(jar):
    with zipfile.ZipFile(jar, "r") as zip:
        for file in zip.infolist():
            match = re.search(
                r"(?:data/minecraft/datapacks/[\w_\d]+/)?(data/[\w]+/loot_table/entities/([\w_\d]+/)*\w+.json)",
                file.filename)
            if match:
                destination_path = os.path.join(cache, match.group(1))
                if os.path.exists(destination_path):
                    continue
                os.makedirs(os.path.dirname(destination_path), exist_ok=True)
                with zip.open(file) as source, open(destination_path, "wb") as dest:
                    dest.write(source.read())


def get_loot_table_path(namespace: str):
    return f"data/{namespace}/loot_table/entities"


def modify_loot_table(entity_id: str, entity: dict, groups: dict):
    modified = False
    entity_json = {}
    id_namespace, id_path = entity_id.split(":")
    loot_table_path = get_loot_table_path(id_namespace)
    file_name = f"{id_path}.json"
    # check current data
    if entity_id in loot_table_data:
        entity_json = loot_table_data[entity_id]
    else:
        cache_path = os.path.join(cache, loot_table_path, file_name)
        # load vanilla files
        if os.path.isfile(cache_path):
            with open(cache_path, "r") as f:
                entity_json = json.load(f)

    if "heads" in entity and len(entity["heads"]) > 0:
        pool = create_loot_table_pool(entity["heads"], groups[entity["group"]])
        if "pools" in entity_json:
            entity_json["pools"].append(pool)
        else:
            entity_json["pools"] = [pool]
        modified = True

    if "references" in entity:
        for reference in entity["references"]:
            namespace, path = reference.split(":")
            pool = {
                "rolls": 1,
                "entries": [
                    {
                        "type": "minecraft:loot_table",
                        "value": f"{namespace}:entities/{path}"
                    }
                ]
            }
            if "pools" in entity_json:
                entity_json["pools"].append(pool)
            else:
                entity_json["pools"] = [pool]
            modified = True

    if modified:
        loot_table_data[entity_id] = entity_json


def create_loot_table_pool(heads: dict, group: dict) -> dict:
    base_chance: float = group["base_chance"]
    looting_chance: float = group["looting_chance"]
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
    pool["conditions"] = [
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
    return pool


def modify_loot_tables(config: dict):
    for entity_id, entity in config["entities"].items():
        modify_loot_table(entity_id, entity, config["groups"])


def add_dragon_egg():
    file_path = os.path.join(cache, VANILLA_LOOT_TABLE_PATH, "ender_dragon.json")
    with open(file_path, "r") as f:
        entity_json = json.load(f)
        entity_json["pools"] = [
            {
                "rolls": 1,
                "entries": [
                    {
                        "type": "minecraft:item",
                        "name": "minecraft:dragon_egg"
                    }
                ],
                "conditions": [
                    {
                        "condition": "minecraft:random_chance",
                        "chance": 0.2
                    }
                ]
            }
        ]
        loot_table_data["minecraft:ender_dragon"] = entity_json


def save_loot_tables():
    loot_tables = os.path.join(datapack_root, get_loot_table_path("minecraft"))
    if os.path.exists(loot_tables) and os.path.isdir(loot_tables):
        shutil.rmtree(loot_tables)

    for entity_id, entity_json in loot_table_data.items():
        id_namespace, id_path = entity_id.split(":")
        loot_table_path = get_loot_table_path(id_namespace)
        file_name = f"{id_path}.json"
        out_path = os.path.join(datapack_root, loot_table_path, file_name)
        os.makedirs(os.path.dirname(out_path), exist_ok=True)
        with open(out_path, "w") as f:
            json.dump(entity_json, f, indent=2)


def generate_regular_head_chances(config: dict) -> str:
    group_messages = {}
    for group_id, group in config["groups"].items():
        group_prefix = group["name"]
        group_prefix["hover_event"] = {"action": "show_text", "value": generate_group_details(group)}
        group_messages.setdefault(group_id, ["", group_prefix, {"text": ": ", "color": "gray"}])
    for entity_id, entity in config["entities"].items():
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


cache = f".cache"
client_jar = f"{cache}/client-{version}.jar"
datapack_root = f"../../kilocraft"

VANILLA_LOOT_TABLE_PATH = get_loot_table_path("minecraft")

if not os.path.exists(client_jar):
    print(f"Downloading client jar for {version}")
    download_jar()

# delete old data
cached_data = f"{cache}/data"
if os.path.exists(cached_data):
    shutil.rmtree(cached_data)

print("Extracting loot tables...")
extract_loot_tables(client_jar)

for mod_id, mod_version in mods:
    print("Downloading mod", mod_id, mod_version)
    extract_loot_tables(modrinth.download_mod(mod_id, mod_version))

print("Parsing configs")
with open("config.json", "r") as f:
    config = json.load(f)

with open("special_config.json", "r") as f:
    special_config = json.load(f)

print("Generating data:")
loot_table_data = {}
print("- Adding dragon egg drop")
add_dragon_egg()
print("- Applying mob heads")
modify_loot_tables(config)
print("- Applying monthly heads")
modify_loot_tables(special_config)

print("Saving loot tables")
save_loot_tables()

text = "\n".join(
    [
        MCFUNCTION_FILE_PREFIX,
        generate_regular_head_chances(config),
        MCFUNCTION_VANILLA,
        generate_special_head_chances(special_config),
        MCFUNCTION_FILE_SUFFIX
    ]
)

print("Saving function")
with open(os.path.join(datapack_root, "data/kilocraft/function/trigger/headchances.mcfunction"), "w") as f:
    f.write(text)

print("Done!")
