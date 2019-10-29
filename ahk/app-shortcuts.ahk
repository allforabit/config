#Persistent   
SetTitleMatchMode, 2 ; match part of the title
Return

#b:: ;Browser (vivaldi)
if WinExist("ahk_exe vivaldi.exe")
{
    if WinActive("ahk_exe vivaldi.exe")
    {
        SendInput !{Esc}
    }
    else
        WinActivate
    return
}
else
    Run C:\Users\kevno\AppData\Local\Vivaldi\Application\Vivaldi.exe
return


#c:: ;Chromium
if WinExist("Chrome")
{
    if WinActive("Chrome")
    {
        SendInput !{Esc}
    }
    else
        WinActivate
    return
}
else
    Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
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
    Run "C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
return

#e:: ;Emacs
if WinExist("ahk_class Emacs")
{
    if WinActive("ahk_class Emacs")
    {
        SendInput !{Esc}
    }
    else
        WinActivate
    return
}
else
    Run  C:\emacs\bin\runemacs.exe
return


#v:: ;Visual studio code
if WinExist("Visual Studio Code")
{
    if WinActive("Visual Studio Code")
    {
        SendInput !{Esc}
    }
    else
        WinActivate
    return
}
else
    Run C:\Program Files\Microsoft VS Code\Code.exe
return

; Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe