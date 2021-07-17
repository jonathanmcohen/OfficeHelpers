$vlcWeb = Invoke-WebRequest -Uri "https://www.videolan.org/vlc/download-windows.html" 
$vlcVersion = [regex]::match($vlcWeb.Content,'\d\.\d\.\d\d').Value.Trim()

Remove-Item vlcVersion.txt -Force

$vlcVersion | Out-File vlcVersion.txt