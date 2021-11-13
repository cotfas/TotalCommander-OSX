//
//  AppDelegate.swift
//  Total Commander
//
//  Created by WORK on 19/02/2020.
//  Copyright © 2020 WORK. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        openSH()
        //bash()
        //open()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    
    func bash() {
        let bash: CommandExecuting = Bash()
        
        //if let lsOutput = bash.execute(commandName: "pwd") { print(lsOutput) }
        //if let lsWithArgumentsOutput = bash.execute(commandName: "ls", arguments: ["-l"]) { print(lsWithArgumentsOutput) }
        
        if let lsWithArgumentsOutput = bash.execute(commandName: "/Applications/CrossOver.app/Contents/SharedSupport/CrossOver/bin/wine", arguments: ["--verbose","/Users/work/Dropbox/Apps/TotalCommanderWINE/TOTALCMD.exe"]) { print(lsWithArgumentsOutput) }
    }

    func open() {
        let path = "/Applications/CrossOver.app/Contents/SharedSupport/CrossOver/bin/wine"
        let arguments = ["/Users/work/Dropbox/Apps/TotalCommanderWINE/TOTALCMD.exe"]
         
        Process.launchedProcess(launchPath: path, arguments: arguments)
    }
    
    func openSH() {
        let path = "/bin/sh"
        let arguments = ["/Users/work/.scripts/totalcmd.sh"]
    
        Process.launchedProcess(launchPath: path, arguments: arguments)
        exit(0)
    }
}
