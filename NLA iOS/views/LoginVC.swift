//
//  LoginVC.swift
//  Next Level Athletes App
//
//  Created by Patrick Cook on 3/6/17.
//  Copyright © 2017 Patrick Cook. All rights reserved.
//

import UIKit

class LoginVC: UIViewController{
    //Only initialize the DataManager if the user choses to login
    lazy var dataManager: DataManager = DataManager()
    
    @IBOutlet weak var usernameInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 0.1 * loginButton.bounds.size.width
        loginButton.clipsToBounds = true
        welcomeLabel.text = "Welcome,"
        
    }
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "beginCreateUserSegue", sender: self)
    }
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        initiateConnection()
    }
    func initiateConnection(){
        dataManager.handShakeInitializer(userId: "pcook", userPassHash: "########", userAuthenticated: false)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func signUpStarted(_ sender: UIButton) {
        
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
