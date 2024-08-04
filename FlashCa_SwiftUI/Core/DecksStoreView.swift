//
//  DecksStoreView.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 03.08.2024.
//

import SwiftUI
import SwiftfulRouting

struct DecksStoreView: View {
    
    @Environment(\.router) var router
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                header
                    .padding(.top, 10)
                
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(0..<20) { index in
                            CategoriesView(cardCount: index)
                                .frame(height: 200)
                        }
                    }
                }
            }
        }
    }
    
    
    private var header: some View {
        HStack(spacing: 0) {
            HStack {
//                Image(systemName: "line.horizontal.3")
//                    .padding(8)
//                    .foregroundStyle(Color(.dayNight))
//                    .background(Color.black.opacity(0.001))
//                    .onTapGesture {
//                        router.dismissScreen()
//                    }
                
                Image(systemName: "arrow.uturn.left")
                    .padding(8)
                    .foregroundStyle(Color(.dayNight))
                    .background(Color.black.opacity(0.001))
                    .onTapGesture {
                        router.dismissScreen()
                    }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            //                    .background(.red)
            
            Text("FlashCa")
                .font(.title)
                .foregroundStyle(.yellow)
                .frame(maxWidth: .infinity, alignment: .center)
            //                            .background(.blue)
            
            
            Image(systemName: "plus.rectangle.portrait.fill")
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
}

#Preview {
    DecksStoreView()
}
