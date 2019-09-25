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
        
        
//        if (stepOn == 0){
//            if(num1.truncatingRemainder(dividingBy: 1) == 0){
//                text0 = "\(Int(num1))"
//            }
//            else{
//                text0 = "\(num1)"
//            }
//            displayText = text0
//        }
//        if (stepOn == 1){
//            text1 = text0 + " \(currentOperator)"
//            stepOn = 2;
//            displayText = text1
//        }
//        else if (stepOn == 2){
//            text2 = text1 + " \(num2)"
//            displayText = text2
//        }
//        display.text = displayText
    }
    
    
    
    
    @IBAction func decimalPoint(_ sender: Any) {
        decimal = 10
    }
    
    
    
    @IBAction func addition(_ sender: Any) {
        stepOn = 1
        currentOperator = "+"
        numOn = 1
        decimal = 0.0
        completedCalculation = false
        updateDisplay()
    }
    
    @IBAction func subtraction(_ sender: Any) {
        stepOn = 1
        currentOperator = "-"
        numOn = 1
        decimal = 0.0
        completedCalculation = false
        updateDisplay()
    }
    
    @IBAction func multiplication(_ sender: Any) {
        stepOn = 1
        currentOperator = "x"
        numOn = 1
        decimal = 0.0
        completedCalculation = false
        updateDisplay()
    }
    
    @IBAction func division(_ sender: Any) {
        stepOn = 1
        currentOperator = "÷"
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
    
    
    
    
    
    
    
    
    
    @IBAction func buttonNum1(_ sender: Any) {
        let n = 1.0
        
        
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
    
    @IBAction func buttonNum2(_ sender: Any) {
        let n = 2.0
        
        
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
    
    @IBAction func buttonNum3(_ sender: Any) {
        let n = 3.0
        
        
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
    
    @IBAction func buttonNum4(_ sender: Any) {
        let n = 4.0
        
        
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
    
    @IBAction func buttonNum5(_ sender: Any) {
        let n = 5.0
        
        
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
    
    @IBAction func buttonNum6(_ sender: Any) {
        let n = 6.0
        
        
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
    
    @IBAction func buttonNum7(_ sender: Any) {
        let n = 7.0
        
        
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
    
    @IBAction func buttonNum8(_ sender: Any) {
        let n = 8.0
        
        
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
    
    @IBAction func buttonNum9(_ sender: Any) {
        let n = 9.0
        
        
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
    
    @IBAction func buttonNum0(_ sender: Any) {
        let n = 0.0
        
        
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

