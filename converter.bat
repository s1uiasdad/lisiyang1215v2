;@echo off

;if "%~1"=="" exit /b
;if /i "%~x1" neq ".bat" if /i "%~x1" neq ".cmd" exit /b
;echo //4mY2xzDQo= > temp.~b64
;certutil.exe -f -decode "temp.~b64" "%~n1o%~x1"
;del "temp.~b64"
;copy /b "%~n1o%~x1" /b + "%~1" /b
;del /f /q %~1
;ren "%~n1o%~x1" "%~1"

;Title Converting batch scripts to file.exe with iexpress
;Mode 110,20 & color 0A
;Rem Original Script https://github.com/npocmaka/batch.scripts/edit/master/hybrids/iexpress/bat2exeIEXP.bat
;echo(
;if "%~1" equ "" (
    ;echo Usage: Drag and Drop your batch file over this script: "%~nx0"
    ;echo Usage: .\%~nx0 batFile.bat target.Exe
    ;Timeout /T 5 /nobreak>nul & Exit
;)
;set "target.exe=%__cd__%%~n1.exe"
;set "batch_file=%~f1"
;set "bat_name=%~nx1"
;set "bat_dir=%~dp1"
;Set "sed=%temp%\2exe.sed"
;echo Please  wait a while ...  Creating "%~n1.exe" ...
;Timeout /T 2 /nobreak>nul
;echo Remmenber to change the 'original filename' from: WEXTRACT.EXE .MUI to another name ...
;Timeout /T 2 /nobreak>nul
;copy /y "%~f0" "%sed%" >nul
;(
    ;(echo()
    ;(echo(AppLaunched=cmd /c "%bat_name%")
    ;(echo(TargetName=%target.exe%)
    ;(echo(FILE0="%bat_name%")
    ;(echo([SourceFiles])
    ;(echo(SourceFiles0=%bat_dir%)
    ;(echo([SourceFiles0])
    ;(echo(%%FILE0%%=)
;)>>"%sed%"

;iexpress /n /q /m %sed%
;del /q /f "%sed%"
;exit /b 0

[Version]
Class=IEXPRESS
SEDVersion=3
[Options]
PackagePurpose=InstallApp
ShowInstallProgramWindow=0
HideExtractAnimation=1
UseLongFileName=1
InsideCompressed=0
CAB_FixedSize=0
CAB_ResvCodeSigning=0
RebootMode=N
InstallPrompt=%InstallPrompt%
DisplayLicense=%DisplayLicense%
FinishMessage=%FinishMessage%
TargetName=%TargetName%
FriendlyName=%FriendlyName%
AppLaunched=%AppLaunched%
PostInstallCmd=%PostInstallCmd%
AdminQuietInstCmd=%AdminQuietInstCmd%
UserQuietInstCmd=%UserQuietInstCmd%
SourceFiles=SourceFiles

[Strings]
InstallPrompt=
DisplayLicense=
FinishMessage=
FriendlyName=-
PostInstallCmd=<None>
AdminQuietInstCmd=
