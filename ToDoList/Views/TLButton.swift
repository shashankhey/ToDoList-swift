//
//  TLButton.swift
//  ToDoList
//
//  Created by Shashank Shashank on 28/10/23.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            // Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }   
    }
}

#Preview {
    TLButton(title: "Value", background: .blue) {
        // Action
    }
}
