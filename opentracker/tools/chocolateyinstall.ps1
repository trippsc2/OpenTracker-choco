$ErrorActionPreference = 'Stop';

$url        = 'https://github.com/trippsc2/OpenTracker/releases/download/1.8.5/OpenTracker.1.8.5.win-x86.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'msi'
  url           = $url
  softwareName  = 'opentracker*'
  checksum      = 'FE0C6F66CF20CE5C78592A4CE13AD318F30D651FDDEB5CD7668FC7968B80FBB3'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs