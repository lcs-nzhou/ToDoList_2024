//
//  ItemView.swift
//  ToDoList_2024
//
//  Created by Shuyu Zhou on 2024-04-06.
//

import SwiftUI
import SwiftData

struct ItemView: View {
    
    @Bindable var item : ToDoItem
    
    var body: some View {
        Label(title: {
            TextField("Enter a to-do item", text: $item.itemDetail, axis: .vertical)
        }, icon: {
            Image(systemName: item.completed == true ? "checkmark.circle" : "circle")
            .onTapGesture {
                    item.completed.toggle()
                }
        })
    }
}

#Preview {
    
    let container = ToDoItem.preview
    
    return List {
        ItemView(item: ToDoItem.someItem)
        ItemView(item: ToDoItem.anotherItem)
    }
    .modelContainer(container)
    
}
