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
    var checkMark : String
}
let item1 = ToDoItem(itemDetail: "Study for Chemistry quiz", checkMark: "circle")

let item2 = ToDoItem(itemDetail: "Finish Computer Science assignment", checkMark: "checkmark.circle")

let item3 = ToDoItem(itemDetail: "Go for a run around campus", checkMark: "circle")
