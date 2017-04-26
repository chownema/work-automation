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
    echo    1 User Login
    echo    2 Participant Login
    set /p command= Please input a number :
    echo !command!
    IF !command!==1 (
        "webshortcuts/localhost-login.url"
    )
    IF !command!==2 (
        "webshortcuts/localhost-participant.url"
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

