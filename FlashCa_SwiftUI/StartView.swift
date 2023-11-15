//
//  StartView.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 15.11.2023.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        VStack {
            Text("FlashCa")
                .padding()
                .font(.title)
            
            VStack {
                Button {
                    print("Category")
                } label: {
                    Text("Category")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("mainDark"))
                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .circular))
                        .padding(.horizontal)
                        .foregroundStyle(Color("mainLight"))
                        .padding(.horizontal, 12)
                }
                
                
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
