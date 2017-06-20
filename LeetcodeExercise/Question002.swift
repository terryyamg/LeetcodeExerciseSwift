//
//  Question002.swift
//  LeetcodeExercise
//
//  Created by Terry Yang on 2017/5/16.
//  Copyright © 2017年 terryyamg. All rights reserved.
//

import UIKit

class Question002 : QuestionBase{
    
    override init() {
        super.init()
        state = .ToDo
        number = "002"
        title = "Add Two Numbers"
        detail = "You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list."+"You may assume the two numbers do not contain any leading zero, except the number 0 itself. \nInput: (2 -> 4 -> 3) + (5 -> 6 -> 4)"+"Output: 7 -> 0 -> 8"
        level = .Easy
    }
    
    
}
