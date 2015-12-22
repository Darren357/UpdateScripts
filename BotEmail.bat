::The main operator, started by Thunderbird with the Mailbox Alert add-on

start /D "C:\Darren\github\UpdateScripts\autodate\" replace.cmd html.txt index.html

timeout /t 10

start /D "C:\Darren\github\UpdateScripts\pusher" gitpush.cmd

