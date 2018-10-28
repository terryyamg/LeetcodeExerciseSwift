//
//  ViewController.swift
//  LeetcodeExercise
//
//  Created by USER on 2017/3/2.
//  Copyright © 2017年 terryyamg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    @IBOutlet weak var tabQuestionData: UITableView!
    
    var mQuestion : NSMutableArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mQuestion = NSMutableArray()
        mQuestion = ViewModel.getInstance().getQuestionInfo()
        tabQuestionData.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mQuestion.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.cell, for: indexPath) {
            let question : QuestionInfo = mQuestion.object(at: (indexPath as NSIndexPath).row) as! QuestionInfo
            switch question.level {
            case Level.Easy.rawValue:
                cell.backgroundColor = UIColor(red: 185/255, green: 249/255, blue: 240/255, alpha: 1)
            case Level.Medium.rawValue:
                cell.backgroundColor = UIColor(red: 132/255, green: 192/255, blue: 246/255, alpha: 1)
            case Level.Hard.rawValue:
                cell.backgroundColor = UIColor(red: 227/255, green: 179/255, blue: 255/255, alpha: 1)
            default:
                break
            }
            //        cell.backgroundColor = UIColor(red: 255/255, green: 161/255, blue: 0/255, alpha: 1)
            cell.labNumber.text! = question.number
            cell.labTitle.text! = question.title
            if question.state == State.Done.rawValue {
                cell.ivState.image = R.image.check()
            } else {
                cell.ivState.image = R.image.question()
            }
            
            cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = R.storyboard.main.detailViewController()!
        let question : QuestionInfo = mQuestion.object(at: (indexPath as NSIndexPath).row) as! QuestionInfo
        vc.detail = question.detail
        vc.number = question.number
        self.navigationController!.pushViewController(vc, animated: true)
    }

    

}

