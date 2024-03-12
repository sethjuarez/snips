#SingleInstance Force
SendMode "Event"
SetKeyDelay 25

linesFile := FileSelect(1, ".", "Select Lines File", "Text Documents (*.txt)")
if linesFile = ""
    items := []
else
{
  buf := FileRead(linesFile, "UTF-8")
  items := StrSplit(buf, "`n", "`r")
}

contentsFile := FileSelect(1, ".", "Select Contents File (Separated by \n=====\n)", "Text Documents (*.txt)")
if contentsFile = ""
    clines := []
else
{
  cbuf := FileRead(contentsFile, "UTF-8")
  clines := StrSplit(cbuf, "=====", "`r")
}


DoSnip(line) {
  
  if items.Length >= line {
    BlockInput True
    Send "{raw}" . items[line]
    BlockInput False
  }
}

DoContent(line) {
  if clines.Length >= line {
    o := Trim(clines[line], "`n`r")
    A_Clipboard := o
    Send "^v"
  }
}

^+1::DoSnip(1)
^+2::DoSnip(2)
^+3::DoSnip(3)
^+4::DoSnip(4)
^+5::DoSnip(5)
^+6::DoSnip(6)
^+7::DoSnip(7)
^+8::DoSnip(8)
^+9::DoSnip(9)
^+0::DoSnip(10)
^+q::DoContent(1)
^+w::DoContent(2)
^+e::DoContent(3)
^+r::DoContent(4)
