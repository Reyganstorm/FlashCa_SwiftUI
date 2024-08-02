//
//  MainSreenView.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 03.07.2024.
//

import SwiftUI

struct MainSreenView: View {
    
    @State private var allCards: [Card] = []
    @State private var selectedIndex: Int = 0
    @State private var cardOffsets: [Int:Bool] = [:] // UserId : (Dirrection is Right == TRUE)
    
    var body: some View {
        ZStack {
            if !allCards.isEmpty {
                ForEach(Array(allCards.enumerated()), id: \.offset) { (index, card) in
                    
                    
                    let isPrevious = (selectedIndex - 1) == index
                    let isCurrent = selectedIndex == index
                    let isNext = (selectedIndex + 1) == index
                    
                    if isPrevious || isCurrent || isNext {
                        let offsetValue = cardOffsets[card.id]
                        
                        cardProfileCell(user: user, index: index)
                            .zIndex(Double(allUsers.count - index))
                            .offset(x: offsetValue == nil ? 0 : (offsetValue == true ? 900 : -900))
                    }
                    
                }
                CardView(term: "Hello", answer: "Bye")
                    .padding()
            } else {
                CardView(term: "Empty Deck", answer: "Ooops")
                    .padding()
            }
        }
        .task {
            allCards = MockStorage().getCards()
        }
    }
    
    
    private func cardProfileCell(card: Card, index: Int) -> some View {
        BumbleCardView(
            user: user,
            onSendAComplimentPressed: nil,
            onSuperLikePressed: nil,
            onXmarkPressed: {
                userDidSelect(index: index, isLike: false)
            },
            onCheckmarkPressed: {
                userDidSelect(index: index, isLike: true)
            },
            onHideAndReportPressed: {
                
            }
        )
        .withDragGesture(
            .horizontal,
            minimumDistance: 10,
            resets: true,
            //                                        animation: <#T##Animation#>,
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

    
}

#Preview {
    MainSreenView()
}
