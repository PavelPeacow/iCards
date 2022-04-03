//
//  iCardsApp.swift
//  iCards
//
//  Created by Павел Кай on 01.04.2022.
//

import SwiftUI

@main
struct iCardsApp: App {
    @StateObject private var dataContoller = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataContoller.container.viewContext)
        }
    }
}
