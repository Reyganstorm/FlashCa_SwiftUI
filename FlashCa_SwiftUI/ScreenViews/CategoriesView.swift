//
//  CategoriesView.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 16.11.2023.
//

import SwiftUI

struct CategoriesView: View {
    
    @State var cardCount: Int = 12
    
    @State var description: String = "Эта колода флеш-карт предназначена для помощи в изучении и запоминании ключевых терминов и понятий, связанных с программированием. Она охватывает широкий спектр тем и понятий, от базовых до продвинутых." // MAX 200 simbols
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                
                VStack {
                    
                    Image("im_abstract")
                        .foregroundStyle(.green)
                        .frame(width: geometry.size.width, height: geometry.size.width * 0.55)
                    
                    
                    Rectangle()
                        .foregroundStyle(.white)
                        .overlay {
                            Text(description)
                                .foregroundStyle(.black)
                                .padding(geometry.size.width * 0.06)
                                .offset(y: geometry.size.width * 0.02)
                                .font(.system(size: min(geometry.size.width, geometry.size.height) / 25))
                        }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                
                HStack {
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundStyle(.white)
                        .overlay(
                            Text("\(cardCount)")
                                .foregroundStyle(.black)
                                .font(.title)
                                .fontWeight(.semibold)
                        )
                        .frame(width: geometry.size.width * 0.2, height: geometry.size.height * 0.2)
                        .offset(y: geometry.size.width * 0.05)
                        .padding(.leading, geometry.size.width * 0.1)
                        .shadow(radius: 10)
                    
                    Spacer()
                }
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 20)
    }
}

#Preview {
    CategoriesView()
        .frame(width: 300, height: 300)
}
