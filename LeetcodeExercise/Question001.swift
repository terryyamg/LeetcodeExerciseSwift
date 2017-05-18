//
//  Question001To050.swift
//  LeetcodeExercise
//
//  Created by Terry Yang on 2017/4/3.
//  Copyright © 2017年 terryyamg. All rights reserved.
//

import UIKit

class Question001 : QuestionBase{
    
    override init() {
        super.init()
        state = "0"
        number = "001"
        title = "TwoSum"
        detail = "Given an array of integers, return indices of the two numbers such that they add up to a specific target.You may assume that each input would have exactly one solution. Example:Given nums = [2, 7, 11, 15], target = 9, Because nums[0] + nums[1] = 2 + 7 = 9, return [0, 1]. UPDATE (2016/2/13):The return format had been changed to zero-based indices. Please read the above updated description carefully.Subscribe to see which companies asked this question"
    }
    
    func twoSum(_ nums: [Int], _ target: Int ) -> [Int] {
        var ans = [Int]()
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if i != j {
                    if nums[i]+nums[j] == target {
                        ans.append(i)
                        ans.append(j)
                        return ans
                    }
                }
            }
        }
        return ans
    }
}
