//
//  Concentration.swift
//  Concentration
//
//  Created by Kozak, Luca on 2018. 06. 04..
//  Copyright © 2018. Kozak, Luca. All rights reserved.
//

import Foundation

class Concentration
{
    private(set) var cards = [Card]()
    
    private var indexOfOneAndOnlyFaceUpCard: Int? {
        get {
            let ch = "h".oneAndOnly
            return cards.indices.filter { cards[$0].isFaceUp }.oneAndOnly
//           var foundIndex: Int?
//           for index in cards.indices {
//               if cards[index].isFaceUp {
//                   if foundIndex == nil{
//                      foundIndex = index
//                  } else {
//                      return nil
//                  }
//                }
//            }
//            return foundIndex
        }
        set {
            for index in cards.indices {
                cards[index].isFaceUp = (index == newValue)
            }
        }
    }
    
    func chooseCard(at index: Int) {
        assert(cards.indices.contains(index), "Concentration.chooseCard(at: \(index)): chosen index not in the cards")
        if !cards[index].isMatched{
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                    if cards[matchIndex] == cards[index] {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true 
            } else {
                indexOfOneAndOnlyFaceUpCard = index
            }
            
        }
    }
    
    init(numberOfPairsOfCards: Int) {
         assert(numberOfPairsOfCards>0, "Concentration.init(at: \(numberOfPairsOfCards)): chosen index not in the cards")
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]

        }
    }
}

extension Collection {
    var oneAndOnly: Element ? {
    return count == 1 ? first : nil
    }
}
    
    
   
    
    
    
    
    
    
    
    
    
}
