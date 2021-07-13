//
//  EditTitleCell.swift
//  Reminders
//
//  Created by Ilja Patrushev on 13.7.2021.
//

import UIKit

class EditTitleCell: UITableViewCell {
    
    @IBOutlet var titleTextField: UITextField!
    
    func configure(title: String) {
        titleTextField.text = title
    }
}
