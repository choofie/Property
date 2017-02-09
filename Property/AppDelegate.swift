//
//  AppDelegate.swift
//  Property
//
//  Created by Mate Lorincz on 2017. 02. 09..
//  Copyright © 2017. Mate Lorincz. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        let myClass = MyClass()
        myClass.stringProperty = "asd"
        myClass.doubleProperty = 1.0
        print(myClass.propertyList())
        print(myClass.propertyWithValueList())
        print(myClass.propertyWithValueListFilter())
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

