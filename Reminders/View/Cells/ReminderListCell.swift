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
    
    private var doneButtonAction: DoneButtonAction?
    
    
    @IBAction func doneButtonTriggered(_ sender: UIButton){
        doneButtonAction?()
    }
    
    func configure(title: String, dateText: String, isDone: Bool, doneButtonAction: @escaping DoneButtonAction){
        titleLabel.text = title
        dateLabel.text = dateText
        let image = isDone ? UIImage(systemName: "circle.fill") : UIImage(systemName: "circle")
        doneButton.setBackgroundImage(image, for: .normal)
        self.doneButtonAction = doneButtonAction
        
        
    }
    
}

