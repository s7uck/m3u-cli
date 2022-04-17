### m3u-cli — .m3u generator
```powershell
./m3u.ps1 'Y:\Videos' 'Example Playlist'
```

## Example
![Example of m3u generation](https://user-images.githubusercontent.com/71439748/163718241-b9a79d2d-9040-4df4-82eb-c123c787bd21.png)

## Download
```
# Enter the folder you want to download m3u-cli in
cd C:\ExampleFolder
# Download the code
New-Item m3u.ps1
  | Set-Content (iwr 'https://raw.githubusercontent.com/hd917/m3u-cli/master/m3u.ps1').Content
```
