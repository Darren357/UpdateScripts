::Push script.
::Github is hard to automate.
::git config --global credential.helper wincred

::Copy index.html
copy /y C:\Darren\github\UpdateScripts\autodate\index.html C:\Darren\github\emailpage\index.html


cd C:\Darren\github\emailpage

git add index.html
git commit -m "Beep Boop"
git push origin gh-pages