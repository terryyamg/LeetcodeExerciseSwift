//
//  ViewModel.swift
//  LeetcodeExercise
//
//  Created by USER on 2017/3/2.
//  Copyright © 2017年 terryyamg. All rights reserved.
//

import UIKit

class ViewModel : NSObject {
    
    class func getInstance() -> ViewModel{
        
        return ViewModel()
    }
    
    func getQuestionInfo() -> NSMutableArray {
        let mQuestion : NSMutableArray = NSMutableArray()
        
        let qData : QuestionData = QuestionData()
        let mData : NSMutableArray = qData.buildData()
        for i in 0..<mData.count {
            let desc : [String] = mData.object(at: i) as! [String]
            let questionInfo : QuestionInfo = QuestionInfo()
            questionInfo.state = desc[0]
            questionInfo.number = desc[1]
            questionInfo.title = desc[2]
            questionInfo.detail = desc[3]
            
            mQuestion.add(questionInfo)
        }
        
        return mQuestion
    }
    
}
