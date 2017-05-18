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
        let cell:ViewControllerCell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.cell)!
        let question : QuestionInfo = mQuestion.object(at: (indexPath as NSIndexPath).row) as! QuestionInfo
//        cell.backgroundColor = UIColor(red: 255/255, green: 161/255, blue: 0/255, alpha: 1)
        cell.labNumber.text! = question.number
        cell.labTitle.text! = question.title
//        cell.ivItem.image = UIImage(named: path[(indexPath as NSIndexPath).row])
//        cell.lblItem.text! = item[(indexPath as NSIndexPath).row]
        
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = R.storyboard.main.detailViewController()!
        let question : QuestionInfo = mQuestion.object(at: (indexPath as NSIndexPath).row) as! QuestionInfo
        vc.detail = question.detail
        vc.number = question.number
        self.navigationController!.pushViewController(vc, animated: true)
    }

    

}

