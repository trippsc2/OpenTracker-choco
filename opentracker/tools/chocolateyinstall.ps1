$ErrorActionPreference = 'Stop';

$url        = 'https://github.com/trippsc2/OpenTracker/releases/download/1.8.3/OpenTracker.1.8.3.win-x86.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'msi'
  url           = $url
  softwareName  = 'opentracker*'
  checksum      = '57A099C64A3B37A62151E100B3F0844A7DD9CD8E78B1608A9658A1EEDBA498D6'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs