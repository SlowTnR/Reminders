//
//  ReminderDetailViewController.swift
//  Reminders
//
//  Created by Ilja Patrushev on 11.7.2021.
//

import UIKit

class ReminderDetailViewController: UITableViewController {
    
 
    
    private var reminder: Reminder?
    private var detailViewDataSource: ReminderDetailViewDataSource?
    
    func configure(with reminder: Reminder) {
        self.reminder = reminder
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let reminder = reminder else {
            fatalError("No reminder found in detail view")
        }
        
        detailViewDataSource = ReminderDetailViewDataSource(reminder: reminder)
        tableView.dataSource = detailViewDataSource
        
    }
    
}


