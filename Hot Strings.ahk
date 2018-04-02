#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

FormatTime, YMD,, yyyyMMdd

; Change note with no slashes
::/cn::
	send %YMD%: OI:{space}
return

; Change note with no slashes
::/cnls::
	send %YMD%: OI:{space}
return

; Change note with two slashes
:://cn::
	send //%YMD%: OI:{space}
return

; Change note with two slashes and LS-
:://cnls::
	send //%YMD%: OI:{space}LS-
return

; Change note with three slashes
::///cn::
	send ///%YMD%: OI:{space}
return


; Change note with three slashes and LS-
::///cnls::
	send ///%YMD%: OI:{space}LS-
return


