//
//  ViewController.swift
//  SACalc
//
//  Created by Александр on 21.08.15.
//  Copyright (c) 2015 Satori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var dotPresent = false
    var operationPending = false
    var calc = SACalc()

    @IBOutlet weak var calcField: UITextField!
    
    @IBAction func digitAction(sender: UIButton) {
        switch(sender.currentTitle!){
        case "C":
            calcField.text = "0"
            dotPresent = false
        case "±":
            calcField.text = (-(calcField.text as NSString).doubleValue).description
        case ".":
            if(!dotPresent){
                calcField.text = calcField.text + "."
                dotPresent = true
            }
        default:
            if(calcField.text == "0"){
                calcField.text = ""
            }
            calcField.text = calcField.text + sender.currentTitle!
        }
    }
    
    @IBAction func operationAction(sender: UIButton) {
        operationPending = true
        calc.operation = sender.currentTitle!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

