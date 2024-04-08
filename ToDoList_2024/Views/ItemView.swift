//
//  ItemView.swift
//  ToDoList_2024
//
//  Created by Shuyu Zhou on 2024-04-06.
//

import SwiftUI

struct ItemView: View {
    
    var item : ToDoItem
    
    var body: some View {
        Label(title: {
            Text(item.itemDetail)
        }, icon: {
            if item.completed == true{
                Image(systemName: "checkmark.circle")
            } else {
                Image(systemName: "circle")
            }
        })
    }
}

#Preview {
    ItemView(item: item1)
}
