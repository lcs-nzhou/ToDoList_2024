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
let item1 = ToDoItem(itemDetail: "Study for Chemistry quiz", completed: false)

let item2 = ToDoItem(itemDetail: "Finish Computer Science assignment", completed: true)

let item3 = ToDoItem(itemDetail: "Go for a run around campus", completed: false)

let exampleItems = [item1, item2, item3]
