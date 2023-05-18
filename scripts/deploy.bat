IF EXIST "public" (
    xcopy "public" "..\.temp" /E /I
    cd "..\.temp"
    echo %cd%
    git init
    git add .
    git commit -m "Posts Add."
    git remote add origin https://github.com/flyman666/did7.git
    git push -f origin master
    cd ..
    rmdir /S /Q ".temp"
    pushd D:\did7\
)
