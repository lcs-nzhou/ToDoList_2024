//
//  LandingView.swift
//  ToDoList_2024
//
//  Created by Shuyu Zhou on 2024-04-06.
//

import SwiftUI

struct LandingView: View {
    //MARK: Stored properties
    
    //The item currentl being added
    @State var newItemDescription: String = ""
    
    //The search text
    @State var searchText = ""
    
    //MARK: Computed properties
    var body: some View {
        
        NavigationView{
            
            VStack{
                List{
                    ItemView(toDoListItem: "Study for Chemistry quiz", checkmark: "circle")
                    ItemView(toDoListItem: "Finish Computer Science assignment", checkmark: "checkmark.circle")
                    ItemView(toDoListItem: "Go for a run around campus", checkmark: "circle")
                }
                .searchable(text: $searchText)
                
                HStack{
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button(action: {}) {
                        Text("ADD")
                    }
                }
                .padding(20)
            }
            .navigationTitle("To do")
        }
    }
}

#Preview {
    LandingView()
}
