//
//  main.swift
//  someReadlineProject
//
//  Created by Aigerim Abdurakhmanova on 29.04.2022.
//

import Foundation

print("Hello, World!")

let input = readLine()
let separatedInput = input?.components(separatedBy: " ") ?? []
let first = separatedInput.first
let second = separatedInput.last
print(first)
print(second)
