//
//  MyCustomTableViewCell.swift
//  TestChatController
//
//  Created by 臧其龙 on 15/6/8.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {

  
    @IBOutlet weak var imageToLabel: NSLayoutConstraint!
    @IBOutlet weak var imageToSuperVertical: NSLayoutConstraint!
    @IBOutlet weak var imageToProgressVertical: NSLayoutConstraint!
  
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var mButton: UIButton!
    @IBOutlet weak var progressView: UIView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setImageToProgress(){
        mylabel.hidden = true
        
        imageToLabel.priority =  750
        imageToSuperVertical.priority = 750
        if imageToProgressVertical.priority != 999
        {
            imageToProgressVertical.priority = 999
        }
        
        
    }
    
    func setImageToSuper(){
        mylabel.hidden = true
        progressView.hidden = true
        
        imageToLabel.priority =  750
        imageToProgressVertical.priority = 750
        if imageToSuperVertical.priority != 999
        {
            imageToSuperVertical.priority = 999
        }

    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
