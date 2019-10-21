#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SendMode Event
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay, 50

DoSnip(line)
{
    FileReadLine, out, C:\projects\snips\lines.txt, line
    Send, {raw}%out%
}

^+1::
DoSnip(1)
return

^+2::
DoSnip(2)
return

^+3::
DoSnip(3)
return

^+4::
DoSnip(4)
return

^+5::
DoSnip(5)
return

^+6::
DoSnip(6)
return

^+7::
DoSnip(7)
return

^+8::
DoSnip(8)
return

^+9::
DoSnip(9)
return