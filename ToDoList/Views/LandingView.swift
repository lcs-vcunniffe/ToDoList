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
    
    //MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ItemView(currentItem: firstItem)
                    ItemView(currentItem: secondItem)
                    ItemView(currentItem: thirdItem)
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField(
                        "Enter a to-do item",
                        text: $newItemDescription
                    )
                    Button("ADD") {
                        //Add the new to-do item
                    }
                    .font(.caption)
                }
                .padding(20)
            }
            .navigationTitle("To Do")
        }
    }
}

#Preview {
    LandingView()
}
