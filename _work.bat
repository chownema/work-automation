REM # Workspace Suite 0.1
wrongInput=0

@echo off
echo Hello Miguel what would you like to do?
echo    1 Open Post Man
echo    2 Open Work Space
echo    3 Open Todos
echo    4 Open LocalHost participant login to meeting

set /p command= Please input a number :


REM Run commands 

REM REM localhost
IF %command%==1 (
    echo Where would you like to navigate to?
    echo    1 User Login
    echo    2 Participant Login
    set /p command= Please input a number :
    IF %command%==1 (
        "webshortcuts/localhost-login.url"
    )
    IF %command%==2 (
        "webshortcuts/localhost-participant.url"
    )
) 
REM REM Work Space
REM IF %command% == 2 
REM REM Todos
REM IF %command% == 3 
REM REM localhost
REM IF %command% == 4 

REM if outside param 
IF %command% GTR 5 (
    set /A wrongInput=1
)
IF %command% LSS 1 (
    set /A wrongInput=1
)

REM Handle Errors
IF %wrongInput%==1 (
    echo please input a number within the given options
)