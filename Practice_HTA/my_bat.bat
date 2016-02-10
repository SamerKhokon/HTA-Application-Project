@echo off
set run=
tasklist /fi "imagename eq mshta.exe" | find ":" > nul
if errorlevel 1 set run=yes
if "%run%"=="yes" echo hta is running

if "%run%"=="" echo hta is not running
start /min mshta.exe "C:\Users\zahid\Desktop\Practice_HTA\timer.hta"
:kick
start /min mshta.exe "C:\Users\zahid\Desktop\Practice_HTA\timer.hta"