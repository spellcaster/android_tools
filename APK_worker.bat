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

set CDir=%CD%
set APKName=SystemUI
set Framework=framework-res

:: Check all needed files

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
	set /p input_step=Enter step number ^(Enter: step !step!^) 
	
	if "!input_step!"=="0" (
		set auto=1
	) ELSE if "!input_step!" NEQ "" (
		set step=!input_step!
	)
)

goto Step%step%

:: 1. Разобрать SystemUI.apk

:Step1

echo ### Step 1. Decompile %APKName%.apk to %CDir%\%APKName%

rd /s/q %CDir%\%APKName% 2> nul
:: (Re)Install all the frameworks (sometimes required)
rd /s/q "%HOMEDRIVE%%HOMEPATH%\apktool\framework" 2> nul
FOR %%F IN (%CDir%\framework\*.apk) DO java -jar %CDir%\apktool.jar if %%F
java -jar %CDir%\apktool.jar d %CDir%\%APKName%.apk %CDir%\%APKName%

if errorlevel 1 goto :Err
set /a step=%step%+1
goto Prompt

:: 2. Содержимое папок drawable-hdpi(mdpi) и layout из архива добавить в соответствующие папки
:: 3. Добавить в файл res/layout/status_bar_expanded.xml строку 
:: 4. Добавить строки из strings.xml и arrays.xml в соответствующие файлы в папках values

:Step2

echo ### Step 2. Add custom files and modify values

copy /y %CDir%\qp\res\drawable-hdpi\* %CDir%\%APKName%\res\drawable-hdpi
copy /y %CDir%\qp\res\layout\* %CDir%\%APKName%\res\layout
CScript xml_add.js

set /a step=%step%+1
goto Prompt

:: 5. Cобрать
:: 6. Разобрать получившийся в папке dist

:Step3

echo ### Step 3. Build temp %APKName%.apk from %CDir%\%APKName% and decompile it

java -jar %CDir%\apktool.jar b -f %CDir%\%APKName%

if errorlevel 1 goto :Err

java -jar %CDir%\apktool.jar d %CDir%\%APKName%\dist\%APKName%.apk %CDir%\%APKName%\dist\%APKName%

if errorlevel 1 goto :Err

echo ** Temp apk decompiled to %CDir%\%APKName%\dist\%APKName%
set /a step=%step%+1
goto Prompt

:: 7. Скопировать с заменой файл dist/SystemUI/res/values/public.xml в папку res/values/
:: 9. Содержимое папки smali из архива добавить в папку SystemUI/smali
:: 10. Скрипт qp_repl.js из архива положить рядом с папкой SystemUI и запустить двойным кликом(как приложение)

:Step4

echo ### Step 4. Copy public.xml and smali, replace IDs
copy /y %CDir%\%APKName%\dist\%APKName%\res\values\public.xml %CDir%\%APKName%\res\values
xcopy %CDir%\qp\smali %CDir%\%APKName%\smali /e /i /y
CScript qpid_repl.js

set /a step=%step%+1
goto Prompt

:: 8. Удалить папки build и dist
:: 11. Собрать

:Step5

echo ### Step 5. Build final %APKName%.apk

rd /s/q %CDir%\%APKName%\dist
rd /s/q %CDir%\%APKName%\build

java -jar %CDir%\apktool.jar b -f %CDir%\%APKName%

if errorlevel 1 goto :Err

echo apk compiled, now you may use files from %CDir%\%APKName%\build in the original %APKName%.apk
set /a step=%step%+1
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
copy /y %CDir%\%APKName%.apk %CDir%\%APKName%_mod.apk
:: change dir so that 7zip could put the files to the right places
cd %CDir%\%APKName%\build\apk

%CDir%\7za a -tzip -mx5 %CDir%\%APKName%_mod.apk classes.dex
%CDir%\7za a -tzip -mx0 %CDir%\%APKName%_mod.apk resources.arsc
%CDir%\7za a -tzip -mx0 %CDir%\%APKName%_mod.apk res\drawable-hdpi\qp_*.png
%CDir%\7za a -tzip -mx5 %CDir%\%APKName%_mod.apk res\layout\status_bar_expanded.xml
%CDir%\7za a -tzip -mx5 %CDir%\%APKName%_mod.apk res\layout\qp_*.xml

set /a step=%step%+1
goto Prompt

:Step7

echo Script finished. Modified apk is saved as %CDir%\%APKName%_mod.apk
pause
goto :EOF

:Err
echo Error occured - process not finished
pause