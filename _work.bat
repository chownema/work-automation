REM # Workspace Suite 0.1
setlocal EnableDelayedExpansion
wrongInput=0

@echo off

REM resource paths
set resourceDir=C:\Users\chown\Documents\
set angularFactoryTemplateLoc=Templates-Angular\TemplateFactoryAngular.js




echo Hello Miguel what would you like to do?
echo    1 Open LocalHost Webspace
echo    2 Get Factory template REM get the factory template
REM echo    2 Open Work Space
REM echo    3 Open Todos
REM echo    4 Open LocalHost participant login to meeting

REM ask for commmand input
set /p command= Please input a number :


REM Run commands 
REM REM localhost web application navigation 
IF !command!==1 (
    echo Where would you like to navigate to?
    echo    1 Participant 1 Login
    echo    2 Participant 2 Login
    echo    3 Participant 3 Login
    echo    4 All Participants Login
    echo    5 P1 and P2 Participants Login
    echo    6 User Login
    set /p command= Please input a number :
    echo !command!
    IF !command!==1 (
        "webshortcuts/localhost-participant.url"
    )
    IF !command!==2 (
        "webshortcuts/localhost-participant2.url"
    )
    IF !command!==3 (
        "webshortcuts/localhost-participant3.url"
    )
    IF !command!==4 (
        "webshortcuts/localhost-participant.url"
        "webshortcuts/localhost-participant2.url"
        "webshortcuts/localhost-participant3.url"
    )
    IF !command!==5 (
        "webshortcuts/localhost-participant.url"
        "webshortcuts/localhost-participant2.url"
    )
    IF !command!==6 (
        "webshortcuts/localhost-login.url"
    )
    exit /b
) 
REM Factory Template
IF !command!==2 (
    set template=%resourceDir%%angularFactoryTemplateLoc%
    type !template! | clip 
    echo Factory Template Copied into your clipboard
    exit /b
)

REM REM Todos
REM IF %command% == 3 
REM REM localhost
REM IF %command% == 4 

REM if outside param 
IF !command! GTR 5 (
    set /A wrongInput=1
)
IF !command! LSS 1 (
    set /A wrongInput=1
)

REM Handle Errors
IF %wrongInput%==1 (
    echo please input a number within the given options
)

