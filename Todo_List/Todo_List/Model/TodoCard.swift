//
//  TodoCard.swift
//  Todo_List
//
//  Created by Lia on 2021/04/06.
//

import Foundation

struct User: Codable {
    var name: String
    var profileURL: String
}

struct TodoCard: Codable {
    var title: String
    var contents: String
    var postTime: String
    var user: User
}


//GET
struct TodoCards: Codable {
    var todo: [TodoCard]
    var doing: [TodoCard]
    var done: [TodoCard]
    
    init(todo: [TodoCard], doing: [TodoCard], done: [TodoCard]) {
        self.todo = todo
        self.doing = doing
        self.done = done
    }
}

//POST
struct decode {
    var id: Int
    var userId: Int
    var title: String
    var contents: String
    var status: String
    var postTime: String
}
