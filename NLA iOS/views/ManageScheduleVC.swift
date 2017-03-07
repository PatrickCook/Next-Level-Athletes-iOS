//
//  EditScheduleVC.swift
//  NLA App v2
//
//  Created by Patrick Cook on 2/12/17.
//  Copyright © 2017 Patrick Cook. All rights reserved.
//

import UIKit

class ManageScheduleVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var dailyExerciseSchedule: [ExerciseModel] = [ExerciseModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dailyExerciseSchedule.append(ExerciseModel(name: "Bench Press", bodyPart: "chest"))
        dailyExerciseSchedule.append(ExerciseModel(name: "Pushup", bodyPart: "chest"))
        dailyExerciseSchedule.append(ExerciseModel(name: "Dumbbell Curl", bodyPart: "biceps"))
        dailyExerciseSchedule.append(ExerciseModel(name: "Pullup", bodyPart: "biceps"))
        dailyExerciseSchedule.append(ExerciseModel(name: "Banded Fly", bodyPart: "chest"))
        dailyExerciseSchedule.append(ExerciseModel(name: "Barbell Curl", bodyPart: "biceps"))
        dailyExerciseSchedule.append(ExerciseModel(name: "Shoulder Press", bodyPart: "shoulders"))
        dailyExerciseSchedule.append(ExerciseModel(name: "Squat", bodyPart: "legs"))
        dailyExerciseSchedule.append(ExerciseModel(name: "Deadlift", bodyPart: "legs"))
        dailyExerciseSchedule.append(ExerciseModel(name: "Tricep Extension", bodyPart: "triceps"))
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(self.segueToExerciseSearch(sender:)))
        let editButton = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(self.toggleEditing(sender:)))
        self.navigationItem.rightBarButtonItem = addButton
        self.navigationItem.leftBarButtonItem = editButton
        // Do any additional setup after loading the view.
    }
    func toggleEditing(sender: UIBarButtonItem) {
        
        
        self.tableView.isEditing = !self.tableView.isEditing
 
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Mark


    // MARK: - Navigation
    //When user presses the "+" or add button a segue takes them to a new view to search for an exercise
    func segueToExerciseSearch(sender: Any) {
        performSegue(withIdentifier: "transitionToSearch", sender: self)
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
    //MARK: UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dailyExerciseSchedule.count
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to toIndexPath: IndexPath) {
        let itemToMove = dailyExerciseSchedule[fromIndexPath.row]
        dailyExerciseSchedule.remove(at: fromIndexPath.row)
        dailyExerciseSchedule.insert(itemToMove, at: toIndexPath.row)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "updateExerciseCell", for: indexPath) as! UpdateExerciseCell
        cell.nameLabel.text = dailyExerciseSchedule[indexPath.row].name
        cell.repsInput.text = "4"
        cell.setsInput.text = "8"
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            dailyExerciseSchedule.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }


}
