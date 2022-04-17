### jiggl3y — cli .m3u generator
```powershell
./jiggl3y.ps1 'Y:\Videos' 'Example Playlist'
```

## Example
![Example](https://user-images.githubusercontent.com/71439748/163709128-34449da6-eb66-4f75-8589-7bec8d31e95f.png)

## Download
#### Download to any folder
```
# Enter the folder you want to download jiggl3y in
cd C:\ExampleFolder
# Download the code
New-Item jiggl3y.ps1
  | Set-Content (iwr 'https://raw.githubusercontent.com/hd917/jiggl3y/master/jiggl3y.ps1').Content
```

#### Download to path (run anywhere)
```
# Install to your system binaries
New-Item "$($env:path.Split(';'))[0]\jiggl3y.ps1"
  | Set-Content (iwr 'https://raw.githubusercontent.com/hd917/jiggl3y/master/jiggl3y.ps1').Content
```

> **Note**:
> 
> You should only download jiggl3y to a folder in your `$env:path` if you know what you're doing.
> Run `$env:path.Split(';')` to see all the directories in your system path. You should install
> jiggl3y to a path that is appropriate.
> ![Example of a path](https://user-images.githubusercontent.com/71439748/163709016-ff83dbd1-e138-487e-9019-a70f0f9378d5.png)
