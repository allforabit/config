; Ctrl & Tab::AltTab
; TODO get shift ctrl tab working and get alt-tab mapped to ctrl-tab
; Remap Ctrl-Tab to Alt-Tab
^Tab::
Send {Alt down}{Tab}
Keywait Control
Send {Alt up}
return

; Remap Ctrl-Shift-Tab to Alt-Shift-Tab
^+Tab::
Send {Alt down}{Shift down}{Tab}
Keywait Control
Send {Alt up}
Send {Shift up}
return