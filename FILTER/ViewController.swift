//
//  ViewController.swift
//  FILTER
//
//  Created by apple on 2018/12/24.
//  Copyright © 2018年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func actionto(_ sender: Any) {
        self.present(FilterViewControllerOne(), animated: true) {
            
        }
    }
    
}

