::Push script.
::Github is hard to automate.
::git config --global credential.helper wincred

::Copy index.html
copy /y C:\Darren\github\UpdateScripts\autodate\index.html C:\Darren\github\emailpage\index.html


cd C:\Darren\github\emailpage

git add test.txt
git commit -m "Beep Boop %datetime%"
git push origin gh-pages
