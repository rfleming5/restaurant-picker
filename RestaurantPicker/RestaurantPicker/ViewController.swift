//
//  ViewController.swift
//  RestaurantPicker
//
//  Created by Alan Andrade on 3/18/15.
//  Copyright (c) 2015 Fleming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var result = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var restaurantChoice1: UITextField!
    @IBOutlet weak var restaurantChoice2: UITextField!
    @IBOutlet weak var restaurantChoice3: UITextField!
    
    @IBAction func chooseRestaurant(sender: UIButton) {
        let array = [restaurantChoice1, restaurantChoice2, restaurantChoice3]
        let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
        
        result = array[randomIndex].text
        
        performSegueWithIdentifier("ResultView", sender: self)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let controller = (segue.destinationViewController as? ResultViewController) {
            controller.resultString = result
        }
    }
}