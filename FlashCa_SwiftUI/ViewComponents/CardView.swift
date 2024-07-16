//
//  CardView.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 16.06.2024.
//

import SwiftUI

struct CardView: View {
    
    @State var term: String
    @State var answer: String
    @State var show = false
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(/*show ? .green :*/ .blue)
            
            
            
            VStack(alignment: .leading) {
                
                
                Spacer()
                
                Group {
                    
                    ZStack{
                        Circle()
                            .frame(width: show ? nil : 25, height: show ? nil : 25)
                            .foregroundStyle(.green)
                        
                        Image(systemName: show ? "checkmark.circle.fill" : "")
                            .font(.system(size: show ? 25 : 0))
                            .foregroundStyle(show ? .blue : .white)
                        // MARK: symbolEffect - ios 17+
//                            .contentTransition(.symbolEffect)
                    }
                }
                .padding(.bottom, 20)
            }
            Text(show ? answer : term)
                .font(.largeTitle)
                .padding(.top, 20)
            
        }
//        .contentShape(Rectangle())
        .onTapGesture {
            withAnimation(.easeIn) {
                show.toggle()
            }
        }
    }
}

#Preview {
    CardView(term: "Hello World", answer: "My little lady")
        .padding(20)
}
