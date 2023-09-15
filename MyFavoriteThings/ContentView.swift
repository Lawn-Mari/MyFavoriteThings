//
//  ContentView.swift
//  MyFavoriteThings
//
//  Created by AM Student on 9/15/23.
//

import SwiftUI

struct ContentView: View {
    @State private var secretAlertOn = false
    @State private var alertVisible1 = false
    @State private var alertVisible2 = false
    @State private var alertVisible3 = false
    @State private var alertVisible4 = false
    @State private var alertVisible5 = false
    
    
    var body: some View {
        
        //background
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack {
                //secret button
                HStack {
                    Button("Secret") {
                        secretAlertOn = true
                    }
                    .foregroundColor(Color("SecretTextColor"))
                    .alert("Good job finding the secret!\nNow get out.", isPresented: $secretAlertOn) {
                        Button("ok sorry", role: .cancel) { }
                    }
                        .padding()
                    Spacer()
                }
                Spacer()
                VStack {
                    //header text
                    Text("My Favorite Things!")
                        .foregroundColor(.white)
                        .font(.system(size: 45))
                        .background(Color("TextBackgroundColor"))
                        .frame(width: 379, height: 50)
                        .cornerRadius(10)
                    
                    //Button 1
                    Button("Song Artist") {
                        alertVisible1 = true
                    }
                    .foregroundColor(.white)
                    .alert("Tyler, The Creator", isPresented: $alertVisible1) {
                        Button("good influence, better mugshot", role: .cancel) { }
                    }
                    .background(Color("TextBackgroundColor"))
                    .frame(width: 379, height: 50)
                    .cornerRadius(10)
                    .padding()
                    
                    //Button 2
                    Button("Food") {
                        alertVisible2 = true
                    }
                    .foregroundColor(.white)
                    .alert("Fried Chicken", isPresented: $alertVisible2) {
                        Button("unhealthy but oh so good", role: .cancel) { }
                    }
                    .background(Color("TextBackgroundColor"))
                    .frame(width: 379, height: 50)
                    .cornerRadius(10)
                    .padding()
                    
                    //Button 3
                    Button("Color") {
                        alertVisible3 = true
                    }
                    .foregroundColor(.white)
                    .alert("Mint Green", isPresented: $alertVisible3) {
                        Button("cool", role: .cancel) { }
                    }
                    .background(Color("TextBackgroundColor"))
                    .frame(width: 379, height: 50)
                    .cornerRadius(10)
                    .padding()
                    
                    //Button 4
                    Button("Number") {
                        alertVisible4 = true
                    }
                    .foregroundColor(.white)
                    .alert("8", isPresented: $alertVisible4) {
                        Button("better than 6 😡", role: .cancel) { }
                    }
                    .background(Color("TextBackgroundColor"))
                    .frame(width: 379, height: 50)
                    .cornerRadius(10)
                    .padding()
                    
                    //Button 5
                    Button("Sports Player (you probably already know what it is)") {
                        alertVisible5 = true
                    }
                    .foregroundColor(.white)
                    .alert("THE GOAT\nBRON", isPresented: $alertVisible5) {
                        Button("what a guy", role: .cancel) { }
                    }
                    .background(Color("TextBackgroundColor"))
                    .frame(width: 300, height: 50)
                    .cornerRadius(2134)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
