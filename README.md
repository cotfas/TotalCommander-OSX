# TotalCommander-OSX
How to have TotalCommander(https://www.ghisler.com) Windows version installed on MacOSX

Requirements:

      MacOSX (Tested with Catalina)
      Download your copy of TotalCommander - https://www.ghisler.com
      Install Crossover/Wine *for running windows apps on OSX - https://www.codeweavers.com/crossover/download
      XCODE for building the `Total Commander Starter App` - not mandatory as you can start the TC from the terminal
    
1 Install Crossover and setup a Windows-XP bottle named: default (important to be called default in order to start the app directly from terminal/starter-app)

![alt text](https://github.com/cotfas/TotalCommander-OSX/blob/main/Screens/crossover-bottle.png?raw=true)

2 Install your copy of TotalCommander zip from https://www.ghisler.com, eg: of location where TOTALCMD.exe should be found:

    /Users/work/Dropbox/Apps/TotalCommanderWINE/TOTALCMD.exe
    
3 Copy totalcmd.sh to your profile path, and make sure the path pointing to TotalCommander EXE is correct:

    /Applications/.CrossOver.app/Contents/SharedSupport/CrossOver/bin/wine /Users/work/Dropbox/Apps/TotalCommanderWINE/TOTALCMD.exe &

3 Build the `Total Commander Starter App` with XCODE

    Important to check in AppDelegate.swift the totalcmd.sh bash path is correct, eg:
    
    let arguments = ["/Users/work/.scripts/totalcmd.sh"]

4 After building the XCODE Mac project, you can copy/install the product .app to your /Application/ folder

![alt text](https://github.com/cotfas/TotalCommander-OSX/blob/main/Screens/xcode-product-app.png?raw=true)

    Starting it from /Application or Launchpad:
    
![alt text](https://github.com/cotfas/TotalCommander-OSX/blob/main/Screens/totalcommander-result-on-mac.png?raw=true)



    # License

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
