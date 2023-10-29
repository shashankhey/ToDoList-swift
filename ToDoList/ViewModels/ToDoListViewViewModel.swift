//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Shashank Shashank on 28/10/23.
//

import FirebaseFirestore
import Foundation

// View model for list of items
// primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id: Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
