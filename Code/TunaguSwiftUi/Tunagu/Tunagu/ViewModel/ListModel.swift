//
//  ListModel.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-26.
//

import Foundation
import CoreData

enum Priority: Int {
    case low = 0
    case normal = 1
    case high = 2
}

struct ToDoItem: Identifiable {
    var id = UUID()
    var name: String = ""
    var priorityNum: Priority = .normal
    var isComplete: Bool = false
}
