@ECHO OFF
ping localhost -n 240 > nul
for /f %%z in ('tasklist ^| find /C "mshta"') do set COUNT=%%z
for /f %%z in ('wmic process get commandline /all ^| find "mshta" ^| find /C "asahi"') do set COUNT=%%z
if %COUNT% == 0 goto KICK
if %COUNT% == 1 goto KICK
exit /b
:KICK	
"C:\Users\zahid\Desktop\Practice_HTA\my_bat.bat"
