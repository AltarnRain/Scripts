#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

EnvGet, Initials, IV_INITIALS

; Change note with three slashes and LS-
:://cnxml::
	send {Text}<!-- %A_YYYY%%A_MM%%A_DD%: %Initials%:  -->
	send {Left}
	send {Left}
	send {Left}
	send {Left}
return

; Change note with three slashes and LS-
::///cn::
	send ///{space}%A_YYYY%%A_MM%%A_DD%: %Initials%:{space}
return

; Change note with two slashes and LS-
:://cn::
	send //{space}%A_YYYY%%A_MM%%A_DD%: %Initials%:{space}
return

; Change note with no slashes
::/cn::
	send %A_YYYY%%A_MM%%A_DD%: %Initials%:{space}
return

; ReView Note
:://rvn::
send >{space}%A_YYYY%%A_MM%%A_DD%:{space}%Initials%:{space}
return

; ReView Revision
:://rvr::
send | X       | %Initials%  | %A_YYYY%%A_MM%%A_DD% | InProgress | Reviewed                                                                             |
return
