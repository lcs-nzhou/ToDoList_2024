//
//  ItemView.swift
//  ToDoList_2024
//
//  Created by Shuyu Zhou on 2024-04-06.
//

import SwiftUI

struct ItemView: View {
    var toDoListItem : String
    var body: some View {
        HStack{
            Button(action: {}){
                Image(systemName: "checkmark.circle")
            }
            Text(toDoListItem)
        }
    }
}

#Preview {
    ItemView(toDoListItem: "Study for Chemistry quiz")
}
