#SingleInstance, Force
#KeyHistory, 0
SetBatchLines, -1
ListLines, Off
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
SetTitleMatchMode, 1 ;  A window's title must start with the specified WinTitle to be a match.
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling

#Persistent
SetTimer, AutoToggleInspector, 500
return

ShowDevTools := false

AutoToggleInspector:
if(ShowDevTools) {
    if WinActive("ahk_exe code.exe") {
        Winset, Top, , DevTools
        Winset, AlwaysOnTop, on, DevTools
    }
    else {
        if !WinActive("DevTools") {
            WinSet, AlwaysOnTop, off, DevTools
            WinSet, Bottom,, DevTools
        }
    }
}
return

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
    Run "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
return


#c:: ;Chromium
if WinExist("ahk_exe chrome.exe") {
    if WinActive("ahk_exe chrome.exe") and !WinActive("DevTools")
    {
        SendInput !{Esc}
    }
    else
        WinActivate, ahk_exe chrome.exe,, DevTools
    return
} else {
    Run "C:\Program Files\Google\Chrome\Application\chrome.exe"
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
    if WinActive("ahk_exe msedge.exe") and !WinActive("DevTools") 
    {
        SendInput !{Esc}
    }
    else
        WinActivate, ahk_exe msedge.exe,, DevTools
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

#t::
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


$^+i:: ; Dev tools inspector
if WinActive("DevTools")
{
    ShowDevTools := false
    WinSet, Alwaysontop, off, DevTools
    WinSet, Bottom,, DevTools
    SendInput !{Esc}
}
else {
    if WinActive("ahk_exe code.exe")
    {
        ShowDevTools := true
        WinActivate, DevTools
        WinSet, AlwaysOnTop, on, DevTools
    }
    else
        send ^+i
    return
}
return

