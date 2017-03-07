//
//  SecondViewController.swift
//  NLA App v2
//
//  Created by Patrick Cook on 2/8/17.
//  Copyright © 2017 Patrick Cook. All rights reserved.
//

import UIKit

class ViewDailyScheduleVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var dailyExerciseSchedule: [ExerciseModel] = []
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        //Populate array
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dailyExerciseSchedule.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let exerciseCell = tableView.dequeueReusableCell(withIdentifier: "DailyExerciseCell", for: indexPath) as? DailyExerciseCell
        
        exerciseCell?.dailyExerciseTitle.text = dailyExerciseSchedule[indexPath.row].name
        exerciseCell?.dailyExerciseSets.text = String(dailyExerciseSchedule[indexPath.row].sets)
        exerciseCell?.dailyExerciseReps.text = String(dailyExerciseSchedule[indexPath.row].reps)
        exerciseCell?.dailyExerciseMuscleGroup.text = dailyExerciseSchedule[indexPath.row].muscleGroup
        
        return exerciseCell!
    }
    //MARK: UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    //MARK: Segue Handling
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewExerciseSegue" {
            /* KEEP FOR WHEN DATABASE PULLS INFO
            let image = UIImage(named: "exercisePicturePlaceholder")
            let exerciseVC = segue.destination as? ViewExerciseVC
            if let img = image {
                exerciseVC?.leftImageView.image = img
                exerciseVC?.rightImageView.image = img
            } else {
                print("Error: Exercise Image is nil.")
            }
            */
        }
    }
    @IBAction func unwindFromViewExerciseVC(segue: UIStoryboardSegue) {
        
    }
}

