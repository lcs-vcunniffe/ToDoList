//
//  ItemView.swift
//  ToDoList
//
//  Created by Veda Niav Cunniffe on 2024-04-08.
//

import SwiftUI

struct ItemView: View {
    
    let currentItem: ToDoItem
    
    var body: some View {
        Label(
            title: {
                Text(currentItem.title)
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
            }
        )
    }
}

#Preview {
    List {
        ItemView(currentItem: firstItem)
        ItemView(currentItem: secondItem)
        ItemView(currentItem: thirdItem)
    }
}
