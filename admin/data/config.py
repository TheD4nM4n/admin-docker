
#    Copyright 2020 Daniel Poe
#
#    This file is a part of Admin.
#
#    Admin is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    Admin is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with Admin.  If not, see https://www.gnu.org/licenses/.

from json import load, dump

CONFIG_LOCATION = "./admin/data/serverconfig.json"


def load_data(file):
    try:
        with open(file, "r", encoding="utf-8") as f:
            return load(f)
    except FileNotFoundError:
        return {}


def save_data(data, file) -> None:
    with open(file, "w+", encoding='utf-8') as f:
        dump(data, f, indent=4)
        f.truncate()
        return


def get_default_configuration() -> dict:
    return {
        "name": None,
        "greetings": {
            "enabled": True,
            "channel": None
        },
        "reaction-roles": {
            "enabled": True
        },
        "chat-filter": {
            "enabled": True,
            "log-channel": None,
            "use-default-list": True,
            "custom-words": [],
            "whitelisted-channels": [],
            "whitelisted-members": []
        },
        "mute": {
            "enabled": True,
            "muted-members": []
        }
    }


config = load_data("serverconfig.json")
greetings = load_data("greetings.json")
