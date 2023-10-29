//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Shashank Shashank on 28/10/23.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
