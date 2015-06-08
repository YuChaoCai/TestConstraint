//
//  ViewController.swift
//  TestChatController
//
//  Created by 臧其龙 on 15/6/8.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var customCell:MyCustomTableViewCell = tableView.dequeueReusableCellWithIdentifier("customCell") as! MyCustomTableViewCell
        
        customCell.mylabel.text = "this is a test"
        customCell.myImageView.image = UIImage(named: "niujiao.jpg")
        
        if indexPath.row == 1{
           // customCell.setImageToProgress()
            customCell.setImageToSuper()
        }
        
        return customCell
    }
}