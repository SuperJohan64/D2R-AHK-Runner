# D2R-AHK-Runner

***NOTE - Using these scripts while playing on Battle.Net may result in you getting banned. This is for Single Player Only!***

This is an AutoHotKey Scritp for D2R Single Player that allows you to easily exit and join new games while triggering the hotkeys for [oskros' MF_run_counter](https://github.com/oskros/MF_run_counter). It also has macros that will change the player's difficulty, launch D2R, launch the MF Runner and backup D2R's single player characters to a "Backups" folder in the same directory as these scripts.

The scripts are not intended to automate any gameplay. Their purpose is to make creating games faster and give other quality of life features while farming in D2R.

## Perquisites

1. AutoHotKey - https://www.autohotkey.com
2. MF_run_counter - [https://github.com/oskros/MF_run_counter](https://github.com/oskros/MF_run_counter/releases)

## Instructions

Optional - If you want to make sure your Single Player characters are safely backed up, run these scripts from a directory that's synced with Dropbox, OneDrive, Google Drive or another Cloud storage service.

1. Install [AutoHotKey](https://www.autohotkey.com).
2. Create a shortcut for Diablo II Resurrected in the same folder as these scripts and make sure it is called "Diablo II Resurrected".
3. Right click on the "Diablo II Resurrected" shortcut and add `--exec="launch OSI"` to end of the Target.
4. Move the [MF_run_counter.exe](https://github.com/oskros/MF_run_counter/releases) to the same folder as these scripts.
5. Run the "D2R AHK Runner.ahk" file and use the macros below.

## Macros

### Create new D2R Singeplayer Game on Hell Difficulty

On your keyboard press **SHIFT + ALT + Q** at the same time.

This will trigger a macro that ends the current run you're on in the MF_run_counter, exits the current game you are in and starts a new game on Hell difficulty, then starts the MF_run_counter again.

### Launch D2R

On your keyboard **CRTL + SHIFT + ALT + P** at the same time.

This will launch a shortcut in the same folder as these scripts called "Diablo II Resurrected"

Make sure you have this shortcut created if you want to use this tool to launch the game.

### Launch MF_run_counter

On your keyboard **CRTL + SHIFT + ALT + M** at the same time.

This will launch the MF_run_counter if it's saved in the same folder as these scripts.

### Change Player's Difficulty

On your keyboard press **CRTL + Any Numpad Number**.

This will change the player's difficulty to the respective number on the numpad (except 0 and 9).

### Backup D2R Single Player Characters

On your keyboard press **CRTL + SHIFT + ALT + B** at the same time.

This will trigger a Batch and Powershell script that zip's all of your D2R single player characters and saves it in a Backup folder located in the same directory as these scripts.
