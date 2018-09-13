#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SendMode Event
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay, 1

^+1::
FileRead, textVar, C:\projects\snips\1.txt
textVar := StrReplace(textVar, "`r`n", "`n")
Send, {raw}%textVar%
Send, {Enter}
return

^+2::
FileRead, textVar, C:\projects\snips\2.txt
textVar := StrReplace(textVar, "`r`n", "`n")
Send, {raw}%textVar%
Send, {Enter}
return

^+3::
FileRead, textVar, C:\projects\snips\3.txt
textVar := StrReplace(textVar, "`r`n", "`n")
Send, {raw}%textVar%
Send, {Enter}
return

^+4::
FileRead, textVar, C:\projects\snips\4.txt
textVar := StrReplace(textVar, "`r`n", "`n")
Send, {raw}%textVar%
Send, {Enter}
return

^+5::
FileRead, textVar, C:\projects\snips\5.txt
textVar := StrReplace(textVar, "`r`n", "`n")
Send, {raw}%textVar%
Send, {Enter}
return

^+6::
FileRead, textVar, C:\projects\snips\6.txt
textVar := StrReplace(textVar, "`r`n", "`n")
Send, {raw}%textVar%
Send, {Enter}
return

^+7::
FileRead, textVar, C:\projects\snips\7.txt
textVar := StrReplace(textVar, "`r`n", "`n")
Send, {raw}%textVar%
Send, {Enter}
return

^+u::
FileRead, textVar, C:\projects\snips\u.txt
textVar := StrReplace(textVar, "`r`n", "`n")
Send, {raw}%textVar%
Send,{Enter}
return
