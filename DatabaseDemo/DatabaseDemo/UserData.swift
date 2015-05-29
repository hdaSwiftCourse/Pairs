//
//  UserData.swift
//  
//
//  Created by Garrit Schaap on 26.05.15.
//
//

import Foundation
import CoreData

@objc(UserData)
class UserData: NSManagedObject {

    @NSManaged var uid: NSNumber
    @NSManaged var name: String
    @NSManaged var friendship: NSSet

}
