//
//  DailyExerciseCell.swift
//  NLA App v2
//
//  Created by Patrick Cook on 2/8/17.
//  Copyright © 2017 Patrick Cook. All rights reserved.
//

import UIKit

class DailyExerciseCell: UITableViewCell {

    
    @IBOutlet weak var dailyExerciseTitle: UILabel!
    @IBOutlet weak var dailyExerciseSets: UILabel!
    @IBOutlet weak var dailyExerciseMuscleGroup: UILabel!
    @IBOutlet weak var dailyExerciseReps: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
