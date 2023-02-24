# Optimiza_tu-Windows-con-un simple-script WINDOWS 10
## En este repositorio encontrarás dos carpetas con el contenido en ESPAÑOL y en INGLÉS. Elige la que quieras.

En la carpeta encotraras otras tres carpetas GENERAL, OPTIMIZACIÓN_SERVICIOS y COMPROBACION_ARCHIVOS.


### CARPETA GENERAL.
En esta carpeta encontraras un Script en formato .bat, llamado MENU_ACCIONES_OPTIMIZACION. 
Este contiene un menu que comprende algunas opciones para optimizar el equipo. 
Las opciones son: 
1. Deshabilitar algunos servicios que normalmente no se usan.
2. Borrar el cache de la DNS.
3. Eliminar la aplicación de ONEDRIVE (ya que esta suele iniciarse automaticamente y tambien consume una cantidad minima en segundo plano).
4. Comprobar archivos dañados del sistema. 

Esta última opción tarda su tiempo y al reiniciar el equipo o volver a encencerlo es cuando realmente se hace un escaneo de los archivos del disco duro. Donde esta el sistema instalado. Es recomendable hacerla cuando no se valla a hacer un uso del equipo.

#### Sintaxis del menu con todas las opciones:
````
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
echo . OPCIONES DE TRABAJOS PARA OPTIMIZAR                          .
echo +===============================================+
echo .                                               
echo .  1) AUTOMATIZACION DE SERVICIOS W10           
echo .  2) BORRAR CACHE DNS                          
echo .  3) ELIMINAR ONE DRIVE                        
echo .  4) COMPROBAR ARCHIVOS PERJUDICADOS DEL SISTEMA    
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
````

### CARPETA OPTIMIZACIÓN_SERVICIOS.
En esta carpeta encontraras un Script en formato .bat, llamado OPTIMIZACIÓN_SERVICIOS. 
Este contiene solo la parte del script anterior referente a los servicios. 

#### Sintaxis del fragmento del script anterior perteneciente a los servicios:

````
@echo off
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

````

### CARPETA COMPROBACION_ARCHIVOS_DISCO_DURO.
En esta carpeta encontraras un Script en formato .bat, llamado COMPROBACION_ARCHIVOS_HD. 
Este contiene solo la parte del script anterior referente a los comandos empleados para analizar el disco duro. 

#### Sintaxis del fragmento del script anterior:

````
@echo off
sfc /scannow
DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /RestoreHealth
````


Mas información en mi perfil de Linkedln: https://www.linkedin.com/in/andr%C3%A9s-frutos-ruzafa-6574911ab/
