@echo off
REM ContacttBot by JoNnYbAnAnA
REM https://github.com/JonnyBanana/Contact_Bot/blob/main/Contact_Bot.bat
REM Create, Export, and Merge multiple vcf files
REM A fork of Contact Toolkit by BL4CKH47H4CK3R
title ContactBot
color 04
mode 92,30
cls
echo.
echo.
echo.
echo                      ษออออออออออออออออออออออออออออออออออออออออออออออออออป
echo                      บ                    Contact_Bot                   บ
echo                      ฬออออออออออออออออออออออออออออออออออออออออออออออออออน
echo                      บ              Export Contacts (vCard)             บ
echo                      ฬออออออออออออออออออออออออออออออออออออออออออออออออออน
echo                      บ                ***By JONNYBANANA***              บ
echo                      ศออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
goto masterchoice
:masterchoice
echo [1] Create Contacts
echo [2] Export Contacts
echo [3] Merge Multiple vcf
echo [4] Create Redeable Contacts File
echo [5] Exit
echo.
choice /c:12345 /n /m "[*] Enter Your Choice [1,2,3,4,5] : "
if errorlevel 5 exit
if errorlevel 4 goto odt
if errorlevel 3 goto merge
if errorlevel 2 goto export
if errorlevel 1 goto create
:create
echo.
echo.
cls
echo.
echo.
echo.
echo                      *อออออออออออออออออออออออออออออออออออออออออออออออออออ*
echo                      บ                  Create Contacts                  บ
echo                      *อออออออออออออออออออออออออออออออออออออออออออออออออออ*
echo.
echo.
echo.
REM You must first delete any vcf files in the folder to avoid overlapping telephone contacts
del *.vcf
echo.
echo Enter the Contact Name and Phone Number
echo.
set /p name=[*] Name  :  
set /p number=[*] Phone :  
echo.
echo BEGIN:VCARD>>"%name%".vcf
echo VERSION:3.0>>"%name%".vcf
echo N:%name%;;;>>"%name%".vcf
echo FN:%name%>>"%name%".vcf
echo TEL;CELL:%number%>>"%name%".vcf
echo END:VCARD>>"%name%".vcf
echo [1] Add More Contacts
echo [2] Export Contacts
echo.
choice /c:12 /n /m "[*] Enter Your Choice [1,2] : "
if errorlevel 2 goto export
if errorlevel 1 goto create
:export
cls
echo.
echo.
echo.
echo                      ษออออออออออออออออออออออออออออออออออออออออออออออออออป
echo                      บ                  Export Contacts                 บ
echo                      ศออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo Exporting All Contacts . . .
echo.
type *.vcf > Contacts.txt
del *.vcf
ren Contacts.txt Exported_Contacts.vcf
echo.
move *.* ..
del *.vcf
timeout /t 2 /nobreak>nul
echo.
pause
echo.
goto masterchoice
:merge
cls
echo.
echo.
echo.
echo                      ษออออออออออออออออออออออออออออออออออออออออออออออออออป
echo                      บ                  Merge Contacts                 บ
echo                      ศออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo Merging All Contacts...
echo.
type *.vcf > Contacts.txt
del *.vcf
ren Contacts.txt Merged_Contacts.vcf
echo.
move *.* ..
del *.vcf
timeout /t 2 /nobreak>nul
echo.
pause
echo.
goto masterchoice
:odt
cls
echo.
echo.
echo.
echo                      ษออออออออออออออออออออออออออออออออออออออออออออออออออป
echo                      บ           Create Redeable Contacts File          บ
echo                      ศออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo Creating the .odt file...
echo.
echo.
IF EXIST "REDEABLE_VCF" (
goto odttwo
) ELSE (
mkdir REDEABLE_VCF
goto odttwo
)
:odttwo
copy *.vcf "REDEABLE_VCF"
ren *.vcf *.odt
move *.odt "REDEABLE_VCF"
timeout /t 2 /nobreak>nul
echo File Created Successfully!
echo.
echo.
pause
echo.
goto masterchoice