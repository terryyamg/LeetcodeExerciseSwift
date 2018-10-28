//
//  Question006.swift
//  LeetcodeExerciseSwift
//
//  Created by Terry Yang on 2017/5/19.
//  Copyright © 2017年 terryyamg. All rights reserved.
//

import UIKit

class Question006 : QuestionBase{
    
    override init() {
        super.init()
        state = .TimeLimitExceeded
        number = "006"
        title = "ZigZag Conversion"
        detail = "006. The string \"PAYPALISHIRING\" is written in a zigzag pattern on a given number of rows like this: \n" +
            "(you may want to display this pattern in a fixed font for better legibility)\n" +
            "\n" +
            "P   A   H   N\n" +
            "A P L S I I G\n" +
            "Y   I   R\n" +
            "\n" +
            "And then read line by line: \"PAHNAPLSIIGYIR\"\n" +
            "\n" +
            "Write the code that will take a string and make this conversion given a number of rows:\n" +
            "\n" +
            "string convert(string text, int nRows);\n" +
            "\n" +
            "convert(\"PAYPALISHIRING\", 3) should return \"PAHNAPLSIIGYIR\". "
        level = .Medium
    }
    
    /**
     1 0
     2 2
     3 4
     4 6
     5 8
     -------1----------
     PAYPALISHIRING
     -------2----------2*1
     PYAIHRNAPLSIIG        P A Y P A L I S H I R I N G
     0 1 2 3 4 5 6 7 8 9
     PYAIHRN
     APLSIIG
     -------3----------2*2
     PAHNAPLSIIGYIR        P AYP A LIS H IRI N G
     0 123 4 567 8 901 2 3
     P   A   H   N
     A P L S I I G
     Y   I   R
     -------4----------2*3
     PINALSIGYAHRPI       P AYPAL I SHIRI N G
     0 12345 6 78901 2 3
     P     I     N
     A   L S   I G
     Y A   H R
     P     I
     -------5----------2*4
     PHASIYIRPLIGAN       P AYPALIS H IRING
     0 1234567 8 9012345 6
     P     H
     A   S I
     Y  I  R
     P L   I G
     A     N
     找到第一排的字元 2 * (輸入列 - 1)，字元存起來並紀錄位置
     開始向內取得字元 如果最後沒有字元就假設有
     P AYPALIS H IRING** *
     →      ← →     ←
     如果到同一個位置，紀錄一個並中斷while迴圈
     */
    
    /*    Time Limit Exceeded     */
    
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 0 { return "" }
        if numRows == 1 { return s }
        var ans : String = ""
        var location  = [Int]()
        let seq = stride(from: 0, to: s.count+2*(numRows-1), by: 2*(numRows-1))
        for i in seq {
            if i < s.count {
                let index = s.index(s.startIndex, offsetBy: i)
                ans.append(s[index])
                print(ans)
            }
            location.append(i)
        }
        
        var j = 1
        var pre = 0
        while true {
            for i in 0..<location.count {
                if location[i] - j > 0 && location[i] - j < s.count{
                    if location[i] - j == pre {
                        continue
                    }
                    let index = s.index(s.startIndex, offsetBy: location[i] - j)
                    ans.append(s[index])
                }
                if location[i] + j > 0 && location[i] + j < s.count{
                    pre = location[i] + j
                    let index = s.index(s.startIndex, offsetBy: location[i] + j)
                    ans.append(s[index])
                }
            }
            if location[0] + j == numRows - 1 {
                break
            }
            j += 1
        }
        
        return ans
    }
    
}

