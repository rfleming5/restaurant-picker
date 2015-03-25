//
//  ResultViewController.swift
//  RestaurantPicker
//
//  Created by Alan Andrade on 3/25/15.
//  Copyright (c) 2015 Fleming. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var resultString: String?

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = resultString!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}