//
//  nRF_UARTApp.swift
//  Shared
//
//  Created by Nick Kibysh on 16/11/2021.
//

import SwiftUI

@main
struct nRF_UARTApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            CommandList()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
