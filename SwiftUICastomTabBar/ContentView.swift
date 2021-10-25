//
//  ContentView.swift
//  SwiftUICastomTabBar
//
//  Created by Alexander Sobolev on 13.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var selected = 0
    
    var body: some View {
        VStack {
            
            Spacer()
            
            ZStack {
                
                HStack {
                    Button(action: {
                        self.selected = 0
                    }) {
                        Image("Home")
                    }.foregroundColor(self.selected == 0 ? .black : .gray)
                    
                    Spacer(minLength: 12)
                    
                    Button(action: {
                        self.selected = 1
                    }) {
                        Image("Search")
                    }.foregroundColor(self.selected == 1 ? .black : .gray)
                    
                    Spacer().frame(width: 120)
                    
                    Button(action: {
                        self.selected = 2
                    }) {
                        Image("Person")
                    }.foregroundColor(self.selected == 2 ? .black : .gray)
                    
                    Spacer(minLength: 12)
                    
                    Button(action: {
                        self.selected = 3
                    }) {
                        Image("Menu")
                    }.foregroundColor(self.selected == 3 ? .black : .gray)
                }.padding()
                .padding(.horizontal, 22)
                .background(Color.white)
                
                Button(action: {}
                ) {
                    Image("Heart")
                        .renderingMode(.original)
                        .padding(18)
                }
                .background(Color.yellow)
                .clipShape(Circle())
                .offset(y: -32)
                .shadow(radius: 5
                )
            }
        }.background(Color("Color")).edgesIgnoringSafeArea(.top)
    }    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
