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
