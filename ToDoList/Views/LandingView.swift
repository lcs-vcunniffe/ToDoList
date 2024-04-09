//
//  ContentView.swift
//  ToDoList
//
//  Created by Veda Niav Cunniffe on 2024-04-06.
//

import SwiftUI

struct LandingView: View {
    //MARK: Stored properties
    //In the item being added
    @State var newItemDescription: String = ""
    //In the search field
    @State var searchText: String = ""
    //In the list of items
    @State var todos: [ToDoItem] = exampleItems
    
    //MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                List($todos) { $todo in
                    ItemView(currentItem: $todo)
                        .swipeActions {
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    delete(todo)
                                }
                            )
                        }
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField(
                        "Enter a to-do item",
                        text: $newItemDescription
                    )
                    Button("ADD") {
                        createToDo(withTitle: newItemDescription)
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(20)
            }
            .navigationTitle("To Do")
        }
    }
    
    //MARK: Functions
    func createToDo(withTitle title: String) {
        //Create the new to-do item instance
        let todo = ToDoItem(
            title: title,
            done: false
        )
        //Append to the array
        todos.append(todo)
    }
    func delete(_ todo: ToDoItem) {
        todos.removeAll { currentItem in
            currentItem.id == todo.id
        }
    }
}

//#Preview {
//    LandingView()
//}
