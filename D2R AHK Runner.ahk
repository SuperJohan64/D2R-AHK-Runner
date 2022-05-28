d2rPath = "Diablo II Resurrected.lnk"
mfTimerPath = "mf_timer.exe"
runD2RonStartUp = False
runMFTimerOnStartUp = False
menuDelay = 10
newGameDelay = 3000
textInputDelay = 50

if (%runD2RonStartUp% = True) {
	Run, %d2rPath%
}

if (%runMFTimerOnStartUp% = True) {
	Run, %mfTimerPath%
}

; Allows you to reload the script by pressing CRTL(^) + R at the same time.
^r::
	Reload
return
	
; Triggers the new game macro by pressing Shift(+), ALT(!), and Q at the same time.
+!Q::
	; Ends the MF Timer with the default hotkey.
	Send, {LAlt Down}{w}, {LAlt Up}

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
	Send, {Enter}, {H}

	; Starts the MF Timer with the default ALT(!) + Q at the same time.
	Send, {LAlt Down}{q}, {LAlt Up}
return

; Runs the backup script by pressing Shift(+) CRTL(^) ALT(!) and P at the same time.
+^!P::
	Run, %d2rPath%
return

; Runs the MF Timer by pressing Shift(+) CRTL(^) ALT(!) and M at the same time.
+^!M::
	Run, %mfTimerPath%
return

; Runs the backup script by pressing Shift(+) CRTL(^) ALT(!) and B at the same time.
+^!B::
	Run, "Backup D2R SP.bat"
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
