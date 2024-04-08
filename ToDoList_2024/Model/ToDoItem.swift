//
//  ToDoItem.swift
//  ToDoList_2024
//
//  Created by Shuyu Zhou on 2024-04-06.
//

import Foundation
import SwiftUI

struct ToDoItem: Identifiable {
    let id = UUID()
    
    var itemDetail : String
    var completed : Bool
}
let item1 = ToDoItem(itemDetail: "Study for Chemistry quiz", completed: false)

let item2 = ToDoItem(itemDetail: "Finish Computer Science assignment", completed: true)

let item3 = ToDoItem(itemDetail: "Go for a run around campus", completed: false)
