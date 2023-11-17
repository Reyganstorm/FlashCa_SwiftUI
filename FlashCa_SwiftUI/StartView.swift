//
//  StartView.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 15.11.2023.
//

import SwiftUI

struct StartView: View {
    
    @State var isP: Bool = false
    
    var body: some View {
        
        VStack {
            Text("FlashCa")
                .padding()
                .font(.title)
            
            VStack {
                Button {
//                    CategoriesView()
                    print("category")
                    isP.toggle()
                } label: {
                    Text("Category")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("mainDark"))
                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .circular))
                        .padding(.horizontal)
                        .foregroundStyle(Color("mainLight"))
                        .padding(.horizontal, 12)
                }.fullScreenCover(isPresented: $isP, content: {
                    CategoriesView()
                })
//                .sheet(isPresented: $isP, content: {
//                    CategoriesView()
//                })
//                .onTapGesture {
//                    withAnimation {
//                        
//                    }
//                }
                
                
                Button {
                    print("Settings")
                } label: {
                    Text("Settings")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("mainDark"))
                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .circular))
                        .padding(.horizontal)
                        .foregroundStyle(Color("mainLight"))
                        .padding(.horizontal, 12)
                }
                
                Button {
                    print("Charts")
                } label: {
                    Text("Charts")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("mainDark"))
                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .circular))
                        .padding(.horizontal)
                        .foregroundStyle(Color("mainLight"))
                        .padding(.horizontal, 12)
                }
                
                Button {
                    print("Learn")
                } label: {
                    Text("Learn")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("mainDark"))
                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .circular))
                        .padding(.horizontal)
                        .foregroundStyle(Color("mainLight"))
                        .padding(.horizontal, 12)
                }
            }
        } .padding()
            .background(Color("mainLight"))
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            .padding(.horizontal, 30)
            
    }
}


#Preview {
    StartView()
}
