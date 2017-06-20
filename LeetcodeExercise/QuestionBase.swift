//
//  QuestionBase.swift
//  LeetcodeExercise
//
//  Created by Terry Yang on 2017/5/16.
//  Copyright © 2017年 terryyamg. All rights reserved.
//

import UIKit

enum Level : String {
    case Easy = "Easy"
    case Medium = "Medium"
    case Hard = "Hard"
}

enum State : String {
    case ToDo = "0"
    case Done = "1"
    case Fail = "2"
    case TimeLimitExceeded = "3"
}

class QuestionBase {
    
    var state : State
    var number : String
    var title : String
    var detail : String
    var level : Level
    
    init() {
        state = State.ToDo
        number = ""
        title = ""
        detail = ""
        level = Level.Easy
    }
    
}
