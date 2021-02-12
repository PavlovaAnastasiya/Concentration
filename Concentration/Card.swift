//
//  Card.swift
//  Concentration
//
//  Created by Pavlova on 12.02.2021.
//

import Foundation

struct Card {
    
    var isFaceUP = false
    var isMatched = false
    var identifire: Int
    
    static var identifierNumber = 0
    
    static func identifireGenerator() -> Int{
        identifierNumber += 1
        return identifierNumber
    }
    
    init() {
        self.identifire = Card.identifireGenerator()
    }
    
}



