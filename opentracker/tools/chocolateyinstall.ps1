$ErrorActionPreference = 'Stop';

$url        = 'https://github.com/trippsc2/OpenTracker/releases/download/1.8.2/OpenTracker.1.8.2.win-x86.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'msi'
  url           = $url
  softwareName  = 'opentracker*'
  checksum      = 'FA7F14C401B6F73A32290CD8E7B14EDD54CE59044B61F7D4998BBA2CC393FE34'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs