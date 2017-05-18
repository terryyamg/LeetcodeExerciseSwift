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
        case "001":
            let number = 13
            let array : [Int] = [2, 7, 11, 15]
            let q001 : Question001 = Question001()
            let ans : [Int] = q001.twoSum(array, number)
            print("The Array is \(array)")
            print("\(number) = Location \(ans)")
        case "202":
            let number = 1111111
            let q202 : Question202 = Question202()
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
