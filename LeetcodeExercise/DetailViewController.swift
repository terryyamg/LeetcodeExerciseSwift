//
//  DetailViewController.swift
//  LeetcodeExercise
//
//  Created by USER on 2017/3/2.
//  Copyright © 2017年 terryyamg. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var labDetail: UILabel!
    var detail : String!
    var number : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labDetail.text! = detail

        switch number {
        case "001": // TwoSum
            let number = 13
            let array : [Int] = [2, 7, 11, 15]
            let q001 = Question001()
            let ans : [Int] = q001.twoSum(array, number)
            print("The Array is \(array)")
            print("\(number) = Location \(ans)")
        case "006": // ZigZag Conversion
            let strings = "PAYPALISHIRING"
            let row = 3
            let q006 = Question006()
            let ans : String = q006.convert(strings, row)
            print("\(strings) ZigZag Conversion :")
            print("\(ans)")
        case "007": // Reverse Integer
            let number = 123
            let q007 = Question007()
            let ans = q007.reverse(number)
            print("\(number)'s Reverse is \(ans)")
        case "009": // Palindrome Number
            let number = 12321
            let q009 = Question009()
            let ans : Bool = q009.isPalindrome(number)
            print("\(number) is palindrome number?")
            print("Ans: \(ans)")
        case "014": // Longest Common Prefix
            let strings : [String] = ["qww","qw","qwooo"]
            let q014 = Question014()
            let ans = q014.longestCommonPrefix(strings)
            print("\(strings) Prefix")
            print("Ans: \(ans)")
        case "202": // Happy Number
            let number = 1111111
            let q202 = Question202()
            let ans : Bool = q202.isHappy(number)
            print("\(number) is Happy Number?")
            print("Ans: \(ans)")
            break
        default:
            break
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
}
