//
//  TabBarView.swift
//  FlyerYouness2
//
//  Created by Youness Qadery on 5/2/2024.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            // Tab Map
            
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
            .tabItem {
                Image(systemName: "mappin.and.ellipse")
                Text("Map")
            }
    

            // Tab Camera
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
                .tabItem {
                    Image(systemName:"camera.fill")
                    Text("TAKE PICTURE")
                }
            // Tab Mywall
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
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Wall")
                }

          
        }
    }
}


#Preview {
    TabBarView()
}

