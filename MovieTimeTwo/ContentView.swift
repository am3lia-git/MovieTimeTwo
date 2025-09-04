//
//  ContentView.swift
//  MovieTimeTwo
//
//  Created by Amelia Riddell on 8/28/25.
//

import SwiftUI
import WebKit

struct ContentView: View {
    
    @State private var text = "The Shawshank Redemption"
    @FocusState private var isFocused: Bool
    
    var body: some View {
        ZStack{
            
            LinearGradient( gradient: Gradient(colors: [.indigo, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Enter a movie title")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                
                        
                TextField("", text: $text)
                    .padding()
                    .background(Color(red: 0.1, green: 0.1, blue: 0.1))
                    .cornerRadius(100)
                    .frame(maxWidth: 300)
                    .padding(.horizontal)
                    .foregroundColor(.white.opacity(0.7))
                    .focused($isFocused)
                            .onChange(of: isFocused) {
                                if isFocused { text = "" }
                                }
                        
                Spacer()
            }
        }
        
        
            
    }
}

#Preview {
    ContentView()
}
