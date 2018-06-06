//
//  Card.swift
//  Concentration
//
//  Created by Kozak, Luca on 2018. 06. 04..
//  Copyright © 2018. Kozak, Luca. All rights reserved.
//

import Foundation

struct Card
{
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init (identifier: Int) {
        self.identifier = Card.getUniqueIdentifier()
    }
}
