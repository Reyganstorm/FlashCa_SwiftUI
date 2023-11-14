//
//  StartView.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 06.11.2023.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        Button("Hello", systemImage: "star", action: buttonAction)
            .background(.red)
            .padding(.horizontal)
            .padding(.bottom)
        Text("Hello")
            .padding(.top)
    }
    
    
    
    func buttonAction() {
        
    }
}

#Preview {
    StartView()
}
