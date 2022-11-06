//
//  ContentView.swift
//  hoton
//
//  Created by hoton on 02/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    @State private var shadowColor: Color = .white
    @State private var shadowRadius: CGFloat = 8
    @State private var shadowX: CGFloat = 20
    @State private var shadowY: CGFloat = 0
    var body: some View {
        
        
        ZStack{
            
            
            
            Image("background")
            
            VStack{
                Image("avatar")
                    .resizable()
                    .frame(width: 200, height: 200)
                //    .clipped()
                    .clipShape(Circle())
                //
                
                    .shadow(color: shadowColor, radius: shadowRadius, x: shadowX, y: shadowY
                    )
                
                    .onAppear() {
                        withAnimation(.linear(duration: 2)) {
                            shadowColor = .gray
                            shadowRadius = 2
                            shadowX = -5
                            shadowY = 5
                        }
                    }
                    .padding()
              
                Text("Hoton Alharthi")
                    .foregroundColor(.white)
                   
                    .font(.system(size: 50))
                
                   // .padding()
                Text(" Fresh CS graduate, an artist and gamer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .padding()
                
                
                
            }
        
            
        }
     
        
        
        
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
