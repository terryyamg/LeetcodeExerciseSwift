//
//  ViewControllerCell.swift
//  LeetcodeExercise
//
//  Created by USER on 2017/3/2.
//  Copyright © 2017年 terryyamg. All rights reserved.
//

import UIKit

class ViewControllerCell: UITableViewCell {
    
    @IBOutlet weak var ivState: UIImageView!
    
    @IBOutlet weak var labNumber: UILabel!
    
    @IBOutlet weak var labTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
