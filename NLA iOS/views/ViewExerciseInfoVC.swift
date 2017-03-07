//
//  ViewExerciseVC.swift
//  NLA App v2
//
//  Created by Patrick Cook on 2/12/17.
//  Copyright © 2017 Patrick Cook. All rights reserved.
//

import UIKit

class ViewExerciseInfoVC: UIViewController {

    @IBOutlet weak var exerciseNameLabel: UILabel!
    @IBOutlet weak var setsLabel: UILabel!
    @IBOutlet weak var muscleGroupLabel: UILabel!
    @IBOutlet weak var repsLabel: UILabel!
    
    @IBOutlet weak var leftImageView: UIImageView!

    @IBOutlet weak var rightImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
