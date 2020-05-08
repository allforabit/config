#SingleInstance, Force
#KeyHistory, 0
SetBatchLines, -1
ListLines, Off
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
SetTitleMatchMode, 1 ;  A window's title must start with the specified WinTitle to be a match.
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling
; DetectHiddenWindows, On
; SetWinDelay, -1 ; Remove short delay done automatically after every windowing command except IfWinActive and IfWinExist
; SetKeyDelay, -1, -1 ; Remove short delay done automatically after every keystroke sent by Send or ControlSend
; SetMouseDelay, -1 ; Remove short delay done automatically after Click and MouseMove/Click/Drag
#Persistent

; SetTimer, AutoHideChrome, 500
; return

; TODO return early from these
; TODO check if chrome is actually open
; TODO some consideration for when you chrome is active
; TODO find a way to hide chrome
; AutoHideChrome:
; if WinActive("ahk_exe code.exe") {
;     WinRestore, ahk_exe chrome.exe
;     WinActivate, ahk_exe code.exe
; }
; else {
;     WinMinimize, ahk_exe chrome.exe
; }
; return

#b:: ;Browser (vivaldi)
if WinExist("ahk_exe brave.exe")
{
    if WinActive("ahk_exe brave.exe")
    {
        SendInput !{Esc}
    }
    else
        WinActivate
    return
}
else
    Run "C:\Program Files (x86)\BraveSoftware\Brave-Browser\Application\brave.exe"
return


#c:: ;Chromium
if WinExist("ahk_exe chrome.exe") {
    if WinActive("ahk_exe chrome.exe") and !WinActive("DevTools") {
        SendInput !{Esc}
    } else {
        WinActivate, ahk_exe chrome.exe,, DevTools
    }
} else {
    Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
}
return


#f:: ;Firefox
if WinExist("ahk_class MozillaWindowClass")
{
    if WinActive("ahk_class MozillaWindowClass")
    {
        SendInput !{Esc}
    }
    else
        WinActivate
    return
}
else
    Run "C:\Program Files\Mozilla Firefox\firefox.exe"
return


#m:: ;MS edge
if WinExist("ahk_exe msedge.exe")
{
    if WinActive("ahk_exe msedge.exe")
    {
        SendInput !{Esc}
    }
    else
        WinActivate
    return
}
else
    Run "C:\Program Files (x86)\Microsoft\Edge Beta\Application\edge.exe"
return

#v:: ;Visual studio code
if WinExist("ahk_exe code.exe")
{
    if WinActive("ahk_exe code.exe")
    {
        SendInput !{Esc}
    }
    else
        WinActivate
    return
}
else
    Run "C:\Users\kevno\AppData\Local\Programs\Microsoft VS Code\Code.exe"
return

#t:: ;Visual studio code
if WinExist("ahk_exe mintty.exe")
{
    if WinActive("ahk_exe mintty.exe")
    {
        SendInput !{Esc}
    }
    else
        WinActivate
    return
}
else
    Run C:\Program Files\Git\git-bash.exe, C:\Users\kevno\Documents\GitHub
return

#i:: ; Chrome inspector
if WinActive("DevTools")
{
    SendInput !{Esc}
}
else
    WinActivate, DevTools
return
