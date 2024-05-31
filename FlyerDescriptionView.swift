//
//  FlyerDescriptionView.swift
//  FlyerYouness
//
//  Created by Youness Qadery on 1/2/2024.
//

import SwiftUI

struct FlyerDescriptionView: View {
    var body: some View {

            VStack {
                HStack {
                    
                    Text("flyerName")
                        .foregroundStyle(Color.red)
                        .bold()
                        .font(.title)
                        .padding(.leading)
                    Spacer()
                }
                
                Image("blueBackground")
                        .resizable()
                       
                        .cornerRadius(30)
                        
                }
            HStack {
                
                Spacer()
                    
                    Image(systemName: "star")
                    .padding(.horizontal)
            }
            
            HStack{
                
                HStack {
                    Button("Details") {
                        print("me")
                        
                    }
                    .padding(.leading)
                    .buttonStyle(.bordered)
            
                    
                    Button("ARROW") {
                        print("more")
                }
                    .buttonStyle(.bordered)
                }
                
                Spacer()
                
                }
                ZStack {
                    Image("blueBackground")
                        .resizable()
                        .cornerRadius(30)
                    Text("flyerName")
                        .foregroundStyle(Color.red)
                        .bold()
                        .font(.title)
                }
            }
        }
    


#Preview {
    FlyerDescriptionView()
}
