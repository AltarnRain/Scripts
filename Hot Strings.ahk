#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

; Change note with three slashes and LS-
::///cn::
	send ///{space}%A_YYYY%%A_MM%/%A_DD%: OI:{space}LS-
return


; Change note with two slashes and LS-
:://cn::
	send //{space}%A_YYYY%%A_MM%/%A_DD%: OI:{space}LS-
return

; Change note with no slashes
::/cn::
	send %A_YYYY%%A_MM%/%A_DD%: OI:{space}
return

:://aaa::
(
// Arrange

// Act

// Assert
)
Return


