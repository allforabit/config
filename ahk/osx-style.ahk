; Create the array, initially empty:
; Array := ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "1", "2", "3", "4", "5", "6", "7", "8", "9", ";", "'", "`", ",", ".", "/", "-", "="]
Array := ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "1", "2", "3", "4", "5", "6", "7", "8", "9", ";", "'", ",", ".", "/", "-", "=", "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10", "F11", "F12"]

; TODO add in `
for index, element in Array ; Enumeration is the recommended approach in most cases.
{
    ; Using "Loop", indices must be consecutive numbers from 1 to the number
    ; of elements in the array (or they must be calculated within the loop).
    ; MsgBox % "Element number " . A_Index . " is " . Array[A_Index]
    
    ; Using "for", both the index (or "key") and its associated value
    ; are provided, and the index can be *any* value of your choosing.
    
    ; On alt send ctl
    fn := Func("SendCtlKey").Bind(element)
    Hotkey, % "$!" element, % fn
                    
    ; On shift alt send shift ctl
    fn := Func("SendShiftCtlKey").Bind(element)
    Hotkey, % "$!+" element, % fn

    ; On ctl send alt
    fn := Func("SendAltKey").Bind(element)
    Hotkey, % "$^" element, % fn

    ; On shift ctl send shift alt
    fn := Func("SendShiftAltKey").Bind(element)
    Hotkey, % "$^+" element, % fn
}

SendCtlKey(element){
    Send % "^" . "{" . element . "}"
    return
}

SendShiftCtlKey(element){
    Send % "^+" . "{" . element . "}"
    return
}

SendAltKey(element){
    Send % "!" . "{" . element . "}"
    return
}

SendShiftAltKey(element){
    Send % "!+" . "{" . element . "}"
    return
}

; Close windows
!q::
    Send !{F4}
return

; minimize windows
!m::
    WinMinimize,a
return

; switch language
!space::
    Send !{Shift}
return

; open link in new tab (alt+click)
#IfWinActive ahk_class Chrome_WidgetWin_1
!LButton::
    Send ^{Click}
return
#IfWinActive