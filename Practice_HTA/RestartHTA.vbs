MSHTA = "mshta.exe"
sHTA = "para.hta"

say "waiting for process " & MSHTA & " with param " & sHTA & " to end"
secs = 2000

bRunning = vbTrue
do while bRunning
  if ProcessRunning(MSHTA, sHTA) then
    say "still running, wait a few seconds"
    WScript.Sleep secs
  else
    bRunning = vbFalse
  end if
loop

say "HTA not found, proceding to restart"
WScript.Sleep secs

CreateObject("WScript.Shell").Run(sHTA)
WScript.Quit


function ProcessRunning(sProcess, sParam)
  set oWMI = GetObject( _
    "winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")
  set cProcs = oWMI.ExecQuery( _
    "select * from Win32_Process where Name = '" & sProcess & "'")

  bFound = vbFalse
  for each oProc in cProcs
    say oProc.Name & ": " & oProc.CommandLine
    if (InStr(oProc.CommandLine, sParam) > 0) then
      say "found"
      bFound = vbTrue
    else
      say "wrong param"
    end if
  next

  ProcessRunning = bFound
end function

sub Say(s)
  WScript.Echo s
end sub

