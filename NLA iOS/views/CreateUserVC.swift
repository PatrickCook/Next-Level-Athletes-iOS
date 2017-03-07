//
//  CreateUserVC.swift
//  Next Level Athletes App
//
//  Created by Patrick Cook on 3/6/17.
//  Copyright © 2017 Patrick Cook. All rights reserved.
//

import UIKit

class CreateUserVC: UIViewController {
    //View Labels
    @IBOutlet weak var welcomeLabel: UILabel!
    //Buttons
    @IBOutlet weak var submitButton: UIButton!
    //User Inputs
    @IBOutlet weak var nameUserInput: UITextField!
    @IBOutlet weak var passwordUserInput: UITextField!
    @IBOutlet weak var emailUserInput: UITextField!
    //User Actions
    @IBAction func signInButton(_ sender: UIButton) {
        performSegue(withIdentifier: "beginSignInSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        submitButton.layer.cornerRadius = 0.1 * submitButton.bounds.size.width
        submitButton.clipsToBounds = true
        welcomeLabel.text = "Sign up!"
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
