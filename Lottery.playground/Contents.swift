//: Playground - noun: a place where people can play

import UIKit
import GameplayKit
var str = "Hello, playground"


typealias Guess = (Int, Int, Int, Int, Int, powerball: Int)


func play(Guess: [Int]) {
    let powerBall = arc4random_uniform(99)
    let jackpot = arc4random_uniform(9000000)
    let lotteryNumbers = [arc4random_uniform(99), arc4random_uniform(99),arc4random_uniform(99),arc4random_uniform(99),arc4random_uniform(99),powerBall]
    var lotteryEarnings = 0
    var winGuess = [Int]()
    var wonPowerball: Bool = false
    for number in Guess {
        for numbers in lotteryNumbers {
            if number == Int(powerBall) {
                wonPowerball = true
            } else if number == Int(numbers) {
                print("Your winning number is \(number)")
                winGuess.append(number)
                
            } else {
            }
        }
    }
    switch wonPowerball {
    case true:
        lotteryEarnings = Int(jackpot/10) * winGuess.count + (Int(jackpot/10) * 2)
    default:
        lotteryEarnings = Int(jackpot/10) * winGuess.count
    }
    print("You won $\(lotteryEarnings)!")

    
}


play(Guess: [10, 22, 15, 72, 43, 42])


