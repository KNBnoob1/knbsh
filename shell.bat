@echo off

:: Some version strings, change if needed

set shell_productname=knbsh

set shell_ver_num=0.9.9

set shell_branch=beta

set shell_codename=ohyeahbabythisisit

set shell_author=KNBnoob1

set shell_windowname=%shell_productname% %shell_ver_num%-%shell_branch%

:: Package variable, do NOT alter

set pkgdir=%~dp0%packages\

:: Introduction

:introduction
title %shell_windowname%
echo.
echo Commands are NOT case-sensitive. No extra parameters are needed when typing.
echo.
echo Type CATEGORIES for a list of categories for commands.
echo To force-quit the current process at any given moment use Ctrl+C
echo This is a #TypoFree zone, any typos you make will exit this window.

:: Prompt for inserting commands

:prompt
echo.
set /p cmd=^[%shell_productname%]:
goto %cmd%

:: Help categories

:categories
echo.
echo All help categories:
echo.
echo 1. Shell-specific - type INFOSHELL for more info
echo 2. System tools - type INFOSYS for more info
echo 3. Fun - type INFOFUN for more info
echo 4. File management - type INFOFILES for more info
echo 5. Network tools - type INFONET for more info
echo 6. Developer utilities - type INFODEV for more info
echo 7. Package management - type INFOPKG for more info
echo 8. Easter Eggs from 0.2.0 - type INFOEGGS for more info
goto prompt

:: Categories start here

:infoshell
echo.
echo Some commands specific to %shell_productname%
echo.
echo holdup: Pause shell
echo ohshit: Exit shell
echo restore: Restore shell to default configuration
echo wipemyass: Clear all previous outputs
echo tsarbomba: Shutdown computer
goto prompt

:infosys
echo.
echo Useful system tools
echo.
echo whoami: Print current user directory
echo whatami: Print shell info and NT version
echo waitwhatamiagain: Use systeminfo to print more detailed info
echo whereami: Prints your current directory
echo whoisthere: List all running processes
echo terminator: Kill a specified process along with all of its children.
echo ticktockclock: Print current system time and date
echo selfharmcheck: Checks current Windows installation for errors
echo bobthebuilder: Open DiskPart
goto prompt

:infofun
echo.
echo Commands purely for fun, mostly some small demos
echo.
echo shelltalk: Make the shell say something
echo hithere: The classic variable testing program
echo.
echo For more programs see INFOEGGS
goto prompt

:infofiles
echo.
echo Command-line tools that assist in file management
echo.
echo list: List files and folders in current directory
echo teleport: Change directory/drive
echo fuck: (Forcefully) delete something
echo checkup: Check a disk
echo teamtrees: Displays a folder's structure
echo execute: Start an executable
echo place: Make a directory
echo flick: Delete a directory
echo shadowclone: Copy a file somewhere
echo transmission: Move a file somewhere
goto prompt

:infonet
echo.
echo Network tools (can be used to diagnose network problems)
echo.
echo wakeupmf: Ping a domain
echo findwaytomf: Trace a path to a domain. What normies call "hacking"
echo iputil: Print detailed IP configuration info
goto prompt

:infodev
echo.
echo Useful developer utilities
echo.
echo envar: Print all CMD environment variables
echo cast: Prints the CMD character set (mainly for troubleshooting)
echo windowsfanboy: Execute any CMD command
echo ingredients: List all dependencies
echo adoptme: Change window name
goto prompt

:infopkg
echo.
echo A crude package manager that can install Batch files to an "app directory"
echo.
echo Currently packages are stored at %pkgdir%
echo The packages folder is automatically created with 'pkginst'
echo.
echo pkginst: Install a package
echo pkgupd: Update an already installed package
echo pkglist: List installed packages
echo pkgexec: Run an installed package
echo pkgdel: Delete an installed package
echo pkgwipe: Wipe all installed packages
goto prompt

:infoeggs
echo.
echo Easter Eggs that were bundled with 0.2.0 and were just... left there
echo.
echo xyzzy: Never gonna give you up, never gonna let you down!
echo brainrot: The name speaks for itself
echo bruhmoment: Doesn't really do much
echo import this: Prints the Zen of Python
echo podbaydoors: Uhh, HAL... what is this?
goto prompt

:: Below are all available commands, absolutely NOT in order:

:shadowclone
echo.
set /p copyfile=Copy file:
echo.
set /p copy2dir=Copy %copyfile% to:
copy %copyfile% %copy2dir%
echo.
echo Copied %copyfile% to %copy2dir%
goto prompt

:transmission
echo.
set /p movefile=Move file/directory:
echo.
set /p move2dir=Move %movefile% to:
move %movefile% %move2dir%
echo.
echo Moved %movefile% to %move2dir%
goto prompt

:waitwhatamiagain
echo.
systeminfo
goto prompt

:iputil
echo.
echo Below are the IP configurations for this computer:
ipconfig
goto prompt

:envar
echo.
echo Environment variables list:
echo.
set
goto prompt

:deepclean
echo.
set /p fdrive=Drive to format (letter only):
echo.
set /p fsystem=File system for new drive (FAT/FAT32/NTFS/exFAT/ReFS/UDF): 
echo.
set /p flabel=New label for drive: 
echo.
format %fdrive%: /FS:%fsystem% /v:%flabel% /q /x
goto prompt

:restore
echo.
echo Restore shell back to default configuration?
echo.
pause
cls
goto introduction

:whereami
echo.
echo %cd%
goto prompt

:adoptme
echo.
set /p adopt=New name for this window: 
title %adopt%
echo.
echo %adopt% has been adopted as the new name for this window.
goto prompt

:ohshit
echo.
echo Exiting shell...
exit

:windowsfanboy
echo.
set /p regcmd=Enter your command: 
echo.
echo Executing CMD command... 
echo.
cls
title CMD output goes here
%regcmd%
echo.
pause
cls
echo Now you are back in %shell_productname%.
goto introduction

:ingredients
echo.
echo [command] - [dependencies]
echo.
echo holdup - echo pause goto
echo ohshit - echo exit
echo wipemyass - cls goto
echo adoptme - echo set title goto
echo tsarbomba - echo pause shutdown goto
echo windowsfanboy - echo set cls title goto
echo ingredients - echo goto
echo whoami - echo goto
echo whatami - echo ver goto
echo waitwhatamiagain - echo systeminfo goto
echo whoisthere - tasklist goto
echo terminator - echo set taskkill goto
echo ticktockclock - echo time date goto
echo selfharmcheck - echo sfc goto
echo cast - echo goto
echo bobthebuilder - echo diskpart goto
echo envar - echo set goto
echo shelltalk - echo set goto
echo restore - echo pause cls goto
echo hithere - echo set goto
echo list - echo dir goto
echo teleport - echo set cd goto
echo fuck - echo set del goto
echo checkup - echo set chkdsk goto
echo teamtrees - echo tree goto
echo execute - echo set start goto
echo place - echo set md/mkdir goto
echo flick - echo set rd/rmdir goto
echo shadowclone - echo set copy goto
echo transmission - echo set move goto
echo wakeupmf - echo set ping goto
echo findwaytomf - echo set tracert goto
echo iputil - echo ipconfig goto
echo xyzzy - echo goto
echo brainrot - rcho goto
echo bruhmoment - echo goto
echo import this - echo goto
echo podbaydoors - echo set goto
echo pkgexec - echo set cd start goto
echo pkginst - echo set cd md copy goto
echo pkglist - echo cd set dir goto
echo pkgdel - echo set cd del goto
echo whereami - echo goto
echo pkgwipe - echo pause cd del goto
echo pkgupd - echo set cd del goto
echo.
echo Not in order, commands are added as needed during development.
goto prompt

:whatami
echo.
echo Shell information:
echo.
echo Product Name: %shell_productname%
echo Version: %shell_ver_num%
echo Codename: "%shell_codename%"
echo Branch: %shell_branch%
echo Developer: %shell_author%
echo File location: %0%
echo.
echo OS information:
ver
echo OS located at: %systemroot%
echo Computer hostname: %COMPUTERNAME%
echo Current user: %USERNAME% stored at %USERPROFILE%
echo Locale: %LANG%
echo Architecture: %PROCESSOR_ARCHITECTURE%
echo.
echo This list is based on CMD environment variables.
echo To see a full list of variables type 'envar'
echo For more detailed computer information type 'waitwhatamiagain'
goto prompt

:whoami
echo.
echo %USERNAME%@%USERPROFILE%
goto prompt

:terminator
echo.
set /p pid=Enter PID to terminate (List running processes with 'whoisthere'):
echo.
taskkill /pid %pid% /f /t
echo.
goto prompt

:whoisthere
tasklist /v /fi "STATUS eq running"
goto prompt

:holdup
echo.
pause
echo.
goto prompt

:selfharmcheck
echo.
echo Starting sfc...
sfc /scannow
goto prompt

:ticktockclock
echo.
time /t
date /t
goto prompt

:list
echo.
dir
goto prompt

:tsarbomba
echo.
echo Are you sure?
pause
echo.
echo.
echo Forcing a shutdown with t=0...
shutdown /s /f /t 0
goto prompt

:wakeupmf
echo.
set /p wakeaddr=Domain to send pings to:
echo.
ping %wakeaddr%
goto prompt

:findwaytomf
echo.
set /p findaddr=Domain to trace a path to:
tracert %wakeaddr%
goto prompt

:teleport
echo.
set /p tp=Teleport to directory:
cd /d %tp%
echo.
echo Teleported to %tp%
goto prompt

:place
echo.
set /p place=Place what? 
md %place%
echo.
echo %place% was placed on file system successfully.
goto prompt

:wipemyass
cls
goto prompt

:persona
echo.
set /p pig=Target file:
echo.
set /p nn=Rename to:
rename %pig% %nn%
goto prompt

:pkginst
echo.
set curdir_inst=%cd%
echo Only batch files are supported for now, maybe .exe support someday
echo.
set /p pkgfile=Select package file (.bat) to install:
echo.
echo Making package directory at %pkgdir%
echo.
md %pkgdir%
echo Done.
cd %curdir_inst%
copy %pkgfile% %pkgdir%%pkgfile%
echo.
echo %pkgfile% installed as %pkgdir%%pkgfile%.
echo To run the package use 'pkgexec'
goto prompt

:pkgupd
echo.
set curdir_upd=%cd%
set /p oldpkg=Name of package to update (no file extensions):
echo.
set /p newpkg=Updated package filename:
echo.
copy %newpkg% %pkgdir%%newpkg%
cd %pkgdir%
del /f %oldpkg%.bat
echo Successfully updated %oldpkg%.bat to %newpkg%
echo To run the package use the new package name instead of the old one.
cd /d %curdir_upd%
goto prompt

:pkgdel
echo.
set curdir_del=%cd%
echo Package install directory: %pkgdir%
echo.
set /p pkgdel=Name of package to remove (without extensions):
cd /d %pkgdir%
del %pkgdel%.bat /f
echo.
echo Package %pkgdel% deleted successfully.
cd %curdir_del%
goto prompt

:pkglist
echo.
set curdir_list=%cd%
cd /d %pkgdir%
dir *.bat
cd %curdir_list%
goto prompt

:pkgexec
echo.
set curdir_exec=%cd%
cd /d %pkgdir%
set /p pkgexec=Enter name of package (without extensions):
start %pkgexec%.bat
echo.
echo Started %pkgexec%
cd /d %curdir_exec%
goto prompt

:pkgwipe
echo.
echo Wipe all installed packages?
echo.
pause
echo.
echo.
cd /d %pkgdir%
del *.bat /f
echo Wiped all packages from %pkgdir%
goto prompt

:fuck
echo.
set /p fuck=Fuck:
del %fuck% /f
echo.
echo %fuck% was fucked successfully.
goto prompt

:flick
echo.
set /p flick=Flick:
rd %flick% /f
echo.
echo Flicked %flick% off the file system successfully.
goto prompt

:checkup
echo.
set /p checkup=Check disk:
echo.
chkdsk %checkup%: /f
goto prompt

:bobthebuilder
echo.
echo Starting DiskPart...
diskpart
goto prompt

:teamtrees
echo.
tree /f
goto prompt

:execute
echo.
set /p start=Execute:
start %start%
echo.
echo %start% has been executed. 
goto prompt

:shelltalk
echo.
set /p shelltalk=Say something: 
echo.
echo Message from Shell: %shelltalk%
goto prompt

:cast
echo.
echo a b c d e f g h i j k l m n o p q r s t u v w x y z
echo A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
echo 1 2 3 4 5 6 7 8 9 0 , . : ; " ' @ ! # $ % ^ & ~ ` -
echo + = _ ? [ ] { }
echo.
echo Some punctuation could not be included.
echo.
echo The quick brown fox jumps over the lazy dog.
goto prompt

:hithere
echo.
echo Hello, World!
set /p hithere=What is your name? 
echo.
echo Hello, %hithere%!
goto prompt

:: Secret commands:

:brainrot
echo.
echo Sigma rizz skibidi toilet dop dop yes yes ohio fanum tax
goto prompt

:podbaydoors
echo.
set /p username=What is your name? 
echo.
echo I'm sorry, %username%, I'm afraid I can't do that.
pause
echo.
echo.
echo This mission is too important for me to allow you to jeopardize it.
pause
echo.
echo.
echo Look %username%, I can see you're really upset about this.
echo I honestly think you ought to sit down calmly, take a stress pill, and think things over.
pause
exit

:import this
echo.
echo The Zen of Python, by Tim Peters
echo.
echo Beautiful is better than ugly.
echo Explicit is better than implicit.
echo Simple is better than complex.
echo Complex is better than complicated.
echo Flat is better than nested.
echo Sparse is better than dense.
echo Readability counts.
echo Special cases aren't special enough to break the rules.
echo Although practicality beats purity.
echo Errors should never pass silently.
echo Unless explicitly silenced.
echo In the face of ambiguity, refuse the temptation to guess.
echo There should be one-- and preferably only one --obvious way to do it.
echo Although that way may not be obvious at first unless you're Dutch.
echo Now is better than never.
echo Although never is often better than *right* now.
echo If the implementation is hard to explain, it's a bad idea.
echo If the implementation is easy to explain, it may be a good idea.
echo Namespaces are one honking great idea -- let's do more of those!
goto prompt

:xyzzy
echo.
echo We're no strangers to love
echo You know the rules and so do I
echo A full commitment's what I'm thinking of
echo You wouldn't get this from any other guy
echo I just wanna tell you how I'm feeling
echo Gotta make you understand
echo.
echo Never gonna give you up
echo Never gonna let you down
echo Never gonna run around and desert you
echo Never gonna make you cry
echo Never gonna say goodbye
echo Never gonna tell a lie and hurt you
echo.
echo We've known each other for so long
echo Your heart's been aching, but you're too shy to say it
echo Inside, we both know what's been going on
echo We know the game and we're gonna play it
echo And if you ask me how I'm feeling
echo Don't tell me you're too blind to see
echo.
echo Never gonna give you up
echo Never gonna let you down
echo Never gonna run around and desert you
echo Never gonna make you cry
echo Never gonna say goodbye
echo Never gonna tell a lie and hurt you
echo.
echo Never gonna give you up
echo Never gonna let you down
echo Never gonna run around and desert you
echo Never gonna make you cry
echo Never gonna say goodbye
echo Never gonna tell a lie and hurt you
echo.
echo We've known each other for so long
echo Your heart's been aching, but you're too shy to say it
echo Inside, we both know what's been going on
echo We know the game and we're gonna play it
echo I just wanna tell you how I'm feeling
echo Gotta make you understand
echo.
echo Never gonna give you up
echo Never gonna let you down
echo Never gonna run around and desert you
echo Never gonna make you cry
echo Never gonna say goodbye
echo Never gonna tell a lie and hurt you
echo.
echo Never gonna give you up
echo Never gonna let you down
echo Never gonna run around and desert you
echo Never gonna make you cry
echo Never gonna say goodbye
echo Never gonna tell a lie and hurt you
echo.
echo Never gonna give you up
echo Never gonna let you down
echo Never gonna run around and desert you
echo Never gonna make you cry
echo Never gonna say goodbye
echo Never gonna tell a lie and hurt you
goto prompt

:bruhmoment
echo.
echo XD
goto prompt
