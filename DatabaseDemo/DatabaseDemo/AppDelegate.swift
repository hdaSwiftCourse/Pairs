//
//  AppDelegate.swift
//  DatabaseDemo
//
//  Created by Garrit Schaap on 26.05.15.
//  Copyright (c) 2015 Garrit UG (haftungsbeschränkt). All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        MagicalRecord.setupAutoMigratingCoreDataStack()
        
        // Uncomment this lines if you run the code the first time.
//        let user01 = UserData.MR_createEntity() as! UserData
//        user01.uid = NSNumber(integer: 0)
//        user01.name = "Name 01"
//        
//        let user02 = UserData.MR_createEntity() as! UserData
//        user02.uid = NSNumber(integer: 1)
//        user02.name = "Name 02"
//        
//        let user03 = UserData.MR_createEntity() as! UserData
//        user03.uid = NSNumber(integer: 2)
//        user03.name = "Name 03"

        // Save the Changes to the persistent Store
//        let context = NSManagedObjectContext.MR_defaultContext()
//        context.MR_saveToPersistentStoreWithCompletion(nil)
        
        println(UserData.MR_findAll())
        println(UserData.MR_findFirstByAttribute("uid", withValue: 1))
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

