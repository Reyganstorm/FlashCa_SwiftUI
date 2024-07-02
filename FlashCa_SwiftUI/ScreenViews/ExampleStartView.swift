//
//  ExampleStartView.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 06.11.2023.
//

import SwiftUI

struct ExampleStartView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    
    
    var body: some View {
        
        
        VStack {
            Text("Hello, world!")
                .padding()
                .padding(.horizontal, 30)
                .font(.title2.bold())
                .background(Color("whiteAlpha"))
                .cornerRadius(30)
                .padding(.vertical, 30)
            
            VStack {
                TextField("Text Email", text: $email)
                    .padding()
                    .background(Color("whiteAlpha"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal, 12)
                
                SecureField("Text Password", text: $password)
                    .padding()
                    .background(Color("whiteAlpha"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal, 12)
                
                Button {
                    print("Hi")
                } label: {
                    Text("Enter")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(colors: [Color("main"), Color("mainDark")], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius (12)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                
                Button {
                    print("Авторизация" )
                } label: {
                    Text ("Ещё не с нами?")
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .font(.title3.bold())
                        .foregroundColor(Color("mainDark"))
                }
            }
            .padding()
            .background(Color(.whiteAlpha))
            .cornerRadius(24)
            .padding(20)
            
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            .background(Color(.blue))
    }
}

#Preview {
    ExampleStartView()
}
