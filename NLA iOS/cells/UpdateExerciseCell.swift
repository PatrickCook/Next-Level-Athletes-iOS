//
//  UpdateExerciseCell.swift
//  NLA App v2
//
//  Created by Patrick Cook on 2/12/17.
//  Copyright © 2017 Patrick Cook. All rights reserved.
//

import UIKit

class UpdateExerciseCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var repsInput: UITextField!
    @IBOutlet weak var setsInput: UITextField!
    
    var UserExerciseSchedule: [ExerciseModel] = [ExerciseModel]()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
