//
//  SACalc.swift
//  SACalc
//
//  Created by Александр on 21.08.15.
//  Copyright (c) 2015 Satori. All rights reserved.
//

import UIKit

class SACalc: NSObject {
    var number1: Double?
    var number2: Double?
    var operation: String?
    
    func equals() -> Double?{
        var result:Double?
        if (number1 == nil || number2 == nil){
            return nil
        }
        switch(operation!){
        case "+":
            result = number1! + number2!
        case "-":
            result = number1! - number2!
        case "×":
            result = number1! * number2!
        case "÷":
            result = number1! / number2!
        case "%":
            return 0
        default:
            return 0
        }
        return result!
    }
    
}
