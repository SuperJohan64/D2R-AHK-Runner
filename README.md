# D2R-AHK-Runner

***NOTE - Using these scripts while playing on Battle.Net may result in you getting banned. This is for single player Only!***

This is an AutoHotKey Script for Diablo II: Resurrected single player that allows you to easily exit and join new games while triggering the hotkeys for [oskros' MF_run_counter](https://github.com/oskros/MF_run_counter). It also has macros that will change the Players X difficulty, launch D2R, launch the MF_run_counter and backup D2R's single player characters to a "Backups" folder in the same directory as these scripts.

# Perquisites

1. AutoHotKey - https://www.autohotkey.com
2. MF_run_counter - [https://github.com/oskros/MF_run_counter](https://github.com/oskros/MF_run_counter/releases)

# Instructions

Optional - If you want to make sure your single player characters are safely backed up run these scripts from a directory that's synced to a cloud storage service.

1. Install [AutoHotKey](https://www.autohotkey.com).
2. Create a shortcut for Diablo II: Resurrected in the same folder as these scripts and make sure it is called "Diablo II Resurrected".
3. Right click on the "Diablo II Resurrected" shortcut and add ` --exec="launch OSI"` to end of the Target's path.
4. Move the [MF_run_counter.exe](https://github.com/oskros/MF_run_counter/releases) to the same folder as these scripts.
5. Run the "D2R AHK Runner.ahk" file and use the macros below.

# Macros

## Create a new game on Hell difficulty and reset the MF_run_counter

On your keyboard press `SHIFT + ALT + Q` at the same time.

This will exit the current game you're in, start a new game on Hell difficulty and start a new run in the MF_run_counter. This only works when you are already in a game. It will not work properly if you run it from the character select screen.

## Launch D2R

On your keyboard press `CRTL + SHIFT + ALT + P` at the same time.

By default this will launch Diablo II Resurrected and the MF_run_counter. If you do not want the MF_run_counter to run when you use this hotkey you can set `launchMfRunnerWithD2R = False` in `D2R AHK Runner.ahk`.

## Close D2R and the MF_run_counter

On your keyboard press `CRTL + END` at the same time.

By default this will this will run a Backup and close the D2R and MF_run_counter windows. If you do not want create a backup when you use this hotkey you can set `backupOnExit = False` in `D2R AHK Runner.ahk`.

## Launch MF_run_counter

On your keyboard press `CRTL + SHIFT + ALT + M` at the same time.

This will launch the MF_run_counter if it's saved in the same folder as these scripts.

## Change Players X difficulty

On your keyboard press `CRTL + Any Numpad Number`.

This will change the Players X difficulty to the respective number on the numpad (except 0 and 9).

## Backup D2R single player characters

On your keyboard press `CRTL + SHIFT + ALT + B` at the same time.

This will trigger a Batch and Powershell script that zip's all of your D2R single player characters and saves it in a Backup folder located in the same directory as these scripts.