//
//  QuestionData.swift
//  LeetcodeExercise
//
//  Created by Terry Yang on 2017/4/3.
//  Copyright © 2017年 terryyamg. All rights reserved.
//

import UIKit

class QuestionData {
    
    var qData = [String]()
    let mQuestion : NSMutableArray = NSMutableArray()
    func buildData() -> NSMutableArray{
        var qInfo : [QuestionBase] = []
        qInfo.append(Question001())
        qInfo.append(Question002())
        qInfo.append(Question202())
        
        for i in 0..<qInfo.count {
            qData = [String]()
            qData.append(qInfo[i].state)
            qData.append(qInfo[i].number)
            qData.append(qInfo[i].title)
            qData.append(qInfo[i].detail)
            mQuestion.add(qData)
        }
        
        return mQuestion;
    }
    
    
}