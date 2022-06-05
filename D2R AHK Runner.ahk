#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#WinActivateForce
#SingleInstance force
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

d2rPath := "Diablo II Resurrected.lnk"
mfRunnerPath := "mf_timer.exe"
backupScript := "Backup D2R SP.bat"
backupOnExit = True
launchD2ROnStartUp = False
launchMfRunnerOnStartUp = False
launchMfRunnerWithD2R = True
pauseMfRunnerWhenCreatingNewGame = True
bnetLaunchDelay = 5000
menuDelay = 100
newGameDelay = 3000
newGameRunDelay = 5000
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

; Triggers the start game macro by pressing Shift(+), ALT(!), and E at the same time. 
; This macro will create a new game on Hell difficulty from the character select screen with the currently selected character.
+!E::
	; Presses ENTER + H to start a new single player game on Hell difficulty after a delay.
	WinActivate, Diablo II: Resurrected
	Send, {Enter}
	Sleep %menuDelay%
	Send, {H}
	MouseMove, (A_ScreenWidth // 2), (A_ScreenHeight // 2)

	; Starts a new run in MF_run_counter with the default ALT + Q hotkey if MF_run_counter is running.
	If WinExist("MF run counter") {
		SendInput, {LAlt Down}{q}, {LAlt Up}
	}
return

; Triggers the exit and create new game macro by pressing Shift(+), ALT(!), and Q at the same time. 
; This will exit the current game and create a new one on Hell difficulty.
+!Q::
	If (%pauseMfRunnerWhenCreatingNewGame% = True) {
		; Ends the current run in MF_run_counter with the default ALT + W hotkey if MF_run_counter is running.
		If WinExist("MF run counter") {
			Send, {LAlt Down}{w},{LAlt Up}
		}
	}

	; Exits the Game by sending ESC, UP, UP, and ENTER with a delay between the inputs.
	WinActivate, Diablo II: Resurrected
	MouseMove, 0, 0
	Send, {Esc}
	Sleep %menuDelay%
	Send, {Up 2}
	Sleep %menuDelay%
	Send, {Down}
	Sleep %menuDelay%
	Send, {ENTER}

	; Presses ENTER + H to start a new single player game on Hell difficulty after a delay.
	Sleep %newGameDelay%
	WinActivate, Diablo II: Resurrected
	Send, {Enter}
	Sleep %menuDelay%
	Send, {H}
	MouseMove, (A_ScreenWidth // 2), (A_ScreenHeight // 2)

	; Starts a new run in MF_run_counter with the default ALT + Q hotkey if MF_run_counter is running.
	If WinExist("MF run counter") {
		SendInput, {LAlt Down}{q}, {LAlt Up}
	}
return

; Launches D2R and MF_run_counter (if enabled) by pressing Shift(+) CRTL(^) ALT(!) P at the same time.
+^!P::
	if (%launchMfRunnerWithD2R% = True) {
		If !WinExist("MF run counter") {
			Run, %mfRunnerPath%
		}
	}
	While, !WinExist("Diablo II: Resurrected") {
		Run, %d2rPath%
		Sleep %bnetLaunchDelay%
	}
	WinActivate, Diablo II: Resurrected
return

; Runs MF_run_counter by pressing Shift(+) CRTL(^) ALT(!) and M at the same time.
+^!M::
	if !WinExist("MF run counter") {	
		Run, %mfRunnerPath%
	}
return

; Closes D2R, closes MF_run_counter, and creates a backup (if enabled) by pressing the CRTL(^) and END at the same time.
^End::
	if (%backupOnExit% = True) {
		Run, %backupScript%
	}
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
	WinActivate, Diablo II: Resurrected
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players1 {Enter}
return

^Numpad2::
	WinActivate, Diablo II: Resurrected
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players2 {Enter}
return

^Numpad3::
	WinActivate, Diablo II: Resurrected
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players3 {Enter}
return

^Numpad4::
	WinActivate, Diablo II: Resurrected
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players4 {Enter}
return

^Numpad5::
	WinActivate, Diablo II: Resurrected
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players5 {Enter}
return

^Numpad6::
	WinActivate, Diablo II: Resurrected
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players6 {Enter}
return

^Numpad7::
	WinActivate, Diablo II: Resurrected
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players7 {Enter}
return

^Numpad8::
	WinActivate, Diablo II: Resurrected
	Send, {Enter} 
	Sleep %textInputDelay%
	Send, /players8 {Enter}
return