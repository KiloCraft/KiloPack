import os

import requests

CACHE_DIR = ".cache"
os.makedirs(CACHE_DIR, exist_ok=True)

MODRINTH_API_URL = "https://api.modrinth.com/v2/project/{mod_id}/version"


def get_latest_version(mod_id, mod_version):
    response = requests.get(MODRINTH_API_URL.format(mod_id=mod_id))
    response.raise_for_status()
    versions = response.json()

    if not versions:
        raise ValueError("No versions found for this mod.")

    for version in versions:
        if version["version_number"] == mod_version:
            return version["files"][0]["url"], version["files"][0]["hashes"]["sha1"]

    raise ValueError(f"Couldn't find version {mod_version} found for {mod_id}.")


def download_mod(mod_id, mod_version):
    download_url, mod_sha1 = get_latest_version(mod_id, mod_version)
    mod_filename = f"{mod_sha1}.jar"
    mod_path = os.path.join(CACHE_DIR, mod_filename)

    if os.path.exists(mod_path):
        print(f"Using cached version: {mod_path}")
        return mod_path

    print(f"Downloading mod from {download_url}...")
    response = requests.get(download_url)
    response.raise_for_status()

    with open(mod_path, "wb") as file:
        file.write(response.content)

    print(f"Mod downloaded and cached at: {mod_path}")
    return mod_path
