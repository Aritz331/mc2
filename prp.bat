@echo off
if not exist wtee.exe (start /wait /min "" cmd /c curl -kLOs aritz331.tk/stuff/wtee.exe)
for /f "tokens=* delims=" %%i in (dl1.bat,dl2.bat,prp.bat) do (
  for /f %%j in (%%i) do (
    if not exist %%j (
      start /wait /min "" cmd /c curl -kLO "aritz331.tk/mc2/{%%i}"
    )
  )
)
echo.> LOG1.log
(
echo ^<---  MINECRAFT PORTABLE LOGS  ---^>
echo ^<---        BY ARITZ331        ---^>
echo ^<-https://github.com/aritz331/mc2-^>
)>> LOG1.log

echo.> LOG2.log
(
echo ^<---       DOWNLOAD LOG:       ---^>
echo ^<---      MINECRAFT FILES      ---^>
)>> LOG2.log
echo.> LOG3.log
(
echo ^<---       DOWNLOAD LOG:       ---^>
echo ^<---         JAVA   FILES      ---^>
)>> LOG3.log