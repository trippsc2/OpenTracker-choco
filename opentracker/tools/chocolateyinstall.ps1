$ErrorActionPreference = 'Stop';

$url        = 'https://github.com/trippsc2/OpenTracker/releases/download/1.7.0/OpenTracker.1.7.0.win-x86.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'msi'
  url           = $url
  softwareName  = 'opentracker*'
  checksum      = '508EA16CB22871DEC61D4C4BE252F0C028ED3069080F65B2C9C0B741651E5323'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs