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
            Rectangle()
                .foregroundStyle(show ? .yellow : .blue)

            VStack(alignment: .leading) {
                
                
                Spacer()
                
                Group {
                    
                    ZStack{
                        Circle()
                            .frame(width: show ? nil : 100, height: show ? nil : 100)
                            .foregroundStyle(.yellow)
                            .onTapGesture {
                                withAnimation(.easeIn) {
                                    show.toggle()
                                }
                            }
//                            .onLongPressGesture(
//                            minimumDuration: 999,
//                            maximumDistance: 0) {
//                 
//                            }
//                    onPressingChanged: { bool in
//                        withAnimation(.bouncy) {
//                            show = bool
//                        }
//                        
//                    }
                        
//                        Image(systemName: show ? "" : "")
//                            .font(.system(size: show ? 25 : 0))
//                            .foregroundStyle(show ? .blue : .white)
                        // MARK: symbolEffect - ios 17+
//                            .contentTransition(.symbolEffect)
                    }
                }
                .padding(.bottom, 20)
            }
            
            if show {
                Text(answer)
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(20)
            } else {
                Text(term)
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(20)
            }
            
            
        }
        .clipShape(.rect(cornerRadius: 32))
        .overlay(content: {
            RoundedRectangle(cornerRadius: 32)
                .stroke(.black, lineWidth: 5)
        })

        
        
        
    }
}

#Preview {
    CardView(term: "Hello World", answer: "My little lady")
        .padding(20)
}
