#!/bin/sh
# -------------------
# Deploy posts to `did7`
# -------------------

if exist "public" (
    rem rm /S /Q "public\CNAME" & copy /Y "CNAME" "public\"
    
    xcopy /E /I "public" "..\.temp"
    cd "..\.temp"
    echo %cd%
    git init
    git add .
    git commit -m "Posts update."
    git remote add origin https://github.com/flyman666/did7.git
    rem git remote add origin https://github.com/flyman666/did7.git
    rem git push -f origin master:main
    git push -f origin master
    cd ..
    rmdir /S /Q ".temp"
    cd "did7"
)
