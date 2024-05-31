//
//  ContentView.swift
//  FlyerYouness
//
//  Created by Youness Qadery on 1/2/2024.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        ZStack {
            Image("blueBackground")
                .ignoresSafeArea()
                .opacity(0.95)
            Image("flyer")
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(50)
            
            
            
            
        }
    }
}
#Preview {
    LogoView()
}
