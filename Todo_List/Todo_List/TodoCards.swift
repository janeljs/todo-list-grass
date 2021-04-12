//
//  TodoCards.swift
//  Todo_List
//
//  Created by Lia on 2021/04/07.
//

import Foundation

protocol TodoCardsManageable {
    func getCard(at indexPath: IndexPath) -> TodoCard
    func countCards() -> Int
}


class TodoCards: TodoCardsManageable {
    
    private var cards: [TodoCard]
    
    init(cards: [TodoCard]) {
        self.cards = cards
    }
    
    convenience init() {        
        self.init(cards: [TodoCard()])
    }
    
    func getCard(at indexPath: IndexPath) -> TodoCard {
        return cards[indexPath.item]
    }
    
    func countCards() -> Int {
        return cards.count
    }
}


