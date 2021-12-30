//
//  AsteriskHourglass.swift
//
//  Created by Jenoe Balote
//  Created on 2021-12-29
//  Version 1.0
//  Copyright (c) 2021 Jenoe Balote. All rights reserved.
//
//  This program prints an hourglass of asterisks through recursion.
//

import Foundation

// Geenrates the hourglass through recursion.
func hourglass(size: Int, offset: Int) {
    // prints top line
    printHourglass(size: size, offset: offset)
    if size > 1 {
        // recursive call
        hourglass(size: size - 1, offset: offset + 1)
        // prints bottom line
        printHourglass(size: size, offset: offset)
    } else if size == 1 {
        printHourglass(size: size, offset: offset)
    }
}

// Prints out asterisk hourglass line by line.
func printHourglass(size: Int, offset: Int) {
    print(String(repeating: " ", count: offset), terminator: "")
    print(String(repeating: "* ", count: size))
}

// User Input
print("Welcome to the Asterisk Hourglass Program!")
print("Please enter the size of the hourglass: ", terminator: "")

// Makes sure the user input isn't empty.
guard let sizeString = readLine(), !sizeString.isEmpty else {
    print("Something went wrong.")
    exit(001)
}

// Converts user input into an Int.
if let size = Int(sizeString) {
    // Checks to see if user inputted the appropriate amount
    if size >= 1 {
        print("")
        hourglass(size: size, offset: 0)
    } else {
        print("Please enter an integer greater than one.")
    }
// Makes sure the user inputs and integer.
} else {
    print("Please enter an integer.")
}

print("\nDone.")
