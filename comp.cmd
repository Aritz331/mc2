@echo ^> @echo foo bar- i mean off :sweat_smile:
@echo.off
@echo - wtf
@echo off
timeout 3 /nobreak >nul 2>&1
cls

setlocal enableextensions enabledelayedexpansion

set "fnu=0"

call :move m mc
call :move j j

goto end

:move
for /f "tokens=*" %%i in ('dir /s /b /a-D %2\') do (
  set /a "fnu += 1"
  if defined fnu (move "%%i" ".\%1-!fnu!.b")
)
dir /b /a-D mc\ >nul 2>&1 || rd mc\ /s /q
dir /b /a-D j\ >nul 2>&1 || rd j\ /s /q
exit /b

:end
endlocal