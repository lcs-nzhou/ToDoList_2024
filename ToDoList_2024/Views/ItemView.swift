//
//  ItemView.swift
//  ToDoList_2024
//
//  Created by Shuyu Zhou on 2024-04-06.
//

import SwiftUI

struct ItemView: View {
    
    @Binding var item : ToDoItem
    
    var body: some View {
        Label(title: {
            Text(item.itemDetail)
        }, icon: {
            Image(systemName: item.completed == true ? "checkmark.circle" : "circle")
            .onTapGesture {
                    item.completed.toggle()
                }
        })
    }
}

#Preview {
    ItemView(item: Binding.constant(item1))
}
