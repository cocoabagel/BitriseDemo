//
//  User+CoreDataProperties.swift
//  BitriseDemo
//
//  Created by Kazutoshi Baba on 3/3/16.
//  Copyright © 2016 Kazutoshi Baba. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

public extension User {

    @NSManaged var fullName: String?
    @NSManaged var phoneNumber: String?

}
