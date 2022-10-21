cls
@echo off
color 0e
echo.
echo Choose a desired scale from the list.
echo.
echo Enter 96  for 100%%
echo Enter 120 for 125%%
echo Enter 144 for 150%%
echo Enter 192 for 200%%  (Good for 4K monitors)
echo Enter 288 for 300%%  (Good for Surface Tablets where someone normally needs 150%%)
echo Enter 384 for 400%%  (Cannot think of any ideal use for this.)
echo.
set /p scale=Set the number from the table above for the desired zoom scale: 
reg add "HKCU\Control Panel\Desktop" /v LogPixels /t REG_DWORD /d %scale% /f
echo.
echo You must log off in order for the settings to apply.  Close all programs and
pause
logoff