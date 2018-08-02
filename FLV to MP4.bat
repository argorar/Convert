ECHO OFF
for %%a in ("*.flv") do (
ffmpeg -i "%%a" -c copy -copyts "%%~na.mp4"
del "%%~na.ts"
)
cls
ECHO.
ECHO Job done!
ECHO.
pause