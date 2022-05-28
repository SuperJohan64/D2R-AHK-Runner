runD2RonStartUp = False
runMFTimeonStartUp = False
menuDelay = 10
newGameDelay = 3000
textInputDelay = 50

if (%runD2RonStartUp% = True) {Run, "Diablo II Resurrected.lnk"}
if (%runD2RonStartUp% = True) {Run, "mf_timer.exe"}

; Allows you to reload the script by pressing CRTL(^) + R
^r::
	Reload
return
	
; Triggers the new game macro by pressing Shift(+) ALT(!) and Q at the same time.
+!Q::
	; Ends the MF Timer with the default ALT + W Hotkey
	Send, {LAlt Down}{w}, {LAlt Up}

	; Exits the Game by pressing ESC + UP + UP + ENTER
	Send, {Esc}
	Sleep %menuDelay%
	Send, {Up 2}
	Sleep %menuDelay%
	Send, {Down}
	Sleep %menuDelay%
	Send, {ENTER}
	Sleep %newGameDelay%

	; Presses ENTER + H to start a new single player game on Hell difficulty
	Send, {Enter}, {H}

	; Starts the MF Timer with the default ALT + Q Hotkey
	Send, {LAlt Down}{q}, {LAlt Up}
return

; Runs the backup script by pressing Shift(+) CRTL(^) ALT(!) and P at the same time.
+^!P::
	Run, "Diablo II Resurrected.lnk"
return

; Runs the MF Timer by pressing Shift(+) CRTL(^) ALT(!) and M at the same time.
+^!M::
	Run, "mf_timer.exe"
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
