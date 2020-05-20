//
//  ViewController.swift
//  Assignment_2_Block_1
//
//  Created by Viktor Riga on 07.05.2020.
//  Copyright © 2020 Viktor Riga. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
// Task 0. Display the largest of the two numbers. Lable
    @IBOutlet weak var theLargestNumberLabel: UILabel!
// --------


// Task 1. Display the square and cube of the number. Lable
    @IBOutlet weak var dispSquareAndCubeNumberLable: UILabel!
// --------
    
// Task 2. Display on the screen all the numbers to the given and in reverse order to 0. Lable
    @IBOutlet weak var reverseLable: UILabel!
// --------
    
// Task 3. Calculate the total number of divisors of a number and print them. Lable
    @IBOutlet weak var numbersOfDivesorsLable: UILabel!
//--------
    
//Task 4. Check whether the given number is perfect and find them (divisors). Lable
    @IBOutlet weak var perfectNumberLable: UILabel!
//-------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        
//Task 0. Display the largest of the two numbers. Call
        
        theLargestNumber (numberOne: 2, numberTwo: 3)
        
// --------
        
//Task 1. Display the square and cube of the number. Call
        
        dispSquareAndCubeNumber (number: 3, factor: 0)
        
// ----
        
// Task 2. Display on the screen all the numbers to the given and in reverse order to 0. Call
        
        reverseOrder (number: 5)
        
// ----
        
// Task 3. Calculate the total number of divisors of a number and print them. Call
        
        numbersOfDivesors (number: 10)
// ----
        
//Task 4. Check whether the given number is perfect and find them (divisors). Call
        perfectNumber (number: 8128)
//---

    }

//Task 0. Display the largest of the two numbers. Func
    
    func theLargestNumber (numberOne: Int, numberTwo: Int) {
        if numberOne > numberTwo {
            theLargestNumberLabel.text = "\(numberOne) > \(numberTwo)"
        }
        else if numberOne < numberTwo {
            theLargestNumberLabel.text = "\(numberOne) < \(numberTwo)"
        }
        else {
            theLargestNumberLabel.text = "\(numberOne) = \(numberTwo)"
        }
        
    }
    
// --------

//Task 1. Display the square and cube of the number. Func
    
    func dispSquareAndCubeNumber (number : Int, factor : Int) {
        var numb = 1
        if factor == 0 {
            numb = 1
            dispSquareAndCubeNumberLable.text = "Число \(number) в степени \(factor) =  \(numb)"
        } else {
            for _ in 1...factor {
                numb *= number
            }
            dispSquareAndCubeNumberLable.text = "Число \(number) в степени \(factor) =  \(numb)"
        }
    }

// --------
    
// Task 2. Display on the screen all the numbers to the given and in reverse order to 0. Func
    
    func reverseOrder (number : Int) {
        reverseLable.text = ""
        for i in 0...(number*2) {
            if (number-i)==0 {
                reverseLable.text! += "Спадание "
            } else {
                reverseLable.text! += "\(abs(number-i)) "
            }
        }
    }
    
// --------
    
// Task 3. Calculate the total number of divisors of a number and print them. Func
    
    func numbersOfDivesors (number: Int) {
        var count = 0
        for i in 1...number {
            if number % i == 0 {
                count += 1
            }
        }
        numbersOfDivesorsLable.text = "\(count)"
    }
    
// -------

//Task 4. Check whether the given number is perfect and find them (divisors). Func
        
    func perfectNumber (number: Int) {
        var amount = 0
        for i in 1...number {
            if number % i == 0 {
                amount += i
            }
        }
        if number == amount {
            perfectNumberLable.text = "\(number) is perfect number!"
        }
        else {
            perfectNumberLable.text = "\(number) is`t perfect number!"
        }
        
    }
//---
    
}

