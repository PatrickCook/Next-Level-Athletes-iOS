//
//  ExerciseModel.swift
//  NLA App v2
//
//  Created by Patrick Cook on 2/8/17.
//  Copyright © 2017 Patrick Cook. All rights reserved.
//

import Foundation

class ExerciseModel {
    var name: String
    var muscleGroup: String
    var info: String
    var sets: Int
    var reps: Int
    
    
    //Default Initializer
    init(name: String, bodyPart muscle: String) {
        self.name = name
        self.muscleGroup = muscle
        self.info = "Default Description"
        self.sets = 4
        self.reps = 10
        
    }
    
    convenience init(name: String, bodyPart muscle: String, sets: Int, reps: Int, info: String) {
        self.init(name: name, bodyPart: muscle)
        self.info = info
        self.sets = sets
        self.reps = reps
    }
}
