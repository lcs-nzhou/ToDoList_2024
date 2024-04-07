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
        HStack{
            Button(action: {}){
                Image(systemName: item.checkMark)
            }
            .tint(.blue)
            Text(item.itemDetail)
        }
    }
}

#Preview {
    ItemView(item: item1)
}
