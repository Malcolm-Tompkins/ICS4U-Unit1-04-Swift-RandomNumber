/*
* Runs the guess the number game
* @author  Malcolm Tompkins
* @version 1.0
* @since 2020-11-25
*/

import Foundation

// Function for input

enum MyError: Error {
    case invalidInt(String)
}

func input() -> Int {
    print("Guess a number from 1-6")
    let userNumberString = readLine()!
    if let userNumberInt = Int(userNumberString) {
        return userNumberInt
    } else {
      print("Invalid guess")
      exit(0)
    }
}
let randomInt = Int.random(in: 1..<7)
var loopCounter: Int = 0
while true {
    loopCounter += 1
    let userNumber = input()
    if userNumber == randomInt {
        print("You have guessed correctly")
        print("It took you \(loopCounter) tries")
        break
    } else {
        print("Guess was incorrect")
        if userNumber > randomInt {
            print("Your number was too high")
        } else if userNumber < randomInt {
            print("Your number was too low")
        }
    }
}
