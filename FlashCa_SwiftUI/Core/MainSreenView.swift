//
//  MainSreenView.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 03.07.2024.
//

import SwiftUI
import SwiftfulUI
import SwiftfulRouting

struct MainSreenView: View {
    
    @Environment(\.router) var router
    
    @State private var allCards: [Card] = []
    @State private var selectedIndex: Int = 0
    @State private var cardOffsets: [Int:Bool] = [:] // UserId : (Dirrection is Right == TRUE)
    @State private var currentSwipeOffset: CGFloat = 0
    
    var body: some View {
        
        
        VStack(spacing: 12) {
            
            header
            
            ZStack {
                if !allCards.isEmpty {
                    ForEach(Array(allCards.enumerated()), id: \.offset) { (index, card) in
                        
                        
                        let isPrevious = (selectedIndex - 1) == index
                        let isCurrent = selectedIndex == index
                        let isNext = (selectedIndex + 1) == index
                        
                        if isPrevious || isCurrent || isNext {
                            let offsetValue = cardOffsets[card.id]
                            
                            cardProfileCell(card: card, index: index)
                                .zIndex(Double(allCards.count - index))
                                .offset(x: offsetValue == nil ? 0 : (offsetValue == true ? 900 : -900))
                        }
                        
                    }
                    
                } else {
                    CardView(term: "Empty Deck", answer: "Ooops")
                        .padding()
                }
                    
                
            }
            .frame(maxHeight: .infinity)
            .padding(8)
            .animation(.smooth, value: cardOffsets)
            .task {
                allCards = MockStorage().getCards()
            }
            
            footer
                .padding(.horizontal, 32)
        }
        .padding(8)
    }
    
    
    private func cardProfileCell(card: Card, index: Int) -> some View {
        CardView(term: card.term, answer: card.descript)
            .padding(10)
            .withDragGesture(
            .horizontal,
            minimumDistance: 10,
            resets: true,
            // animation: <#T##Animation#>,
            rotationMultiplier: 1.05,
            scaleMultiplier: 0.8,
            onChanged: { dragOffset in
                currentSwipeOffset = dragOffset.width
            },
            onEnded: { dragOffset in
                if dragOffset.width < -50 {
                    userDidSelect(index: index, isLike: false)
                } else if dragOffset.width > 50 {
                    userDidSelect(index: index, isLike: true)
                }
            }
        )
    }

    
    private func userDidSelect(index: Int, isLike: Bool) {
        let user = allCards[index]
        cardOffsets[user.id] = isLike
        
        selectedIndex += 1
    }
    
    private var header: some View {
        HStack(spacing: 0) {
            HStack {
                Image(systemName: "line.horizontal.3")
                    .padding(8)
                    .foregroundStyle(Color(.dayNight))
                    .background(Color.black.opacity(0.001))
                    .onTapGesture {
                        router.showScreen(.sheet) { _ in
                            DecksStoreView()
                        }
                    }
                
//                Image(systemName: "arrow.uturn.left")
//                    .padding(8)
//                    .foregroundStyle(Color(.dayNight))
//                    .background(Color.black.opacity(0.001))
//                    .onTapGesture {
//                        
//                    }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            //                    .background(.red)
            
            Text("FlashCa")
                .font(.title)
                .foregroundStyle(.yellow)
                .frame(maxWidth: .infinity, alignment: .center)
            //                            .background(.blue)
            
            
            Image(systemName: "square.and.pencil")
                .padding(8)
                .foregroundStyle(Color(.dayNight))
                .background(Color.black.opacity(0.001))
                .onTapGesture {
                    
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
            //                            .background(.red)
        }
        .font(.title2)
        .fontWeight(.medium)
        .foregroundStyle(.black)
    }
    
    private var footer: some View {
        HStack(spacing: 0) {
            Circle()
                .fill(.yellow)
                .overlay(
                    Image(systemName: "xmark")
                        .font(.title)
                        .fontWeight(.semibold)
                )
                .frame(width: 60, height: 60)
                .onTapGesture {
                    
                    
                }
            
            Spacer(minLength: 0)
            
            Circle()
                .fill(.yellow)
                .overlay(
                    Image(systemName: "checkmark")
                        .font(.title)
                        .fontWeight(.semibold)
                )
                .frame(width: 60, height: 60)
                .onTapGesture {
                    
                    
                    
                }
        }
        .font(.title2)
        .fontWeight(.medium)
        .foregroundStyle(.black)
    }
    
}

#Preview {
    MainSreenView()
}
