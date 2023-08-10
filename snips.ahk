#SingleInstance Force
SendMode "Event"
SetKeyDelay 25

linesDir := FileSelect("D", ".", "Select directory with lines to paste")
items := []
Loop Files, linesDir "\*.txt" {
    items.Push(A_LoopFileFullPath)
}

DoSnip(item) {
  if items.Length >= item {
    buf := FileRead(items[item], "UTF-8")
    lines := StrSplit(buf, "`n", "`r")
    Loop lines.Length {
      Send "{raw}" . lines[A_Index]
      Send "{Enter}"
    }
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