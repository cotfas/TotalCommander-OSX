# TotalCommander-OSX
How to have TotalCommander(https://www.ghisler.com) Windows version installed on MacOSX

Requirements:

      MacOSX (Tested with Catalina)
      Download your copy of TotalCommander - https://www.ghisler.com
      Install Crossover/Wine *for running windows apps on OSX - https://www.codeweavers.com/crossover/download
      XCODE for building the `Total Commander Starter App` - not mandatory as you can start the TC from the terminal
    
1 Install Crossover and setup a Windows-XP bottle named: default (important to be called default in order to start the app directly from terminal/starter-app)

![alt text](https://github.com/cotfas/TotalCommander-OSX/blob/main/crossover-bottle.png?raw=true)

2 Install your copy of TotalCommander zip from https://www.ghisler.com, eg: of location where TOTALCMD.exe should be found:

    /Users/work/Dropbox/Apps/TotalCommanderWINE/TOTALCMD.exe
    
3 Copy totalcmd.sh to your profile path, and make sure the exe path pointing to TotalCommander app is correct:

    /Applications/.CrossOver.app/Contents/SharedSupport/CrossOver/bin/wine /Users/work/Dropbox/Apps/TotalCommanderWINE/TOTALCMD.exe &

3 Build the `Total Commander Starter App` with XCODE

    Important to check in AppDelegate.swift the totalcmd.sh bash path is correct, eg:
    
    let arguments = ["/Users/work/.scripts/totalcmd.sh"]

4 After building the XCODE Mac project, you can copy/install the product .app to your /Application/ folder

![alt text](https://github.com/cotfas/TotalCommander-OSX/blob/main/xcode-product-app.png?raw=true)

    Starting it from /Application or Launchpad:

![alt text](https://github.com/cotfas/TotalCommander-OSX/blob/main/total-commander-starter-app.png?raw=true)

    Final result:

![alt text](https://github.com/cotfas/TotalCommander-OSX/blob/main/totalcommander-result-hidden-bar.png?raw=true)

![alt text](https://github.com/cotfas/TotalCommander-OSX/blob/main/totalcommander-result.png?raw=true)
