$version = (get-content manifest.json | ConvertFrom-Json).version_number
$zip = "thunderstore-$version.zip"
if(test-path $zip) {
    remove-item $zip
}
Compress-Archive -DestinationPath $zip -Path @(
    "manifest.json"
    "icon.png"
    "README.md"
    "yamldotnet.$version\LICENSE.txt"
    "yamldotnet.$version\lib\net45\YamlDotNet.dll"
    "yamldotnet.$version\lib\net45\YamlDotNet.xml"
)