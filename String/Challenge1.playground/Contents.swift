//: Playground - noun: a place where people can play

import UIKit

// Challenge 1: Are the letters unique?
// - Write a function that accepts a String as its only paramater, and returns true if the string has only unique letters, taking letter case into account.

func solution1(input: String) -> Bool {
    
    var usedLetters = [Character]()
    
    for letter in input.characters {
        if usedLetters.contains(letter) {
            return false
        }
        
        usedLetters.append(letter)
    }
    
    return true
}

func solution2(input: String) -> Bool {
    return Set(input.characters).count == input.characters.count
}


solution1(input: "No Duplicates")
solution1(input: "agasgawegasg")
solution2(input: "AaBbCc")
