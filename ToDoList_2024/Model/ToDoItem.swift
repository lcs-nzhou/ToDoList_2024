//
//  ToDoItem.swift
//  ToDoList_2024
//
//  Created by Shuyu Zhou on 2024-04-06.
//

import SwiftData

@Model
class ToDoItem: Identifiable {
    var itemDetail : String
    var completed : Bool
    
    init(itemDetail: String, completed: Bool) {
        self.itemDetail = itemDetail
        self.completed = completed
    }
}

extension ToDoItem {
    
    @MainActor
    static var preview: ModelContainer {
        
        let container = try! ModelContainer(
            for: ToDoItem.self,
            configurations: ModelConfiguration(isStoredInMemoryOnly: true)
        )
        
        // Add mock data
        container.mainContext.insert(
            ToDoItem(itemDetail: "Go for a walk", completed: false)
        )
        container.mainContext.insert(
            ToDoItem(itemDetail: "Have a nap", completed: true)
        )
        container.mainContext.insert(
            ToDoItem(itemDetail: "Call mom", completed: false)
        )

        return container
    }
}
