param($folder = $pwd, $playlist = "$($pwd.Path.Split('/').Split('\')[-1]).m3u")
$currentFolderName = $pwd.Path.Split('/').Split('\')[-1]
if (-not $playlist) {
	$playlist = "$currentFolderName.m3u"
}
$playlist = $playlist.Replace('.m3u', '') + '.m3u'

$folder = Resolve-Path $folder
$files = @((
	Resolve-Path (
		Get-ChildItem .\* -Include "*.mp4", "*.mp3", "*.mkv", "*.avi", "*.ogg", "*.mpg", "*.mpeg", "*.wav", "*.wave", "*.opus"
	).Name).Path)

function Generate-Playlist($folder = $folder, $files = $files, $name = $playlist) {
	$files | Out-File -FilePath "$folder\$name" -Encoding UTF8
}

Generate-Playlist
Write-Host "Created playlist $playlist with $($files.Count) files from $folder" -ForegroundColor Blue
