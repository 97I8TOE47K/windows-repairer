@ECHO OFF
TITLE Windows Repairer
ECHO This script attempts to repair the internal Windows Image and System Files on 
ECHO Windows 8.1, Windows 10 and Windows 11 and just repair system files on Windows 7.
ECHO Running this script takes time, so please be patient.
PAUSE
ECHO Please wait. Repairing internal Windows image....
ECHO ==============================================
::Repairing internal Windows Image
DISM /Online /Cleanup-image /RestoreHealth >> repair.txt
ECHO ==============================================
ECHO Repairing System Files....
::Repairing corrupt Windows files
sfc /scannow >> repair.txt
ECHO ==============================================
ECHO You can see the written report on repair.txt
ECHO You are requested to see if repair.txt mentiones either of the following:-
ECHO 1. Windows Resource Protection did not find any integrity violations.
ECHO 2. Windows Resource Protection found corrupt files and successfully repaired them.
ECHO If the above are mentioned in repair.txt, the system file repair command has been executed 
ECHO successfully. 
ECHO If the following are found:-
ECHO 1. Windows Resource Protection found corrupt files but was unable to fix some of them. 
ECHO    Details are included in the CBS.Log %WinDir%\Logs\CBS\CBS.log.
ECHO 2. Windows Resource Protection could not perform the requested operation.
ECHO Then please proceed to troubleshooting.
ECHO =============================================
ECHO TROUBLESHOOTING
ECHO If "Windows Resource Protection found corrupt files but was unable to fix some of them. 
ECHO     Details are included in the CBS.Log %WinDir%\Logs\CBS\CBS.log." is found:-
ECHO Solution: Perform a repair install of Windows.
ECHO --------------------------------------------
ECHO If "Windows Resource Protection could not perform the requested operation." is found:-
ECHO Solution: Run the command in safe mode
ECHO =============================================
ECHO =============================================

PAUSE
