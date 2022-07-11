//
//  NavigationView.swift
//  DICE
//
//  Created by Sasha Suvorov on 14.06.2022.
//

import SwiftUI

struct NavigationList: View {
    var body: some View {
        NavigationView {
            
            
            ZStack {
                Color(red: 0.97, green: 0.94, blue: 0.73)
                .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 250) {
                    Image("1024")
                        .frame(width: 200, height: 200, alignment: .center)
                    
                    
                    //Text("DICE")
                      //  .font(.system(size: 72, weight: .bold, design: .rounded))
                    
                        //.padding(100)
                    
                    
                    NavigationLink(destination: ContentView()) {
                        Text("START")
                            .font(.system(size: 28, weight: .bold, design: .rounded))
                            .foregroundColor(.yellow)
                            .frame(width: 200, height: 50, alignment: .center)
                            .background(Color.blue)
                            .cornerRadius(15)
                    }
                }
            }
         
    }
        
}
}
struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationList()
    }
}
