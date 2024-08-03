//
//  CreateCardView.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 03.08.2024.
//

import SwiftUI
//import SwiftData

struct CreateCardView: View {
    @State private var newTitle: String = ""
    @State private var newDescription: String = ""
    
    var body: some View {
        headerView
    }
    
    private var headerView: some View {
        VStack {
            TextField("Enter title", text: $newTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Enter description", text: $newDescription)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
//                addCard(title: newTitle, description: newDescription)
                newTitle = ""
                newDescription = ""
            }) {
                Text("Add Card")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
}

#Preview {
    CreateCardView()
}



//    private func addCard(title: String, description: String) {
//        let card = Card(title: title, description: description)
//        context.insert(card)
//        try? context.save()
// }
