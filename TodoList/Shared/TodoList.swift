//
//  TodoListApp.swift
//  Shared
//
//  Created by Manoj kanaka D.H on 6/3/2024.
//

import SwiftUI

@main
struct TodoList: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            
            let context = persistenceController.container.viewContext
            let dateHolder = DateHolder(context)
            
            TaskListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(dateHolder)
        }
    }
}
