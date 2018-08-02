ECHO OFF
for %%a in ("*.ts") do (
ffmpeg -i "%%a" -c copy -bsf:a aac_adtstoasc "%%~na.mp4"
del "%%~na.ts"
)
cls
ECHO.
ECHO Job done!
ECHO.
pause