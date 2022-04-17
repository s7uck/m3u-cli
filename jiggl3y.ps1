param($folder = $pwd, $playlist = "$($pwd.Path.Split('/').Split('\')[-1]).m3u")
$currentFolderName = $pwd.Path.Split('/').Split('\')[-1]
if (-not $playlist) {
	$playlist = "$currentFolderName.m3u"
}
$playlist = $playlist.Replace('.m3u', '') + '.m3u'

$files = @(Get-ChildItem)

function Generate-Playlist($folder = $folder, $files = $files, $name = $playlist) {
	if (-not [System.IO.Path]::IsPathRooted($name)) {
		$name = Join-Path -Path $folder -ChildPath $name
	}
	if (Test-Path $name -PathType Leaf) { Remove-Item $name }

	$files | ForEach-Object { $_.Name } | 
	Sort-Object | Out-File -FilePath "$folder\$name" -Encoding UTF8
}

Generate-Playlist
