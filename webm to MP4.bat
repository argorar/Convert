ECHO OFF
for %%a in ("*.webm") do (
ffmpeg -i "%%a" "%%~na.mp4"
del "%%~na.webm"
)
ECHO.
ECHO Job done!
ECHO.
pause