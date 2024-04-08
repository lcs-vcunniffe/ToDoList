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
                    
                }
                .searchable(text: $searchText)
                
            }
        }
    }
}

#Preview {
    LandingView()
}
