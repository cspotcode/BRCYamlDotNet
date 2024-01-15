$version = (Get-Content manifest.json | ConvertFrom-Json).version_number
$dir = "yamldotnet.$version"
$nupkg = "$dir.nupkg"
Invoke-WebRequest -OutFile $nupkg https://www.nuget.org/api/v2/package/YamlDotNet/$version
Expand-Archive -Path $nupkg -DestinationPath yamldotnet.$version