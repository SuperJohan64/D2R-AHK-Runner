# D2R-AHK-Runner

***NOTE - Using these scripts while playing on Battle.Net may result in you getting banned. This is for single player Only!***

This is a collection of AutoHotKey, PowerShell, and Batch scripts for Diablo II: Resurrected single player that gives you macros to easily create new games while triggering the hotkeys for [oskros' MF_run_counter](https://github.com/oskros/MF_run_counter). It also has macros for changing the Players X difficulty, launching D2R, launching the MF_run_counter and backing up your single player characters.

# Instructions

1. Download and install [AutoHotKey](https://www.autohotkey.com).
2. Create a shortcut for Diablo II: Resurrected and move it to the same folder as these scripts. The shortcut must be named "Diablo II Resurrected" exactly.
3. Right click on the "Diablo II Resurrected" shortcut and add ` --exec="launch OSI"` to end of the Target's path. Make sure there's a space between the path and ` --exec="launch OSI"`.
4. Download [oskros' MF_run_counter](https://github.com/oskros/MF_run_counter/releases) and move it to the same folder as these scripts.
5. Run [MF_run_counter.exe](https://github.com/oskros/MF_run_counter/releases) and setup your profile. Refer to [oskros' readme](https://github.com/oskros/MF_run_counter#readme) for instructions. Do not setup Automode.
6. Run the "D2R AHK Runner.ahk" file and use the macros below.

# Macros

### Create a new game on Hell difficulty and start the MF_run_counter

On your keyboard press `SHIFT + ALT + E` at the same time.

This will start a new game on Hell difficulty with the currently selected character in the charter select screen.

### Exit current game and stop the MF_run_counter

On your keyboard press `SHIFT + ALT + W` at the same time.

This will exit the current game bringing you back to the character select screen.

### Exit and Create a new game on Hell difficulty and reset the MF_run_counter

On your keyboard press `SHIFT + ALT + Q` at the same time.

This will exit the current game you're in, start a new game on Hell difficulty and start a new run in the MF_run_counter. This only works when you are already in a game. It will not work properly if you run it from the character select screen.

### Change Players X difficulty

On your keyboard press `CRTL + Numpad 1-8`.

This will change the Players X difficulty to the respective number on the numpad (except 0 and 9).

### Launch D2R

On your keyboard press `CRTL + P` at the same time.

By default this will launch Diablo II Resurrected and the MF_run_counter. If you do not want the MF_run_counter to run when you use this hotkey you can set `launchMfRunnerWithD2R = False` in `D2R AHK Runner.ahk`.

### Launch MF_run_counter

On your keyboard press `CRTL + M` at the same time.

This will launch the MF_run_counter if it's saved in the same folder as these scripts.

### Close D2R and the MF_run_counter

On your keyboard press `CRTL + END` at the same time.

By default this will this will run a Backup and close the D2R and MF_run_counter windows. If you do not want create a backup when you use this hotkey you can set `backupOnExit = False` in `D2R AHK Runner.ahk`.

### Backup D2R single player characters

On your keyboard press `CRTL + B` at the same time.

This will trigger a Batch and Powershell script that zip's all of your D2R single player characters and saves it in a Backup folder located in the same directory as these scripts.
