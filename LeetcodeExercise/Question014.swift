//
//  Question014.swift
//  LeetcodeExerciseSwift
//
//  Created by Terry Yang on 2017/5/23.
//  Copyright © 2017年 terryyamg. All rights reserved.
//

import UIKit

class Question014 : QuestionBase{
    
    override init() {
        super.init()
        state = .Done
        number = "014"
        title = "Longest Common Prefix"
        detail = "Write a function to find the longest common prefix string amongst an array of strings."
        level = .Easy
    }
    
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count <= 0 { return "" }
        if strs.count == 1 { return strs[0] }
        var ans : String = ""
        var minLength = strs[0].count
        for item in strs {
            if item.count < minLength {
                minLength = item.count
            }
        }
        
        outerLoop: for i in 0..<minLength {
            var save = ""
            for (index,item) in strs.enumerated() {
                let char = item[item.index(item.startIndex, offsetBy: i)]
                if index == 0 {
                    save = String(char)
                }
                if save != String(char) {
                    break outerLoop
                }
                if save == String(char) && index == strs.count-1 {
                    ans.append(char)
                }
            }
            
        }
        return ans
    }
    
    /* Best Answer*/
//    func longestCommonPrefix(_ strs: [String]) -> String {
//        let totalCount = strs.count
//        if totalCount == 0 {
//            return ""
//        }
//        
//        var commonPrefix = strs[0]
//        for i in 1..<strs.count {
//            let comparingStr = strs[i]
//            if comparingStr.characters.count < commonPrefix.characters.count {
//                commonPrefix = commonPrefix[commonPrefix.startIndex..<commonPrefix.index(commonPrefix.startIndex, offsetBy: comparingStr.characters.count)]
//            }
//            
//            if commonPrefix == "" {
//                return commonPrefix
//            }
//            
//            while !comparingStr.hasPrefix(commonPrefix) && commonPrefix != "" {
//                commonPrefix = commonPrefix[commonPrefix.startIndex..<commonPrefix.index(commonPrefix.startIndex, offsetBy: commonPrefix.characters.count - 1)]
//            }
//        }
//        
//        return commonPrefix
//    }
    
}
