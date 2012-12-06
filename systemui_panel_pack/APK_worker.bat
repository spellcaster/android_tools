:: Script for automated modification of SystemUI.apk (implant lidroid panel into status bar)
:: Requirements:
::   You must have JDK installed and java.exe in PATH
::   The folder with this script must not contain spaces or non-latin symbols
:: Usage:
::   Put SystemUI.apk next to this file (APK_worker.bat)
::   Put all apk's from your device's /system/framework into folder \framework
::   Run APK_worker.bat

@echo off

setlocal
:: Turn on expandind of the variables on execute rather than on parse
setlocal EnableDelayedExpansion

set CDir=%~dp0%
set OldCD=%CD%
set APKName=SystemUI
:: Use aapt from SDK by default
set AAPT=aapt_SDK.exe
:: ! Uncomment this line ONLY if you have troubles building/decompiling apk's !
:: set AAPT=aapt_Custom.exe

:: Check all needed files

copy /y "%CDir%\%AAPT%" "%CDir%\aapt.exe" > nul

:: Java
java -version 2> nul
if errorlevel 1 (
	echo Java not installed!
	goto :Err
)
:: apktool
if not exist "%CDir%\apktool.jar" (
	echo %CDir%\apktool.jar not found
	goto :Err
)
:: aapt
if not exist "%CDir%\aapt.exe" (
	echo %CDir%\aapt.exe not found
	goto :Err
)
:: 7zip
if not exist "%CDir%\7za.exe" (
	echo %CDir%\7za.exe not found
	goto :Err
)
:: qpid_repl
if not exist "%CDir%\qpid_repl.js" (
	echo %CDir%\qpid_repl.js not found
	goto :Err
)
:: xml_add
if not exist "%CDir%\xml_add.js" (
	echo %CDir%\xml_add.js not found
	goto :Err
)

:: Determine qp files folder (use flash or not)
set /p useflash=Include flashlight button? (y/n) 
if "%useflash%"=="y" (
	set QPFolder="qp_flash"
) else if "%useflash%"=="n" (
	set QPFolder="qp_noflash"
) else (
	echo Wrong answer! Use "y" or "n"
	goto :Err
)

set step=1
set auto=0

:Prompt

if "!auto!"=="0" (
	echo ==============================
	echo Select a step to perform
	echo 0. Automated ^(perform ALL steps^)
	echo 1. Decompile %APKName%.apk
	echo 2. Initial changes
	echo 3. Build temp %APKName%.apk and decompile it
	echo 4. Intermediate changes
	echo 5. Build final %APKName%.apk
	echo 6. Final changes
	echo 7. Quit
	set input_step=
	set /p input_step=Enter step number ^(Enter: step !step!^) 
	
	if "!input_step!"=="0" (
		set auto=1
	) ELSE if "!input_step!" NEQ "" (
		set step=!input_step!
	)
)

:: apktool.jar requires aapt.exe to be in current directory
cd "%CDir%"

goto Step!step!

:: 1. Разобрать SystemUI.apk

:Step1

echo ### Step 1. Decompile %APKName%.apk to %CDir%\%APKName%

rd /s/q "%CDir%\%APKName%" 2> nul
:: (Re)Install all the frameworks (sometimes required)
rd /s/q "%HOMEDRIVE%%HOMEPATH%\apktool\framework" 2> nul
FOR %%F IN ("%CDir%\framework\*.apk") DO java -jar "%CDir%\apktool.jar" if "%%F"
:: Decompile
java -jar "%CDir%\apktool.jar" d "%CDir%\%APKName%.apk" "%CDir%\%APKName%"

if errorlevel 1 goto :Err
set /a step=!step!+1
goto Prompt

:: 2. Содержимое папок drawable-hdpi(mdpi, lpdi) и layout из архива добавить в соответствующие
::   папки
:: Прим. В этом пункте переписываем файлы только для того разрешения, которое содержится в 
::   исходном SystemUI
:: 3. Добавить в файл res/layout/status_bar_expanded.xml строку 
:: 4. Добавить строки из strings.xml и arrays.xml в соответствующие файлы в папках values

:Step2

echo ### Step 2. Add custom files and modify values

:: ! cmd is a stupid piece of shit unable to filter files by mask. So we only copy PNG files
:: ignoring others (i.e. empty files that allow adding empty folders to git. Arrgh, this REALLY sucks!)
IF EXIST "%CDir%\%APKName%\res\drawable-hdpi" (
	copy /y "%CDir%\%QPFolder%\res\drawable-hdpi\*.png" "%CDir%\%APKName%\res\drawable-hdpi"
)
IF EXIST "%CDir%\%APKName%\res\drawable-mdpi" (
	copy /y "%CDir%\%QPFolder%\res\drawable-mdpi\*.png" "%CDir%\%APKName%\res\drawable-mdpi"
)
IF EXIST "%CDir%\%APKName%\res\drawable-ldpi" (
	copy /y "%CDir%\%QPFolder%\res\drawable-ldpi\*.png" "%CDir%\%APKName%\res\drawable-ldpi"
)

copy /y "%CDir%\%QPFolder%\res\layout\*" "%CDir%\%APKName%\res\layout"
CScript "%CDir%\xml_add.js" "%QPFolder%"

set /a step=!step!+1
goto Prompt

:: 5. Cобрать
:: 6. Разобрать получившийся в папке dist

:Step3

echo ### Step 3. Build temp %APKName%.apk from %CDir%\%APKName% and decompile it

java -jar "%CDir%\apktool.jar" b -f "%CDir%\%APKName%"

if errorlevel 1 goto :Err

java -jar "%CDir%\apktool.jar" d "%CDir%\%APKName%\dist\%APKName%.apk" "%CDir%\%APKName%\dist\%APKName%"

if errorlevel 1 goto :Err

echo ** Temp apk decompiled to %CDir%\%APKName%\dist\%APKName%
set /a step=!step!+1
goto Prompt

:: 7. Скопировать с заменой файл dist/SystemUI/res/values/public.xml в папку res/values/
:: 9. Содержимое папки smali из архива добавить в папку SystemUI/smali
:: 10. Скрипт qp_repl.js из архива положить рядом с папкой SystemUI и запустить двойным кликом(как приложение)

:Step4

echo ### Step 4. Copy public.xml and smali, replace IDs

copy /y "%CDir%\%APKName%\dist\%APKName%\res\values\public.xml" "%CDir%\%APKName%\res\values"
xcopy "%CDir%\%QPFolder%\smali" "%CDir%\%APKName%\smali" /e /i /y
CScript "%CDir%\qpid_repl.js"

set /a step=!step!+1
goto Prompt

:: 8. Удалить папки build и dist
:: 11. Собрать

:Step5

echo ### Step 5. Build final %APKName%.apk

rd /s/q "%CDir%\%APKName%\dist"
rd /s/q "%CDir%\%APKName%\build"

java -jar "%CDir%\apktool.jar" b -f "%CDir%\%APKName%"

if errorlevel 1 goto :Err

echo apk compiled, now you may use files from %CDir%\%APKName%\build in the original %APKName%.apk
set /a step=!step!+1
goto Prompt

:Step6

:: 12. В исходном заменить файлами из папки build/apk/
::  - resources.arsc(без сжатия)
::  - classes.dex(обычное сжатие)
::  - res/layout/status_bar_expanded.xml(обычное сжатие)
::  Добавить файлы из папки build/apk/
::  - res/drawable-hdpi/qp_*.png(без сжатия)
::  - res/layout/qp_*.xml(обычное сжатие)

echo ### Step 6. Add/replace files to the original apk (save as %APKName%_mod.apk)

copy /y "%CDir%\%APKName%.apk" "%CDir%\%APKName%_mod.apk"
:: change dir so that 7zip could put the files to the right places
cd "%CDir%\%APKName%\build\apk"

"%CDir%\7za.exe" a -tzip -mx5 "%CDir%\%APKName%_mod.apk" "classes.dex"
"%CDir%\7za.exe" a -tzip -mx0 "%CDir%\%APKName%_mod.apk" "resources.arsc"
"%CDir%\7za.exe" a -tzip -mx0 "%CDir%\%APKName%_mod.apk" "res\drawable-hdpi\qp_*.png"
"%CDir%\7za.exe" a -tzip -mx5 "%CDir%\%APKName%_mod.apk" "res\layout\status_bar_expanded.xml"
"%CDir%\7za.exe" a -tzip -mx5 "%CDir%\%APKName%_mod.apk" "res\layout\qp_*.xml"

cd "%CDir%"

set /a step=!step!+1
goto Prompt

:Step7

echo Script finished. Modified apk is saved as %CDir%\%APKName%_mod.apk
goto :End

:Err
echo Error occured - process not finished

:End
cd "%OldCD%"
pause