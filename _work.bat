REM Workspace Suite 0.1
setlocal EnableDelayedExpansion
wrongInput=0

@echo off

REM resource paths
set resourceDir=C:\Users\chown\Documents\
set angularFactoryTemplateLoc=Templates-Angular\TemplateFactoryAngular.js
set repoDir=C:\Users\chown\Documents\sbx-webclient-php


REM Go to redo point
:StartPoint
clear

color 8
REM Display Logo logic
echo .................................................__________......
echo .... _________________________________________ ./           \\___
echo .___/             /..^|        /_/   _____   ^|_ ^|   _______   ^|^|..
echo .__/ ____       //...^|   ____/  ^|  ^|.....^| ^|^|..^|  /...^|^|...\ ^|^|..
echo ../_____/      //....^|   ^|^| ....^|  ^|_____^| ^|^|..^|   ___^|^|___  ^|^|..
echo ......./      //.....^|   ^|____..^|       ___^|^|..^|  ^|___  ___^| ^|^|..
echo ....../      //......^|    ___/..^|   ^|\   \\ ...^|   ...^|^|...  ^|^|..
echo ...../      //.......^|   ^|^| ....^|   ^|.\   \\ ..^|   ...^|^|...  ^|^|..
echo ..../      //_______ ^|   ^|______^|_  ^|..\   \\ .^|  \___^|^|___/ ^|^|..
echo .../  ____________ /_^|           /  ^|__.\   \\ ^|             ^|^|..
echo __/_______________/.\___________/_____/..\___\\\____________//...

echo Hello Miguel what would you like to do?

echo    1 Open LocalHost Webspace
echo    [isLocal 0=Prod 1=Local][Participant Number] Participant link 
echo    2 Get Factory template REM get the factory template
REM echo    2 Open Work Space
REM echo    3 Open Todos
REM echo    4 Open LocalHost participant login to meeting

REM ask for commmand input
set /p command= Please input a number :

REM Build commands

IF !command!==edit (
    code ./
)

IF !command!==startup (
    "webshortcuts/localhost-participant.url"
    code C:\Users\chown\Documents\sbx-webclient-php
    cd %repoDir%
    start npm install
)

IF !command!==push (
    set /p branch= Please input a branch name :
    cd %repoDir%
    start git push origin !branch!
)

IF !command!==commit (
    set /p branch= Please input a branch name :
    cd %repoDir%
    start git commit -AM !branch!
)

IF !command!==build (
    cd %repoDir%
    start gulp build
)

IF !command!==css (
    cd %repoDir%
    start gulp sass
)

IF !command!==test (
    cd %repoDir%
    start gulp test
)

IF !command!==install (
    cd %repoDir%
    start npm install
)

REM BITBUCKET QUICK LINKS
IF !command!==bbb (
    "webshortcuts/bitbucket-branches.url"
)

IF !command!==bbpr (
    "webshortcuts/bitbucket-pullrequests.url"
)

IF !command!==slack (
    "webshortcuts/slack.url"
)

IF !command!==jira (
    "webshortcuts/jira-my-sprint.url"
)

REM Run dev commands 
REM Quick shortcuts to participant logins
REM Local
IF !command!==h (
    "webshortcuts/localhost-host.url"    
)

IF !command!==11 (
    "webshortcuts/localhost-participant.url"
)

IF !command!==11h (
    "webshortcuts/localhost-participant.url"
    "webshortcuts/localhost-host.url"
)

IF !command!==12 (
    "webshortcuts/localhost-participant2.url"
)

IF !command!==13 (
    "webshortcuts/localhost-participant3.url"
)

IF !command!==14 (
    "webshortcuts/localhost-participant.url"
    "webshortcuts/localhost-participant2.url"
    "webshortcuts/localhost-participant3.url"
)

IF !command!==15 (
    "webshortcuts/localhost-participant.url"
    "webshortcuts/localhost-participant2.url"
)

IF !command!==14h (
    "webshortcuts/localhost-participant.url"
    "webshortcuts/localhost-participant2.url"
    "webshortcuts/localhost-participant3.url"
    "webshortcuts/localhost-host.url"
)

IF !command!==15h (
    "webshortcuts/localhost-participant.url"
    "webshortcuts/localhost-participant2.url"   
    "webshortcuts/localhost-host.url"    
)

REM local eds local serving has a port
IF !command!==21 (
    "webshortcuts/localhost-participanteds.url"
)

IF !command!==22 (
    "webshortcuts/localhost-participanteds2.url"
)

IF !command!==23 (
    "webshortcuts/localhost-participanteds3.url"
)

IF !command!==24 (
    "webshortcuts/localhost-participanteds.url"
    "webshortcuts/localhost-participanteds2.url"
    "webshortcuts/localhost-participanteds3.url"
)

IF !command!==25 (
    "webshortcuts/localhost-participanteds.url"
    "webshortcuts/localhost-participanteds2.url"
)

REM dev env local 10 way meeting
IF !command!==t1 (
    "webshortcuts/localhost-participant10w.1.url"
)

IF !command!==t2 (
    "webshortcuts/localhost-participant10w.2.url"
)

IF !command!==t3 (
    "webshortcuts/localhost-participant10w.3.url"
)

IF !command!==t4 (
    "webshortcuts/localhost-participant10w.4.url"
)

IF !command!==t5 (
    "webshortcuts/localhost-participant10w.5.url"
)

IF !command!==t6 (
    "webshortcuts/localhost-participant10w.6.url"
)

IF !command!==t7 (
    "webshortcuts/localhost-participant10w.7.url"
)

IF !command!==t8 (
    "webshortcuts/localhost-participant10w.8.url"
)

IF !command!==t9 (
    "webshortcuts/localhost-participant10w.9.url"
)


REM Prod pointed logins local
IF !command!==1l (
    "webshortcuts/prod-local-participant.url"
)

REM Prod
IF !command!==01 (
    "webshortcuts/prod-participant.url"
)

IF !command!==02 (
    "webshortcuts/prod-participant2.url"
)

IF !command!==03 (
    "webshortcuts/prod-participant3.url"
)

REM Test
IF !command!==21 (
    "webshortcuts/test-participant.url"
)

IF !command!==22 (
    "webshortcuts/test-participant2.url"
)

IF !command!==23 (
    "webshortcuts/test-participant3.url"
)

IF !command!==24 (
    "webshortcuts/test-participant.url"
    "webshortcuts/test-participant2.url"
    "webshortcuts/test-participant3.url"
)

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
    goto StartPoint
)

REM Factory Template
IF !command!==2 (
    set template=%resourceDir%%angularFactoryTemplateLoc%
    type !template! | clip 
    echo Factory Template Copied into your clipboard
)

goto StartPoint
REM call _work.bat 
