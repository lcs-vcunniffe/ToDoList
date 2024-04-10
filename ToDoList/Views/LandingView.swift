//
//  ContentView.swift
//  ToDoList
//
//  Created by Veda Niav Cunniffe on 2024-04-06.
//

import SwiftData
import SwiftUI

struct LandingView: View {
    //MARK: Stored properties
    //To get to the model context (for changes, etc.)
    @Environment(\.modelContext) var modelContext
    //In the item being added
    @State var newItemDescription: String = ""
    //In the search field
    @State var searchText: String = ""
    //In the list of items
    @Query var todos: [ToDoItem]
    
    //MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(todos) { todo in
                        ItemView(currentItem: todo)
                    }
                    .onDelete(perform: removeRows)
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
            .onAppear {
                printCommandToOpenDatabaseFile()
            }
        }
    }
    
    //MARK: Functions
    func createToDo(withTitle title: String) {
        //Create the new to-do item instance
        let todo = ToDoItem(
            title: title,
            done: false
        )
        //Use the model context to insert the new to-do
        modelContext.insert(todo)
    }
    func removeRows(at offsets: IndexSet) {
        //Accept the offset within the list (the position of the deleted item
        //Then ask the model context to delete this from the "todos" array for us
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
}

#Preview {
    LandingView()
        .modelContainer(ToDoItem.preview)
}
