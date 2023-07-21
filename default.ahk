#Requires AutoHotkey v2.0
#SingleInstance Force
SetTitleMatchMode "RegEx"

^!h::Run "C:\Program Files\AutoHotkey\UX\AutoHotkeyUX.exe d:\Documents\AutoHotkey\default_ver2.ahk"

ToggleApp(win_title, app_cmd) {
	if WinActive(win_title)
		WinMinimize
	else if WinExist(win_title)
		WinActivate
	else
		Run app_cmd
	return
}

^!s::ToggleApp("^(.+ - )?Sublime Text( \(UNREGISTERED\))?$", "C:\Program Files\Sublime Text\sublime_text.exe")
^!v::ToggleApp("^(.+ - )*Visual Studio Code$", "C:\Users\nifux\AppData\Local\Programs\Microsoft VS Code\Code.exe")
^!p::ToggleApp("^Spyder \(Python \d+\.\d+\)$", "C:\Users\xPhoenix\anaconda3\pythonw.exe C:\Users\xPhoenix\anaconda3\cwp.py C:\Users\xPhoenix\anaconda3 C:\Users\xPhoenix\anaconda3\pythonw.exe C:\Users\xPhoenix\anaconda3\Scripts\spyder-script.py")
^!w::ToggleApp("^.+ - VNC Viewer$","")
^!n::ToggleApp("^.+ - Notepad$", "notepad")
^!d::ToggleApp("^(.+ - )+OneNote$", "onenote")
^!e::ToggleApp("^(.+ - )+Microsoft​ Edge$", "msedge")

^!m:: {
    buttonState := DllCall("user32.dll\SwapMouseButton", "UInt", 1)
    if buttonState != 0
    {
        buttonState := DllCall("user32.dll\SwapMouseButton", "UInt", 0)
    }
    Return
}


