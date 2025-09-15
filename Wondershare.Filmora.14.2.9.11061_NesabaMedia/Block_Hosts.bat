@echo off
set /a _Debug=0
::==========================================
:: Get Administrator Rights
set _Args=%*
if "%~1" NEQ "" (
  set _Args=%_Args:"=%
)
fltmc 1>nul 2>nul || (
  cd /d "%~dp0"
  cmd /u /c echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~dp0"" && ""%~dpnx0"" ""%_Args%""", "", "runas", 1 > "%temp%\GetAdmin.vbs"
  "%temp%\GetAdmin.vbs"
  del /f /q "%temp%\GetAdmin.vbs" 1>nul 2>nul
  exit
)
::==========================================
@shift /0
CLS
@COLOR b
@echo off

icacls "%SystemRoot%\System32\drivers\etc\hosts" /grant administrators:F

attrib -h -r -s "%SystemRoot%\System32\drivers\etc\hosts"

SET NEWLINE=^& echo.

FIND /C /I "platform.wondershare.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	platform.wondershare.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "activation.cyberlink.com " %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	activation.cyberlink.com >>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "pc-api.wondershare.cc" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	pc-api.wondershare.cc>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "analytics.wondershare.cc" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	analytics.wondershare.cc>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "cloud-api.wondershare.cc" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	cloud-api.wondershare.cc>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "sparrow.wondershare.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	sparrow.wondershare.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "wae.wondershare.cc" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	wae.wondershare.cc>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "wondershare.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	wondershare.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "api.wondershare.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	api.wondershare.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "antipiracy.wondershare.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	antipiracy.wondershare.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "mail.insidews.wondershare.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	mail.insidews.wondershare.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "accounts.wondershare.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	accounts.wondershare.com>>%WINDIR%\system32\drivers\etc\hosts

ipconfig /flushdns

@Exit

