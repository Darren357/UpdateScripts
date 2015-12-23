::examlpe: replace html.txt index.html
::Mashed Together by Darren McCaul 12/21/2015
::Scripts from Various people online.
::@echo off

::After moodifying the javascript, I no longer need the replace scripts.

::if not exist "%1" (echo this file does not exist...)&goto :eof

::Getting Current Date & Time
for /f "tokens=*" %%a in ('time /t') do set time=%%a
for /f "tokens=2" %%a in ('date /t') do set date=%%a
set datetime=%date% %time%

echo TargetDate = "%datetime%"; > datetime.js

::Getting Old Date & Time
::for /f "tokens=*" %%a in ('findstr "TargetDate" %1 ') do set oldline=%%a
::set oldtime=%oldline:~13,21%
::set newtime=%datetime%

::if exist %2 del %2
::Scripts
::@echo on
::cscript replacescript.vbs "%1" "%oldtime%" "%newtime%" >> %2

::Using cscript adds Microsoft info at the top 3 lines,
::So I hack it off
::cleantop.vbs %2