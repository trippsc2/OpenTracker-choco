$ErrorActionPreference = 'Stop';

$url        = 'https://github.com/trippsc2/OpenTracker/releases/download/1.8.1/OpenTracker.1.8.1.win-x86.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'msi'
  url           = $url
  softwareName  = 'opentracker*'
  checksum      = 'DBD4A3EBC44171F3AE6C945218529266C918D85D43F6972B634ADCCBF020D625'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs