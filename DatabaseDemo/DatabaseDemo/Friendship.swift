//
//  Friendship.swift
//  
//
//  Created by Garrit Schaap on 26.05.15.
//
//

import Foundation
import CoreData

@objc(Friendship)
class Friendship: NSManagedObject {

    @NSManaged var uid: NSNumber
    @NSManaged var friends: NSSet

}
