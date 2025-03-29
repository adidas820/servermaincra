taskkill /im java.exe /f
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value ^| find "="') do set datetime=%%I
set date=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%
git add .
git commit -m "Commit cerrar -%date%"
git push

pause