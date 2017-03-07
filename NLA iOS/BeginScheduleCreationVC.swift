//
//  FirstViewController.swift
//  NLA App v2
//
//  Created by Patrick Cook on 2/8/17.
//  Copyright © 2017 Patrick Cook. All rights reserved.
//

import UIKit

class BeginScheduleCreationVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var tableView: UITableView!
    //Will point to the data source to be used with the picker
    var inputFieldNames: [String] = [String]()
    
    var currentPickerData: [[String]] = [[String]]()
    var weekPickerData: [String] = [String]()
    var muscleGroupPickerData: [String] = [String]()
    var workoutLengthPickerData: [String] = [String]()
    var intensityPickerData: [String] = [String]()
    
    var currentOptionIndex = 0 //Used to track which choice user is filling. Used to populate correct data for picker
    override func viewDidLoad() {
        super.viewDidLoad()
        inputFieldNames = ["Day of the Week", "Muscle Group", "Workout Length", "Intensity"]
        
        weekPickerData = ["Monday", "Tuesday", "Wednesday", "Thursday","Friday", "Saturday", "Sunday"]
        muscleGroupPickerData = ["Abs", "Back", "Biceps", "Chest", "Cardio", "Legs", "Shoulders", "Triceps"]
        workoutLengthPickerData = ["30 Minutes", "45 Minutes", "1 Hour", "1.5 Hours", "2 Hours"]
        intensityPickerData = ["Beginner", "Intermediate", "Advanced"]

        //Set initial data set for picker on load
        currentPickerData = [weekPickerData, muscleGroupPickerData, workoutLengthPickerData, intensityPickerData]
        //Set the picker view to invisible initially
        pickerView.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: Picker View Delegate and Data Source methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currentPickerData[currentOptionIndex].count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currentPickerData[currentOptionIndex][row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let choice: String = currentPickerData[currentOptionIndex][row]
        
        let indexPath = tableView.indexPathForSelectedRow
        let currentCell = tableView.cellForRow(at: indexPath!) as! ScheduleCreatorCell
        
        currentCell.cellUserSelection.text = choice
        currentCell.cellUserSelection.textColor = UIColor.black
        
    }
    
    //MARK: Table View Delegate and Data Source Methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(inputFieldNames.count)
        return inputFieldNames.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scheduleCreatorCell", for: indexPath) as? ScheduleCreatorCell
        
        cell?.cellTitle.text = inputFieldNames[indexPath.row]
        cell?.cellUserSelection.textColor = UIColor.black
        
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        currentOptionIndex = indexPath.row
        
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(0.6)
        pickerView.alpha = 1
        UIView.commitAnimations()
        pickerView.selectRow(0, inComponent: 0, animated: true)
        pickerView.reloadAllComponents()
    }
    
    //MARK: Button actions
    @IBAction func createSchedulePressed(_ sender: UIButton) {
        //performSegue(withIdentifier: "transitionToEditSchedule", sender: self)
    }
    
}

