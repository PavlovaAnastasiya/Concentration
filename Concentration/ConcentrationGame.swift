//
//  ConcentrationGame.swift
//  Concentration
//
//  Created by Pavlova on 12.02.2021.
//

import Foundation

class ConcentrationGame {
    
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchingIndex = indexOfOneAndOnlyFaceUpCard, matchingIndex != index {
                if cards[matchingIndex].identifire == cards[index].identifire{
                    cards[matchingIndex].isMatched = true
                    cards[index].isMatched = true
                    
                }
                cards[index].isFaceUP = true
                indexOfOneAndOnlyFaceUpCard = nil
            } else {
                for flipDown in cards.indices {
                    cards[flipDown].isFaceUP = false
                }
                cards[index].isFaceUP = true
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
        
    }
    init(numberOfPairsofCards: Int){
        for _ in 1...numberOfPairsofCards {
            let card = Card()
            cards += [card,card]
            
        }
    }

}

