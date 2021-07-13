//
//  EditDateCell.swift
//  Reminders
//
//  Created by Ilja Patrushev on 13.7.2021.
//

import UIKit

class EditDateCell: UITableViewCell {
    
    @IBOutlet var datePicker: UIDatePicker!
    
    func configure(date: Date){
        
        datePicker.date = date
    }
}
