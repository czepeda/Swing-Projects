//: Playground - noun: a place where people can play

import UIKit


class Card {
    
    var suit: String!
    var rank: Int!
    
    init(st: String, rnk: Int) {
        self.suit = st
        self.rank = rnk
    }
    func displayCard() {
        print("(rank)\(suit)")
    }

}



var card1 = Card(st: "Spade", rnk: 4)
card1.suit
card1.rank
card1.displayCard()

