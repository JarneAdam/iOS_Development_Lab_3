//
//  CalcEngine.swift
//  Lab_3
//
//  Created by Jarne Adam on 08/10/2025.
//

import Foundation

@Observable
class CalcEngine {
    private var stack = [Double]()
    private var numberText = ""
    var result = ""
    
    func addNumberText(number: Int) {
        result.removeFirst(numberText.count)
        numberText = "\(numberText)\(number)"
        result = "\(numberText)\(result)"
    }
    
    func addNumber() {
        let number = Double(numberText)
        if let n = number {
            stack.append(n)
            result = "\n\(result)"
        }
        numberText = ""
    }
    
    func addOperatorPressed() {
        addNumber()
        result = "\n+\(result)"
        if checkNumberOfOperands() {
            let sum = stack.popLast()! + stack.popLast()!
            addCalculationResult(calculationResult: sum)
        }
    }
    
    func minusOperatorPressed() {
        addNumber()
        result = "\n-\(result)"
        if checkNumberOfOperands() {
            let diff = stack.popLast()! - stack.popLast()!
            addCalculationResult(calculationResult: diff)
        }
    }
    
    func multiplierOperatorPressed() {
        addNumber()
        result = "\n*\(result)"
        if checkNumberOfOperands() {
            let mult = stack.popLast()! * stack.popLast()!
            addCalculationResult(calculationResult: mult)
        }
    }
    func dividerOperatorPressed() {
        addNumber()
        result = "\n/\(result)"
        if checkNumberOfOperands() {
            let div = stack.popLast()! / stack.popLast()!
            addCalculationResult(calculationResult: div)
        }
    }

    func clear() {
        numberText = ""
        result = ""
        stack = [Double]()
    }
    
    func showStack() {
        addNumber()
        result = "\n\( stack.description)\(result)"
    }
    
    private func addCalculationResult(calculationResult: Double) {
        result = "\n\(calculationResult)\(result)"
        stack.append(calculationResult)
    }
    
    private func checkNumberOfOperands() -> Bool {
        if stack.count < 2 {
            result = "\nNot enough operands...\(result)"
            return false
        } else {
            return true
        }
    }
}
