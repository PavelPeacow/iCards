//
//  DataController.swift
//  iCards
//
//  Created by Павел Кай on 03.04.2022.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Desk")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Oppsy \(error.localizedDescription)")
            }
        }
    }
}
