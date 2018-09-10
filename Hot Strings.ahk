#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

EnvGet, Initials, IV_INITIALS

:://ivissue::
InputBox, IssueNumber, Issue Number, Enter Issue Number
return

; Change note with three slashes and issue.
:://cnxml::
	send {Text}<!-- %A_YYYY%%A_MM%%A_DD%: %Initials%: %IssueNumber%:  -->
	send {Left}
	send {Left}
	send {Left}
	send {Left}
return

; Change note with three slashes, YYYYMMDD and issue.
::///cn::
	send /// %A_YYYY%%A_MM%%A_DD%: %Initials%: %IssueNumber%:{space}
return

; Change note with two slashes and issue.
:://cn::
	send // %A_YYYY%%A_MM%%A_DD%: %Initials%: %IssueNumber%:{space}
return

; Change note with no slashes
::/cn::
	send %A_YYYY%%A_MM%%A_DD%: %Initials%: %IssueNumber%:{space}
return

; ReView Note
:://rvn::
send > %A_YYYY%%A_MM%%A_DD%: %Initials%:{space}
return

; ReView Revision
:://rvr::
send | X       | %Initials%  | %A_YYYY%%A_MM%%A_DD% | InProgress | Reviewed                                                                             |
return