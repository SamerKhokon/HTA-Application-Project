If WScript.Arguments.length =0 Then
	Set objShell = CreateObject("Shell.Application")

	objShell.ShellExecute "wscript.exe", Chr(34) & _
	WScript.ScriptFullName & Chr(34) & " uac", "", "runas", 1
Else
	WScript.Echo "This code is ran as an elevated user, ie. 'Administrator'"
End If