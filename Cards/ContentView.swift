//
//  ContentView.swift
//  Cards
//
//  Created by Leone on 7/12/22.
//

import SwiftUI

struct ContentView: View {
    
    // transparent color used in the corner
    let transparentColor = Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0)
    
    var body: some View {
        
        GeometryReader { geo in
            ZStack {
                
                Rectangle()
                    .foregroundColor(.orange)
                
                Image("neroInTheDesert")
                    .resizable()
                    .scaledToFit()
                
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.orange, transparentColor]), startPoint: .top, endPoint: .bottom))
                    // Make smaller
                    .frame(width: 200)
                    .offset(x: (geo.size.width - 90)/2, y: (-geo.size.height)/2 - 40)
                
                // MARK: Content
                VStack {
                    
                    HStack {
                        Spacer()
                        Text("In theaters soon...")
                            .font(.caption)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                    .padding([.top, .leading])
                    
                    Spacer()
                    // Use ZStack, so we can place labels on top
                    ZStack (alignment: .leading) {
                        // MARK: White rectangle
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(height: 100) // Makes 80 height at bottom
                        
                        VStack(alignment: .leading) {
                            Text("The Brave cat")
                                .font(.headline)
                            Text("Who would have known man's only hope in the desert would have been a cat with sand-colored eyes?")
                                .font(.caption)
                        }
                        .padding(.horizontal)
                    }
                }
                
            }
        }
        // Use a frame/ height to make the cards the same size
        .frame(height: 550)
        // Place the cornerRadius on here versus a rounded rectangle, because the clipped images in the roundedRectangle would not have that
        .cornerRadius(15)
        .shadow(radius: 10)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
