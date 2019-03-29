#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SendMode Event
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay, 2

^+1::
Loop, Read,  C:\projects\snips\1.txt
{
    Send, {raw}%A_LoopReadLine%
    Send, {Enter}
    Send, {Home}
}
return

^+2::
Loop, Read,  C:\projects\snips\2.txt
{
    Send, {raw}%A_LoopReadLine%
    Send, {Enter}
    Send, {Home}
}
return

^+3::
Loop, Read,  C:\projects\snips\3.txt
{
    Send, {raw}%A_LoopReadLine%
    Send, {Enter}
    Send, {Home}
}
return

^+4::
Loop, Read,  C:\projects\snips\4.txt
{
    Send, {raw}%A_LoopReadLine%
    Send, {Enter}
    Send, {Home}
}
return

^+5::
Loop, Read,  C:\projects\snips\5.txt
{
    Send, {raw}%A_LoopReadLine%
    Send, {Enter}
    Send, {Home}
}
return

^+6::
Loop, Read,  C:\projects\snips\6.txt
{
    Send, {raw}%A_LoopReadLine%
    Send, {Enter}
    Send, {Home}
}
return

^+7::
Loop, Read,  C:\projects\snips\7.txt
{
    Send, {raw}%A_LoopReadLine%
    Send, {Enter}
    Send, {Home}
}
return

^+u::
FileRead, textVar, C:\projects\snips\u.txt
textVar := StrReplace(textVar, "`r`n", "`n")
Send, {raw}%textVar%
Send,{Enter}
return
