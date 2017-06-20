//
//  Question009.swift
//  LeetcodeExerciseSwift
//
//  Created by Terry Yang on 2017/5/19.
//  Copyright © 2017年 terryyamg. All rights reserved.
//

import UIKit

class Question009 : QuestionBase{
    
    override init() {
        super.init()
        state = .Done
        number = "009"
        title = "Palindrome Number"
        detail = "Determine whether an integer is a palindrome.\n" +
        "Do this without extra space."
        level = .Easy
    }
    
    /**
     * 先將輸入數字除10取餘數放入set
     * 使用迴圈比對第一個a與最後一個b
     * 然後往內 第一個a+1 最後一個b-1 比對
     * 如果出現不相等數字回傳false
     * 如果兩個數字位置相等 或 前面位置大於後面位置 皆 中斷迴圈
     * 最後都沒出現不相等則回傳true
     */
    
    func isPalindrome(_ x: Int) -> Bool {
        var x = x
        if x < 0 {return false}
        var set = [Int : Int]()
        var location = 0
        while x != 0 {
            let a = x % 10
            set[location] = a
            x /= 10
            location += 1
        }
        
        var i = 0
        var j = set.count - 1
        while i != j {
            if i > j {break}
            if set[i] != set[j] {return false}
            i += 1
            j -= 1
                
        }
        return true
    }
    
    /* Best Answer*/
//    func isPalindrome(_ x: Int) -> Bool {
//        if x < 0 || x != 0 && x % 10 == 0 {
//            return false
//        }
//        var result = 0, n = x
//        while n > result {
//            result = result * 10 + n % 10
//            n /= 10
//        }
//        return n == result || n == result/10
//    }
}
