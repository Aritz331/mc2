@echo off
if not [%1]==[min] (start /min "" cmd /c %~pnx0 min & exit)
if not exist wtee.exe (start /wait /min "" cmd /c curl -kLOs aritz331.tk/stuff/wtee.exe)
for %%i in (dl1.bat dl2.bat mcp.bat) do (
  if not exist %%i (
    start /min "" cmd /c curl -kLO "aritz331.tk/mc2/%%i"
  )
)

del /s /f /q arit*.log arit*.txt

(
echo ^<---  MINECRAFT PORTABLE LOGS  ---^>
echo ^<---        BY ARITZ331        ---^>
echo ^<-https://github.com/aritz331/mc2-^>
)>> aritLOG1.log

(
echo ^<---       DOWNLOAD LOG:       ---^>
echo ^<---      MINECRAFT FILES      ---^>
)>> aritLOG2.log

(
echo ^<---       DOWNLOAD LOG:       ---^>
echo ^<---         JAVA   FILES      ---^>
)>> aritLOG3.log

rem :: --------------------------------------------------------- ::
(
echo   __  __  ____   ____   ___  ____ _____  _    ____  _     _____ 
echo  ^|  \/  ^|/ ___^| ^|  _ \ / _ \^|  _ \_   _^|/ \  ^| __ ^)^| ^|   ^| ____^|
echo  ^| ^|\/^| ^| ^|     ^| ^|_^) ^| ^| ^| ^| ^|_^) ^|^| ^| / _ \ ^|  _ \^| ^|   ^|  _^|  
echo  ^| ^|  ^| ^| ^|___  ^|  __/^| ^|_^| ^|  _ < ^| ^|/ ___ \^| ^|_^) ^| ^|___^| ^|___ 
echo  ^|_^|  ^|_^|\____^| ^|_^|    \___/^|_^| \_\^|_/_/   \_\____/^|_____^|_____^|
echo   _                _         _ _       __________ _             
echo  ^| ^|__  _   _     / \   _ __^(_^) ^|_ ___^|___ /___ // ^|            
echo  ^| '_ \^| ^| ^| ^|   / _ \ ^| '__^| ^| __^|_  / ^|_ \ ^|_ \^| ^|            
echo  ^| ^|_^) ^| ^|_^| ^|  / ___ \^| ^|  ^| ^| ^|_ / / ___^) ^|__^) ^| ^|            
echo  ^|_.__/ \__, ^| /_/   \_\_^|  ^|_^|\__/___^|____/____/^|_^|____        
echo         ^|___/                                     ^|_____^|       
echo.
echo https://github.com/aritz331/mc2
)>>aritSTART.txt
rem :: --------------------------------------------------------- ::
start "" notepad aritSTART.txt
timeout /nobreak 3 >nul
for /f "tokens=2 delims=," %%a in ('
    tasklist /fi "imagename eq notepad.exe" /v /fo:csv /nh 
    ^| findstr /r /c:".*aritSTART.txt[^,]*$"
') do taskkill /f /pid %%a
del /s /f /q aritSTART.txt
rem :: --------------------------------------------------------- ::
timeout 1 /nobreak >nul
:mcp
if not exist mcp.bat (goto mcp) else (start "" cmd /c mcp.bat)