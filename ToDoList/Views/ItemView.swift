//
//  ItemView.swift
//  ToDoList
//
//  Created by Veda Niav Cunniffe on 2024-04-08.
//

import SwiftUI

struct ItemView: View {
    
    @Binding var currentItem: ToDoItem
    
    var body: some View {
        Label(
            title: {
                Text(currentItem.title)
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
            }
        )
    }
}

#Preview {
    List {
        ItemView(currentItem: Binding.constant(firstItem))
        ItemView(currentItem: Binding.constant(secondItem))
        ItemView(currentItem: Binding.constant(thirdItem))
    }
}
