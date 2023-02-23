:MENU_START
@echo off
cls
set INPUT=false
set "MENU_OPTION="
set "OPTION1_INPUT="
set "OPTION2_INPUT="
set "OPTION3_INPUT="
set "OPTION4_INPUT="
echo +===============================================+
echo . OPTIONS OPTIMIZED JOBS                          .
echo +===============================================+
echo .                                               
echo .  1) AUTOMATION DEACTIVATION OF SERVICES W10           
echo .  2) DELETE CACHE DNS                          
echo .  3) DELETE ONE DRIVE                        
echo .  4) CHECK FILES TO SYSTEM    
echo .  5) EXIT                                      
echo .                                                     
echo +===============================================+
set /p MENU_OPTION="OPTION: "

IF %MENU_OPTION%==1 GOTO OPTION1
IF %MENU_OPTION%==2 GOTO OPTION2
IF %MENU_OPTION%==3 GOTO OPTION3
IF %MENU_OPTION%==4 GOTO OPTION4
IF %MENU_OPTION%==5 GOTO OPTION5
IF %INPUT%==false GOTO DEFAULT

:OPTION1
set INPUT=true

net stop ALG
net stop PeerDistSvc
net stop NfsClnt
net stop dmwappushsvc
net stop MapsBroker
net stop Fax
net stop lfsvc
net stop hns
net stop HvHost
net stop vmickvpexchange
net stop vmicguestinterface
net stop vmicshutdown
net stop vmicheartbeat
net stop vmcompute
net stop vmicvmsession
net stop vmicrdv
net stop vmictimesync
net stop vmms
net stop vmicvss
net stop IISADMIN
net stop irmon
net stop SharedAccess
net stop MSiSCSI
net stop SmsRouter
net stop CscService
net stop WpcMonSvc
net stop SEMgrSvc
net stop PhoneSvc
net stop RpcLocator
net stop SensrSvc
net stop SensorService
net stop ScDeviceEnum
net stop SCPolicySvc
net stop SNMPTRAP
net stop TabletInputService
net stop WFDSConSvc
net stop FrameServer
net stop wisvc
net stop WMPNetworkSvc
net stop icssvc
net stop WinRM
net stop workfolderssvc
net stop WwanSvc
net stop XblAuthManager
net stop XblGameSave
net stop XboxNetApiSvc

timeout 2 > NUL
GOTO MENU_START

:OPTION2
set INPUT=true
ipconfig /flushdns
timeout 2 > NUL
GOTO MENU_START

:OPTION3
set INPUT=true
%Systemroot%\SysWOW64\OneDriveSetup.exe /uninstall
timeout 2 > NUL
GOTO MENU_START

:OPTION4
set INPUT=true
sfc /scannow
DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /RestoreHealth
timeout 2 > NUL
GOTO MENU_START

:OPTION5
set INPUT=true
echo Gracias y adios.
timeout 2 > NUL
exit /b

:DEFAULT
echo Option not available
timeout 2 > NUL
GOTO MENU_START
