//
//  ItemView.swift
//  ToDoList
//
//  Created by Veda Niav Cunniffe on 2024-04-08.
//

import SwiftUI

struct ItemView: View {
    let title: String
    let done: Bool
    
    var body: some View {
        Label(
            title: {
                Text(title)
            }, icon: {
                Image(systemName: done == true ? "checkmark.circle" : "circle")
            }
        )
    }
}

#Preview {
    List {
        ItemView(title: "Have a nap", done: false)
        ItemView(title: "Eat lunch", done: true)
    }
}
