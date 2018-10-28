//
//  Question007.swift
//  LeetcodeExerciseSwift
//
//  Created by Terry Yang on 2017/5/18.
//  Copyright © 2017年 terryyamg. All rights reserved.
//

import UIKit

class Question007 : QuestionBase{
    
    override init() {
        super.init()
        state = .Done
        number = "007"
        title = "Reverse Integer"
        detail =
            "Reverse digits of an integer. \n" +
            
            "Example1: x = 123, return 321 \n" +
            "Example2: x = -123, return -321 \n" +
            
            "click to show spoilers. \n" +
            
            "Have you thought about this? \n" +
            "Here are some good questions to ask before coding. Bonus points for you if you have already thought through this! \n" +
            "If the integer's last digit is 0, what should the output be? ie, cases such as 10, 100. \n" +
            "Did you notice that the reversed integer might overflow? \n" +
            " Assume the input is a 32-bit integer, then the reverse of 1000000003 overflows. \n" +
            " How should you handle such cases? \n" +
            "For the purpose of this problem, \n" +
            " assume that your function returns 0 when the reversed integer overflows. \n" +
            
            "Note: \n" +
            "The input is assumed to be a 32-bit signed integer. Your function should return 0 when the reversed integer overflows. "
        level = .Easy
    }
    
    func reverse(_ x: Int) -> Int {
        var x = x
        var ans : Double = 0.0
        var length : Int
        length = x >= 0 ? String(x).count : String(-x).count
        
        for i in (0...length).reversed() {
            let s = x % 10
            x /= 10
            ans = ans + Double(s) * Double(Int(pow(10, Double(i - 1))))
        
        }
        return ans >= Double(Int32.min) && ans <= Double(Int32.max) ? Int(ans) : 0
    }
    
    /* Best Answer*/
//    func reverse(_ x: Int) -> Int {
//        if x>=1<<31 || -x>=1<<31 {
//            return 0
//        }
//        var ori = x, new = 0
//        while ori != 0 {
//            new = new*10 + ori%10
//            ori /= 10
//        }
//        if new>=1<<31 || -new>=1<<31 {
//            return 0
//        } else {
//            return new
//        }
//    }
    
}
