#Persistent   
SetTitleMatchMode, 2 ; match part of the title
Return

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
if WinExist("ahk_exe chrome.exe")
{
    if WinActive("ahk_exe chrome.exe")
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
