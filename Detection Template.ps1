# Version to detect
$Ver = '60.7.0'

# Path to .exe
$path = 'C:\Program Files\Mozilla Firefox\Firefox.exe'
$TestPath = (test-path $path)
#write-host = $TestPath

if ($TestPath.Equals($true))
{
 $appVersion = (get-item $path).VersionInfo.FileVersion 
#Write-host $appVersion
if ($appVersion.Contains($Ver))
    {
    Write-host 'Installed'
}
else
 {
  }
    }
Else
  {
    Write-host 'nope'
   }
