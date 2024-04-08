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
    
    //The list of to-do items
    @State var todos: [ToDoItem] = exampleItems
    
    //MARK: Computed properties
    var body: some View {
        
        NavigationView{
            
            VStack{
                List(todos) { todo in
                    ItemView(item: todo)
                }
                .searchable(text: $searchText)
                
                HStack{
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button(action: {
                        createToDo(withTitle: newItemDescription)
                    }, label: {
                        Text("ADD")
                    })
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(20)
            }
            .navigationTitle("To do")
        }
    }
    
    //MARK: Functions
    func createToDo (withTitle title: String) {
        
        //Create the new to-do item instance
        let todo = ToDoItem(itemDetail: title, completed: false)
        
        //Append to the array
        todos.append(todo)
    }
    
}

#Preview {
    LandingView()
}
