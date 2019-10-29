
; FD
~f:: ; the ~ means that AHK should not prevent the key from targeting other programs. Without this, the key would be effectively disabled for you.
KeyWait, d, D T0.1 ; wait for d
If(ErrorLevel=1) ; If you didn't press Enter within n ms, the hotkey's thread will end
  Return
If(ErrorLevel=0)
  Send {BS 2}{esc} 
Return