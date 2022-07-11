//
//  SettingsView.swift
//  DICE
//
//  Created by Sasha Suvorov on 14.06.2022.
//

import SwiftUI


struct SettingsView: View {
    
   // @State private var showingContentView = false
    
    var body: some View {
        
            
            NavigationView {
               
                
                ZStack {
                    Color(red: 0.97, green: 0.94, blue: 0.73)
                        .ignoresSafeArea()
                    
                    
                    VStack {
                        Button(action: {
                            //button subscription action
                        }, label: {
                            Text("Remove AD")
                        })
                        .buttonStyle(.bordered)
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundColor(.yellow)
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(Color.blue)
                        .cornerRadius(15)
                        
                        
                        
                        
                        
                            .navigationBarTitle("Settings", displayMode: .inline)
                           // .navigationBarItems(trailing:
                             //                       Button(action: {
                                
                           // }, label: {
                             //   Text("Back")
                           // })
                             //   .buttonStyle(.bordered)
                               // .font(.system(size: 14, weight: .bold, design: .rounded))
                              //  .foregroundColor(.yellow)
                             //   .frame(width: 85, height: 20, alignment: .center)
                              //  .background(Color.blue)
                              //  .cornerRadius(15)
                                                
                        //)
                    }
                }
                
               
            }
        
            
    }
    
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
