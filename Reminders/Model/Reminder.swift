//
//  Reminder.swift
//  Reminders
//
//  Created by Ilja Patrushev on 11.7.2021.
//

import Foundation

struct Reminder {
    
    var id: String
    var title: String
    var dueDate: Date
    var notes: String? = nil
    var isComplete: Bool = false
    
}

