//
//  ViewController.swift
//  Calculator
//
//  Created by Thompson, Justin D on 9/19/19.
//  Copyright © 2019 Thompson, Justin D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var num1 = 0.0
    private var num2 = 0.0
    private var numOn = 0
    private var stepOn = 0
    private var completedCalculation = false
    private var currentOperator = ""
    private var decimal = 0.0
    @IBOutlet var display: UILabel!
    private var text0 = ""
    private var text1 = ""
    private var text2 = ""
    private var displayText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
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

    @IBAction func decimalPoint(_ sender: Any) {
        decimal = 10
    }

    @IBAction func addition(_ sender: Any) {changeOperator("+")}
    
    @IBAction func subtraction(_ sender: Any) {changeOperator("-")}
    
    @IBAction func multiplication(_ sender: Any) {changeOperator("x")}
    
    @IBAction func division(_ sender: Any) {changeOperator("÷")}
    
    func changeOperator(_ op: String){
        currentOperator = op
        stepOn = 1
        numOn = 1
        decimal = 0.0
        completedCalculation = false
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
        decimal = 0.0
        completedCalculation = true;
        num2 = 0.0
        stepOn = 0
        numOn = 0
        updateDisplay()
    }
    
    @IBAction func clear(_ sender: Any) {
        num1 = 0
        num2 = 0
        stepOn = 0
        numOn = 0
        decimal = 0.0
        updateDisplay()
    }

    @IBAction func buttonNum1(_ sender: Any) {buttonAction(1.0)}
    
    @IBAction func buttonNum2(_ sender: Any) {buttonAction(2.0)}
    
    @IBAction func buttonNum3(_ sender: Any) {buttonAction(3.0)}
    
    @IBAction func buttonNum4(_ sender: Any) {buttonAction(4.0)}
    
    @IBAction func buttonNum5(_ sender: Any) {buttonAction(5.0)}
    
    @IBAction func buttonNum6(_ sender: Any) {buttonAction(6.0)}
    
    @IBAction func buttonNum7(_ sender: Any) {buttonAction(7.0)}
    
    @IBAction func buttonNum8(_ sender: Any) {buttonAction(8.0)}
    
    @IBAction func buttonNum9(_ sender: Any) {buttonAction(9.0)}
    
    @IBAction func buttonNum0(_ sender: Any) {buttonAction(0.0)}
    
    func buttonAction(_ n: Double){
        if completedCalculation{
            num1 = n
            completedCalculation = false
        }
        else{
            if(decimal >= 1){
                if numOn == 0 {
                    num1 = num1 + n / decimal
                    decimal = decimal * 10
                }
                if numOn == 1 {
                    num2 = num2 + n / decimal
                    decimal = decimal * 10
                }
            }
            else {
                if numOn == 0 {
                    num1 = (num1 * 10) + n
                }
                if numOn == 1 {
                    num2 = (num2 * 10) + n
                }
            }
        }
        
        updateDisplay()
    }
}
