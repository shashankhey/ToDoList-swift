//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Shashank Shashank on 28/10/23.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

// to do list item view model
class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
