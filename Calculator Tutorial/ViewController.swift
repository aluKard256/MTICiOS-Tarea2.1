//
//  ViewController.swift
//  Calculator Tutorial
//
//  Created by Raul Ernesto Escobedo Herrera on 6/5/15.
//  Copyright (c) 2015 Raul Ernesto Escobedo Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Screen: UILabel!
    var firstNumber = Int()
    var secondNumber = Int()
    var isTypingNumber = false
    var result = Int()
    var operation = ""
    
    @IBAction func number(sender: AnyObject) {
        var number = sender.currentTitle
        if isTypingNumber == true {
            Screen.text = Screen.text! + number!!
        } else {
            Screen.text = number;
        }
        isTypingNumber = true
    }
    
    @IBAction func operation(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = Screen.text!.toInt()!
        operation = sender.currentTitle!!
    }
    
    @IBAction func equals(sender: AnyObject) {
        secondNumber = Screen.text!.toInt()!
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        } else if operation == "x" {
            result = firstNumber * secondNumber
        } else {
            result = firstNumber / secondNumber
        }
        Screen.text = "\(result)"
    }
    
    @IBAction func clear(sender: AnyObject) {
        firstNumber = 0
        secondNumber = 0
        isTypingNumber = false
        result = 0
        Screen.text = "\(result)"
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

