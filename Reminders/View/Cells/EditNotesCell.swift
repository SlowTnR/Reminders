//
//  EditNotesCell.swift
//  Reminders
//
//  Created by Ilja Patrushev on 13.7.2021.
//

import UIKit


class EditNotesCell: UITableViewCell {
    
    @IBOutlet var notesTextView: UITextView!
    
    func configure(notes: String?){
        notesTextView.text = notes
    }
}
