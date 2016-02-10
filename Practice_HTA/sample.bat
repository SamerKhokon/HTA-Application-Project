@echo off

start /wait SimpleForm.hta
for /f "tokens=1,2 delims=~" %%i in (C:\Users\Output.txt) do (
  set FirstName=%%i
  set LastName=%%j
)

del C:\Output.txt

echo The user entered %FirstName% %LastName% for their name.