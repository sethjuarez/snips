#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SendMode Event
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay, 2

DoSnip(file)
{
    Send, {Home}
    Loop, Read, %file%
    {
        Send, {raw}%A_LoopReadLine%
        Send, {Enter}
        Send, {Home}
    } 
}

^+1::
DoSnip("C:\projects\snips\1.txt")
return

^+2::
DoSnip("C:\projects\snips\2.txt")
return

^+3::
DoSnip("C:\projects\snips\3.txt")
return

^+4::
DoSnip("C:\projects\snips\4.txt")
return

^+5::
DoSnip("C:\projects\snips\5.txt")
return

^+6::
DoSnip("C:\projects\snips\6.txt")
return

^+7::
DoSnip("C:\projects\snips\7.txt")
return

^+u::
DoSnip("C:\projects\snips\u.txt")
return
