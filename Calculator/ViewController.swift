//
//  ViewController.swift
//  Calculator
//
//  Created by Thompson, Justin D on 9/19/19.
//  Copyright © 2019 Thompson, Justin D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var num1 = 0
    private var num2 = 0
    private var numOn = 0;
    private var stepOn = 0;
    private var currentOperator = "";
    @IBOutlet var display: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDisplay()
    }
    
    func updateDisplay(){
        if (stepOn == 0){
            display.text = "\(num1)"
        }
        if (stepOn == 1){
            display.text = "\(num1) \(currentOperator)"
            stepOn = 2;
        }
        if (stepOn == 2){
            display.text = "\(num1) \(currentOperator) \(num2)"
        }
    }
    
    @IBAction func addition(_ sender: Any) {
        stepOn = 1
        currentOperator = "+"
        numOn = 1
        updateDisplay()
    }
    
    @IBAction func subtraction(_ sender: Any) {
        stepOn = 1
        currentOperator = "-"
        numOn = 1
        updateDisplay()
    }
    
    @IBAction func multiplication(_ sender: Any) {
        stepOn = 1
        currentOperator = "x"
        numOn = 1
        updateDisplay()
    }
    
    @IBAction func division(_ sender: Any) {
        stepOn = 1
        currentOperator = "÷"
        numOn = 1
        updateDisplay()
    }
    
    
    
    @IBAction func finishCalculation(_ sender: Any) {
        if(currentOperator == "+"){
            num1 = num1 + num2
        }
        if(currentOperator == "-"){
            num1 = num1 - num2
        }
        if(currentOperator == "x"){
            num1 = num1 * num2
        }
        if(currentOperator == "÷"){
            num1 = num1 / num2
        }
        
        num2 = 0
        stepOn = 0
        numOn = 0
        updateDisplay()
        
    }
    
    @IBAction func clear(_ sender: Any) {
        num1 = 0
        num2 = 0
        stepOn = 0
        numOn = 0
        updateDisplay()
    }
    
    
    
    
    
    
    
    
    
    @IBAction func buttonNum1(_ sender: Any) {
        if numOn == 0 {
            num1 = (num1 * 10) + 1
        }
        if numOn == 1 {
            num2 = (num2 * 10) + 1
        }
        updateDisplay()
    }
    
    @IBAction func buttonNum2(_ sender: Any) {
        if numOn == 0 {
            num1 = (num1 * 10) + 2
        }
        if numOn == 1 {
            num2 = (num2 * 10) + 2
        }
        updateDisplay()
    }
    
    @IBAction func buttonNum3(_ sender: Any) {
        if numOn == 0 {
            num1 = (num1 * 10) + 3
        }
        if numOn == 1 {
            num2 = (num2 * 10) + 3
        }
        updateDisplay()
    }
    
    @IBAction func buttonNum4(_ sender: Any) {
        if numOn == 0 {
            num1 = (num1 * 10) + 4
        }
        if numOn == 1 {
            num2 = (num2 * 10) + 4
        }
        updateDisplay()
    }
    
    @IBAction func buttonNum5(_ sender: Any) {
        if numOn == 0 {
            num1 = (num1 * 10) + 5
        }
        if numOn == 1 {
            num2 = (num2 * 10) + 5
        }
        updateDisplay()
        
    }
    
    @IBAction func buttonNum6(_ sender: Any) {
        if numOn == 0 {
            num1 = (num1 * 10) + 6
        }
        if numOn == 1 {
            num2 = (num2 * 10) + 6
        }
        updateDisplay()
    }
    
    @IBAction func buttonNum7(_ sender: Any) {
        if numOn == 0 {
            num1 = (num1 * 10) + 7
        }
        if numOn == 1 {
            num2 = (num2 * 10) + 7
        }
        updateDisplay()
    }
    
    @IBAction func buttonNum8(_ sender: Any) {
        if numOn == 0 {
            num1 = (num1 * 10) + 8
        }
        if numOn == 1 {
            num2 = (num2 * 10) + 8
        }
        updateDisplay()
    }
    
    @IBAction func buttonNum9(_ sender: Any) {
        if numOn == 0 {
            num1 = (num1 * 10) + 9
        }
        if numOn == 1 {
            num2 = (num2 * 10) + 9
        }
        updateDisplay()
    }
    
    @IBAction func buttonNum0(_ sender: Any) {
        if numOn == 0 {
            num1 = (num1 * 10) + 0
        }
        if numOn == 1 {
            num2 = (num2 * 10) + 0
        }
        updateDisplay()
    }
    
}

