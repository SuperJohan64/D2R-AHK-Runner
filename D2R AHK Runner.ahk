#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#WinActivateForce
#SingleInstance force
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

d2rPath = "Diablo II Resurrected.lnk"
mfRunnerPath = "mf_timer.exe"
backupScript = "Backup D2R SP.bat"
backupOnExit = True
launchD2ROnStartUp = False
launchMfRunnerOnStartUp = False
launchMfRunnerWithD2R = True
bnetLaunchDelay = 6000
menuDelay = 25
newGameDelay = 4000
textInputDelay = 50

if (%launchD2ROnStartUp% = True) {
	Run, %d2rPath%
}
if (%launchMfRunnerOnStartUp% = True) {
	Run, %mfRunnerPath%
}

; Allows you to reload the script by pressing CRTL(^) + R at the same time.
^r::
	Reload
return
	
; Triggers the new game macro by pressing Shift(+), ALT(!), and Q at the same time.
+!Q::
	; Ends the current run in MF_run_counter with the default ALT + W hotkey.
	Send {LAlt Down}{w},{LAlt Up}

	; Exits the Game by sending ESC, UP, UP, and ENTER with a delay between the inputs.
	Send, {Esc}
	Sleep %menuDelay%
	Send, {Up 2}
	Sleep %menuDelay%
	Send, {Down}
	Sleep %menuDelay%
	Send, {ENTER}

	; Presses ENTER + H to start a new single player game on Hell difficulty after a delay.
	Sleep %newGameDelay%
	Send, {Enter}
	Sleep %menuDelay%
	Send, {H}

	; Starts a new run in MF_run_counter with the default ALT + Q hotkey.
	Send, {LAlt Down}{q}, {LAlt Up}
return

; Launches D2R and MF_run_counter by pressing Shift(+) CRTL(^) ALT(!) P at the same time.
+^!P::
	if !WinExist("Diablo II: Resurrected") {
		Run, %d2rPath%
		if !WinExist("Diablo II: Resurrected") {
			Sleep %bnetLaunchDelay%
			Run, %d2rPath%
		}
	}
	if (%launchMfRunnerWithD2R% = True) {
		If !WinExist("MF run counter") {
			Run, %mfRunnerPath%
		}
	}
return

; Runs MF_run_counter by pressing Shift(+) CRTL(^) ALT(!) and M at the same time.
+^!M::
	Run, %mfRunnerPath%
return

; Closes D2R, closes MF_run_counter, and creates a backup (if enabled) by pressing the CRTL(^) and END at the same time.
^End::
	if (%backupOnExit% = True)
		Run, %backupScript%
	If WinExist("Diablo II: Resurrected") {
		WinClose
	}
	If WinExist("MF run counter") {
		WinClose
	}
	if WinExist("Battle.net") {
		WinClose
	}
return

; Runs the backup script by pressing Shift(+) CRTL(^) ALT(!) and B at the same time.
+^!B::
	Run, %backupScript%
return

; Macros that change the player difficulty in Diablo 2 single player by pressing CRTL (^) and a number on the keypad.
^Numpad1::
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players1 {Enter}
return

^Numpad2::
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players2 {Enter}
return

^Numpad3::
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players3 {Enter}
return

^Numpad4::
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players4 {Enter}
return

^Numpad5::
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players5 {Enter}
return

^Numpad6::
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players6 {Enter}
return

^Numpad7::
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players7 {Enter}
return

^Numpad8::
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players8 {Enter}
return