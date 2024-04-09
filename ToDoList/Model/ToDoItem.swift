//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Veda Niav Cunniffe on 2024-04-08.
//

import SwiftData

@Model
class ToDoItem: Identifiable {
    var title: String
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
}

let firstItem = ToDoItem(title: "Study for chemistry quiz", done: false)

let secondItem = ToDoItem(title: "Finish computer science assignment", done: true)

let thirdItem = ToDoItem(title: "Go for a run around campus", done: false)

let exampleItems = [
    firstItem,
    secondItem,
    thirdItem
]
