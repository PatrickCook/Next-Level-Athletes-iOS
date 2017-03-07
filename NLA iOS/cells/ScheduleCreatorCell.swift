//
//  ScheduleCreatorCellTableViewCell.swift
//  NLA App v2
//
//  Created by Patrick Cook on 2/12/17.
//  Copyright © 2017 Patrick Cook. All rights reserved.
//

import UIKit

class ScheduleCreatorCell: UITableViewCell {

    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellUserSelection: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
