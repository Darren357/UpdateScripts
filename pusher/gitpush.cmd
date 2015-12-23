::Push script.
::Github is hard to automate.
::git config --global credential.helper wincred

::Copy time.js
copy /y C:\Darren\github\UpdateScripts\time.js C:\Darren\github\emailpage\time.js


cd C:\Darren\github\emailpage

git add time.js
git commit -m "Beep Boop"
git push origin gh-pages