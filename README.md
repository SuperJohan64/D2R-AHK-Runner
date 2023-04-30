# D2R-AHK-Runner

***NOTE - Using these scripts while playing on Battle.Net may result in you getting banned. This is for single player only!***

This is a compilation of AutoHotKey, PowerShell, and Batch scripts that provide macros for Diablo II: Resurrected single player. These scripts make it effortless to generate new games and activate the hotkeys for [oskros' MF_run_counter](https://github.com/oskros/MF_run_counter/releases). Additionally, the macros can modify the Players X difficulty level, launch D2R, launch the MF_run_counter, and create backups of your single player characters.

# Instructions

1. Download and install [AutoHotKey](https://www.autohotkey.com).
2. Download [mf_timer.exe](https://github.com/oskros/MF_run_counter/releases) and move it to the same folder as these scripts.
3. Launch [mf_timer.exe](https://github.com/oskros/MF_run_counter/releases) and set up your profile, referring to [oskros' readme](https://github.com/oskros/MF_run_counter#readme) for instructions. Do not setup Automode.
4. Create a shortcut for Diablo II: Resurrected and move it to the same folder as these scripts. The shortcut must be named "Diablo II Resurrected" exactly.
5. Right click on the "Diablo II Resurrected" shortcut, select Properties, and add ` --exec="launch OSI"` to end of the Target's path. Ensure that there is a space between the path and ` --exec="launch OSI"`.
6. Run the "D2R AHK Runner.ahk" file and use the macros below.

# Macros

### Create a new game on Hell difficulty and start the MF_run_counter

On your keyboard press `CRTL + Page Up` at the same time.

This will start a new game on Hell difficulty with the currently selected character in the charter select screen.

### Exit current game and stop the MF_run_counter

On your keyboard press `CRTL + Page Down` at the same time.

This will exit the current game bringing you back to the character select screen.

### Exit and Create a new game on Hell difficulty and reset the MF_run_counter

On your keyboard press `ALT + Esc` at the same time.

This will exit the current game you're in, start a new game on Hell difficulty and start a new run in the MF_run_counter. This only works when you are already in a game. It will not work properly if you run it from the character select screen.

### Change Players X difficulty

On your keyboard press `CRTL + Numpad 1-8`.

This will change the Players X difficulty to the respective number on the numpad (except 0 and 9).

### Launch D2R

On your keyboard press `CRTL + P` at the same time.

By default this will launch Diablo II Resurrected and the MF_run_counter. If you do not want the MF_run_counter to run when you use this hotkey you can set `launchMfRunnerWithD2R = False` in `D2R AHK Runner.ahk`.

### Open and Close MF_run_counter

On your keyboard press `CRTL + M` at the same time.

This will launch and close the MF_run_counter if it's saved in the same folder as these scripts.

### Close D2R and the MF_run_counter

On your keyboard press `CRTL + END` at the same time.

By default this will this will run a Backup and close the D2R and MF_run_counter windows. If you do not want create a backup when you use this hotkey you can set `backupOnExit = False` in `D2R AHK Runner.ahk`.

### Backup D2R single player characters

On your keyboard press `CRTL + B` at the same time.

This will trigger a Batch and Powershell script that zip's all of your D2R single player characters and saves it in a Backup folder located in the same directory as these scripts.

### Reload AutoHotKeyScript

On your keyboard press `CRTL + R` at the same time.

This will reload the AutoHotKey script.