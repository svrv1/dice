//
//  ContentView.swift
//  DICE
//
//  Created by Sasha Suvorov on 13.06.2022.
//

import SwiftUI


struct ContentView: View {
    
    
    @State var leftNumber = 1
    @State var rightNumber = 1
    
    @State var score = 2
    
    @State private var showingSettingsView = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 0.97, green: 0.94, blue: 0.73)
                .ignoresSafeArea()
                .navigationBarItems(trailing:
                 
                                        Button(action: {
                    showingSettingsView.toggle()
                }, label: {
                    Text("Settings")
                })
                    .buttonStyle(.bordered)
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .foregroundColor(.yellow)
                    .frame(width: 85, height: 20, alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(15)
                    .sheet(isPresented: $showingSettingsView, content: {
                        SettingsView()
                    })
                    )
              
            VStack {
                HStack(spacing: 50) {
                    Image("dice\(leftNumber)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.horizontal)
                        .frame(width: 130, height: 130)
                        .onTapGesture {
                            leftNumber = Int.random(in: 1...6)
                            score = (leftNumber + rightNumber)
                        }
                    
                    Image("dice\(rightNumber)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.horizontal)
                        .frame(width: 130, height: 130)
                        .onTapGesture {
                            rightNumber = Int.random(in: 1...6)
                            score = (leftNumber + rightNumber)
                        }
                    
                } .padding(.horizontal, 50)
                
                    .padding()
                
                Text("Score: \(score)")
                    .font(.system(size: 32, weight: .bold, design: .rounded))
                    .padding(.bottom, 150)
                
                Button(action: {
                    leftNumber = Int.random(in: 1...6)
                    rightNumber = Int.random(in: 1...6)
                    score = (leftNumber + rightNumber)
                    
                  
                }, label: {
                    Text("ROLL")
                })
                .buttonStyle(.plain)
                .font(.system(size: 32, weight: .bold, design: .rounded))
                .foregroundColor(.yellow)
                .frame(width: 300, height: 50, alignment: .center)
                .background(Color.blue)
                .cornerRadius(25)
            }
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
