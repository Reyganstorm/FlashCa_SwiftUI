//
//  CardView.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 16.06.2024.
//

import SwiftUI

struct CardView: View {
    
    @State var term: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.blue)
            VStack(alignment: .leading) {
                Text(term)
                    .font(.largeTitle)
                    .padding(.top, 20)
                Spacer()
            }
        }
    }
}

#Preview {
    CardView(term: "Hello World")
        .padding(20)
}
