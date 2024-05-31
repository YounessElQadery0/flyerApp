//
//  ContentView.swift
//  FLYER
//
//  Created by Irem Nur Arslaner on 30/01/24.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                Map().tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Map")
                }
                PostView().tabItem{
                    Image(systemName: "camera.circle")
                    Text("Post")
                   
                }
                MyWallView().tabItem {
                    Image(systemName: "star.fill")
                    Text("My Wall")
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
