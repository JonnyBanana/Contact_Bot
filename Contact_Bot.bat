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
echo                      ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo                      º                    Contact_Bot                   º
echo                      ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹
echo                      º              Export Contacts (vCard)             º
echo                      ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹
echo                      º                ***By JONNYBANANA***              º
echo                      ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.
echo.
echo.
goto masterchoice
:masterchoice
echo [1] Create Contacts
echo [2] Export Contacts
echo [3] Merge Multiple vcf
echo.
choice /c:123 /n /m "[*] Enter Your Choice [1,2,3] : "
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
echo                      *ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ*
echo                      º                  Create Contacts                  º
echo                      *ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ*
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
echo                      ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo                      º                  Export Contacts                 º
echo                      ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
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
echo                      ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo                      º                  Merge Contacts                 º
echo                      ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.
echo.
echo.
echo Merging All Contacts . . .
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
