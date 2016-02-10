set run=
tasklist /fi "imagename eq mshta.exe" | find ":" > nul
if errorlevel 1 set run=yes
if "%run%"=="yes" (
	echo hta is running
)else (
	start /min mshta.exe "C:\Users\zahid\Desktop\Practice_HTA\anaconda.hta"
)