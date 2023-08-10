#SingleInstance Force
SendMode "Event"
SetKeyDelay 25

linesFile := FileSelect(1, ".", "Select Lines File", "Text Documents (*.txt)")
buf := FileRead(linesFile, "UTF-8")
lines := StrSplit(buf, "`n", "`r")

DoSnip(line) {
  if lines.Length >= line {
      Send "{raw}" . lines[line]
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
