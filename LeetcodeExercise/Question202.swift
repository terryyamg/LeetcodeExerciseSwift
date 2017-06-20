//
//  Question202.swift
//  LeetcodeExercise
//
//  Created by Terry Yang on 2017/5/16.
//  Copyright © 2017年 terryyamg. All rights reserved.
//

import UIKit

class Question202 : QuestionBase{
    
    override init() {
        super.init()
        state = .Done
        number = "202"
        title = "Happy Number"
        detail =
            "Write an algorithm to determine if a number is 'happy'.\n" +
            " A happy number is a number defined by the following process:\n" +
            " Starting with any positive integer,\n" +
            " replace the number by the sum of the squares of its digits,\n" +
            " and repeat the process until the number equals 1 (where it will stay),\n" +
            " or it loops endlessly in a cycle which does not include 1.\n" +
            " Those numbers for which this process ends in 1 are happy numbers.\n" +
            "\n" +
            " Example: 19 is a happy number\n" +
            "\n" +
            " 1^2 + 9^2 = 82\n" +
            " 8^2 + 2^2 = 68\n" +
            " 6^2 + 8^2 = 100\n" +
            " 1^2 + 0^2 + 0^2 = 1"
        //(update)note: add 7 is happy number
        level = .Easy
    }
    
    func isHappy(_ n: Int) -> Bool {
        var n = n
        var sum : Int
        var length : Int
        repeat{
            sum = getNumber(n: n, length: String(n).characters.count)
            length = String(sum).characters.count
            n = sum
        }while (length != 1)
        
        return (sum == 1 || sum == 7)
    }

    
    func getNumber(n: Int, length: Int) -> Int {
        var numberArray = [Int](repeating: 0, count: length)
        var quotient : Int = 0
        var sum : Int = 0
        for i in 0..<length {
            if i == 0 {
                numberArray[i] = n % 10
                quotient = n / 10
            } else {
                numberArray[i] = quotient % 10
                quotient /= 10
            }
            sum += Int(pow(Double(numberArray[i]), 2))
        }
        return sum
    }
    
}
