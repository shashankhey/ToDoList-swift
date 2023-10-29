//
//  User.swift
//  ToDoList
//
//  Created by Shashank Shashank on 28/10/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
