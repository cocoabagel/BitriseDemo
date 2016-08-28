//
//  TestCoreDataStack.swift
//  BitriseDemo
//
//  Created by Kazutoshi Baba on 3/3/16.
//  Copyright © 2016 Kazutoshi Baba. All rights reserved.
//

import BitriseDemo
import Foundation
import CoreData

class TestCoreDataStack: CoreDataStack {
    override init() {
        super.init()
        self.persistentStoreCoordinator = {
            let psc = NSPersistentStoreCoordinator(
                managedObjectModel: self.managedObjectModel)
            
            do {
                try psc.addPersistentStore(
                    ofType: NSInMemoryStoreType, configurationName: nil,
                    at: nil, options: nil)
            } catch {
                fatalError()
            }
            
            return psc
            }()
    }
}
