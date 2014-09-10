//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Alexander Kustov on 10/09/14.
//  Copyright (c) 2014 inspiring. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var menShoeSizeTextField: UITextField
    @IBOutlet var convertedLabel: UILabel
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertWomenPressed(sender: UIButton) {
        
        
        
        
        let shoeNumber = Double((menShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        
        
        convertedLabel.hidden = false
        
        convertedLabel.text = "\(shoeNumber + conversionConstant)" + " in European shoe size"
        
    }
    @IBAction func convertButtonPressed(sender: UIButton) {
        let shoeNumber = menShoeSizeTextField.text.toInt()!
        
        convertedLabel.hidden = false
        
        convertedLabel.text = "\(shoeNumber + 30)" + " in European shoe size"
        
    }

}

