$zoomWeb = Invoke-WebRequest "https://zoom.us/download"
$zoomVersion = [regex]::match($zoomWeb.Content,'\d\.\d\.\d\s\(\d\d\d\)').Value.Trim()
$zoomSanitized = $zoomVersion.trim().replace('(','.').replace(')','').replace(' ', '')

$zoomSanitized | Out-File zoomVersion.txt