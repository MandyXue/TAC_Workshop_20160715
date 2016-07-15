//
//  ViewController.swift
//  Demo
//
//  Created by MandyXue on 16/7/15.
//  Copyright © 2016年 AppleClub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBAction func change(sender: UIButton) {
//        sender.tintColor = UIColor.redColor()
//        label.text = "After"
        label.text = textField.text
    }
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

