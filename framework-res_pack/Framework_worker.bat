:: Script for semi-automated dompiling/decompiling of framework-res.apk
:: Requirements:
::   You must have JDK installed and java.exe in PATH
::   The folder with this script must not contain spaces or non-latin symbols
:: Usage:
::   Put framework-res.apk next to this file (Framework_worker.bat)
::   Run Framework_worker.bat

@echo off

setlocal
:: Turn on expandind of the variables on execute rather than on parse
setlocal EnableDelayedExpansion

set CDir=%CD%
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

set step=1

:Prompt

echo ==============================
echo Select a step to perform
echo 1. Decompile %Framework%.apk
echo 2. Compile %Framework%.apk
echo 3. Build final apk
echo 4. Quit
set /p input_step=Enter step number ^(Enter: step !step!^) 

IF "!input_step!" NEQ "" (
	set step=!input_step!
)

goto Step%step%

:: 1. Разобрать framework-res.apk

:Step1

echo ### Step 1. Decompile %Framework%.apk to %CDir%\%Framework%

rd /s/q %CDir%\%Framework% 2> nul
java -jar %CDir%\apktool.jar d -s %CDir%\%Framework%.apk %CDir%\%Framework%

if errorlevel 1 goto :Err
set /a step=%step%+1
goto Prompt

:: 2. Собрать framework-res.apk

:Step2

echo ### Step 2. Compile %Framework%.apk

rd /s/q %CDir%\%Framework%\build 2> nul
java -jar %CDir%\apktool.jar b -f %CDir%\%Framework%

if errorlevel 1 goto :Err

:: Copy \assets folder from source
xcopy %CDir%\%Framework%\assets %CDir%\%Framework%\build\apk\assets /e /i /y

if errorlevel 1 goto :Err
set /a step=%step%+1
goto Prompt

:: 3. Собрать итоговый apk

:Step3

echo ### Step 3. Build final apk

:: change dir so that 7zip could put the files to the right places
cd %CDir%\%Framework%\build\apk
del %CDir%\%Framework%_mod.apk 2> nul

:: Add files with compression
:: Switch DelayedExpansion off to use "!" chars
setlocal DisableDelayedExpansion
%CDir%\7za a -tzip -mx5 -r %CDir%\%Framework%_mod.apk * -x!*.arsc -x!*.png -x!*.ogg
setlocal EnableDelayedExpansion

:: Add files without compression
%CDir%\7za a -tzip -mx0 -r %CDir%\%Framework%_mod.apk *.arsc *.png *.ogg
cd %CDir%

if errorlevel 1 goto :Err
set /a step=%step%+1
goto Prompt

:Step4

echo Script finished. Modified apk is saved as %CDir%\%Framework%_mod.apk
pause
goto :EOF

:Err
echo Error occured - process not finished
pause