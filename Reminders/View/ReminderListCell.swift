//
//  ReminderListCell.swift
//  Reminders
//
//  Created by Ilja Patrushev on 11.7.2021.
//

import UIKit

class ReminderListCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    @IBOutlet var doneButton: UIButton!
    
    typealias DoneButtonAction = () -> Void
    
    var doneButtonAction: DoneButtonAction?
    
    @IBAction func doneButtonTriggered(_ sender: UIButton){
        doneButtonAction?()
    }
    
}

