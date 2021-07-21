//
//  RemminderListDataSource.swift
//  Reminders
//
//  Created by Ilja Patrushev on 13.7.2021.
//

import UIKit

class ReminderListDataSource: NSObject {
    
    private lazy var dateFormatter = RelativeDateTimeFormatter()
    
    func update(_ reminder: Reminder, at row: Int) {
        Reminder.testData[row] = reminder
    }
    
    func reminder(at row: Int) -> Reminder {
        return Reminder.testData[row]
    }
    
    func add(_ reminder: Reminder){
        Reminder.testData.insert(reminder, at: 0)
    }

}

extension ReminderListDataSource: UITableViewDataSource {
    
    static let reminderListCellIdentifier = "ReminderListCell"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Reminder.testData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Self.reminderListCellIdentifier,
                                                       for: indexPath) as? ReminderListCell
        else { fatalError("Unable to dequeue ReminderCell") }
        
        let reminder = Reminder.testData[indexPath.row]
        
        let dateText = dateFormatter.localizedString(for: reminder.dueDate, relativeTo: Date())
        
        cell.configure(title: reminder.title,
                       dateText: dateText,
                       isDone: reminder.isComplete) {
            Reminder.testData[indexPath.row].isComplete.toggle()
            tableView.reloadRows(at: [indexPath], with: .automatic)
            
        }
        
        return cell
    }
    
}
