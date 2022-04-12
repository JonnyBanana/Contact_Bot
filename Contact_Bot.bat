@echo off
REM ContactToolkit by JoNnYbAnAnA
REM
REM
REM
REM
title ContactBot
color 04
mode 93,30
rem md ContactToolkit
rem cd ContactToolkit
cls
echo.
echo.
echo 				CAUTION!
echo.	
echo 	BEFORE CONTINUING, MAKE SURE YOU DO NOT HAVE .VCF 
echo.
echo 	FILES IN THE ROOT OF THE PROGRAM, BECAUSE THEY WILL
echo.
echo 	BE DELETED BY THE PROGRAM, WHEN YOU USE THE
echo.
echo 	"CREATE AND EXPORT CONTACTS" FUNCTION!
echo.
echo.
echo.
pause
goto masterchoice
:masterchoice
cls
echo.
echo.
echo.
echo                      ษออออออออออออออออออออออออออออออออออออออออออออออออออป
echo                      บ                    Contact_Bot                   บ
echo                      ฬออออออออออออออออออออออออออออออออออออออออออออออออออน
echo                      บ     Ceate, Export, and Merge (vCard) Contacts    บ
echo                      ฬออออออออออออออออออออออออออออออออออออออออออออออออออน
echo                      บ                ***By JONNYBANANA***              บ
echo                      ศออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo [1] Create and Export Contacts
echo [2] Merge Multiple vcf
echo.
choice /c:123 /n /m "[*] Enter Your Choice [1,2] : "
if errorlevel 2 goto merge
if errorlevel 1 goto create
:create
echo.
echo.
cls
REM You must first delete any vcf files in the folder to avoid overlapping telephone contacts
IF EXIST *.vcf del *.vcf
goto dothemagic
:dothemagic
echo.
echo.
echo.
echo                      *อออออออออออออออออออออออออออออออออออออออออออออออออออ*
echo                      บ                  Create Contacts                  บ
echo                      *อออออออออออออออออออออออออออออออออออออออออออออออออออ*
echo.
echo.
echo.
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
pause
cls
echo.
echo.
echo [1] Add More Contacts
echo [2] Export Contacts
echo.
choice /c:12 /n /m "[*] Enter Your Choice [1,2] : "
if errorlevel 2 goto export
if errorlevel 1 goto dothemagic
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
timeout /t 3 /nobreak>nul
cls
echo.
echo ALL CONTACTS HAVE BEEN CORRECTLY 
echo.
echo EXPORTED TO THE FILE "Exported_Contacts.vcf"
echo.
REM move *.* ..
REM del *.vcf
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
echo                      บ                  Merge Contacts                  บ
echo                      ศออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo CAUTION!
echo.
echo Insert the .vcf files in the ROOT of the program, and make sure that inside the folder 
echo there are EXCLUSIVELY the .vcf files you want to merge!
echo.
echo The program will merge all the files with the .vcf extension that it finds inside the folder.
echo Before performing the merge make sure that there are no other .vcf files in the root and 
echo that there are only the files you want to merge!
echo.
echo.
pause
cls
echo .
echo Merging All Contacts . . .
echo.
type *.vcf > Contacts.txt
rem del *.vcf
ren Contacts.txt Merged_Contacts.vcf
echo.
rem move *.* ..
rem del *.vcf
timeout /t 2 /nobreak>nul
echo The file "Merged_Contacts.vcf" was created successfully!
echo.
echo CAUTION!
echo. 
echo REMEMBER TO BACKUP THE .vcf FILES LOCATED IN THE PROGRAM ROOT BEFORE USING THE OTHER PROGRAM FUNCTIONS!
echo The "Create Contacts" function delete all the .vcf files contained in the 
echo program root before performing their work! 
echo.
pause
echo.
cls
goto masterchoice