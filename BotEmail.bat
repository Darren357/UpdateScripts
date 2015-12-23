::The main operator, started by Thunderbird with the Mailbox Alert add-on

::No longer needed
::start /D "C:\Darren\github\UpdateScripts\autodate\" replace.cmd html.txt index.html

::So Simple
datetime

timeout /t 3

start /D "C:\Darren\github\UpdateScripts\pusher" gitpush.cmd

