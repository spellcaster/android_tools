:: Interactive script for help in translating APK's
:: Performs:
::   Decompiling
::   Compiling
::   Replacing of resource.arsc
::   Re-signing (needs ..\sign_apk\Sign.bat)
:: Requirements:
::   You must have JDK installed and java.exe in PATH

@echo off

:: Not changing calling process' PATH variable
setlocal

:: Turn on expandind of the variables on execute rather than on parse
setlocal EnableDelayedExpansion

if .%1%.==.. (
    title APK translate helper
    set apk_path=
    set /p apk_path=Input a FULL path to the apk to work with or empty string to exit and hit Enter 
    if "!apk_path!"=="" goto :EOF
    :: remove extension from the path
    set apk_path=!apk_path:~0,-4!
) else (
    set apk_path=%~dpn1%
)

set CDir=%~dp0%

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
echo APK to operate on: %apk_path%.apk
echo Select an action to perform
echo 1. Decompile
echo 2. Build
echo 3. Make final translated apk
echo 4. Quit
set input_step=
set /p input_step=Enter action number ^(Enter: action !step!^) 

if "!input_step!" NEQ "" (
	set step=!input_step!
)

goto Step!step!

:: 1. Decompile

:Step1

echo ### Step 1. Decompile %apk_path%.apk
java -jar "%CDir%\apktool.jar" d -f -s "%apk_path%.apk" "%apk_path%"

if errorlevel 1 goto :Err
set /a step=!step!+1
goto Prompt

:: 2. Build

:Step2

echo ### Step 2. Build %apk_path%
:: apktool couldn't work if aapt.exe isn't in the %CD% so moving there permanently
pushd "%CDir%"
java -jar "%CDir%\apktool.jar" b -f "%apk_path%"
if errorlevel 1 (
    popd
    goto :Err
) else (
    popd
)
set /a step=!step!+1
goto Prompt

:: 3. Make final (replace resources, delete old cert, sign with our cert)

:Step3

echo ### Step 3. Make final %apk_path%_transl.apk

:: Copy original apk to %apk_path%_transl.apk
copy /y "%apk_path%.apk" "%apk_path%_transl.apk"
:: Replace resources.arsc in %apk_path%_transl.apk by a new one (no compression!)
"%CDir%\7za" a -tzip -mx0 "%apk_path%_transl.apk" "%apk_path%\build\apk\resources.arsc"
if errorlevel 1 goto :Err
:: Remove previous certs
"%CDir%\7za" d -tzip "%apk_path%_transl.apk" META-INF\*
if errorlevel 1 goto :Err
:: Sign with our own cert
call "%CDir%\..\sign_apk\Sign.bat" "%apk_path%_transl.apk"
if errorlevel 1 (
    echo Error signing the file! Check that you have sign_apk\Sign.bat
    goto Prompt
)
set /a step=!step!+1
goto Prompt

:Step4
goto :EOF

:Err
echo Error occured - process not finished
pause