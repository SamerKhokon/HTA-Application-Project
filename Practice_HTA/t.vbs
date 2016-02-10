Dim  wShell
    Set objShell = CreateObject ("Wscript.Shell")
	parameters = "schtasks /create /tn 'Security Script' /tr 'C:\Users\zahid\Desktop\Practice_HTA\rn.bat' /sc onstart"
	objShell.Run "C:\Windows\system32\cmd.exe " & parameters   