//
//  MyWallView.swift
//  FLYER
//
//  Created by Irem Nur Arslaner on 03/02/24.
//

import SwiftUI
struct MyWallView: View {
    @State var showFlyersView = false
    @State var showFavouritesView = false
    @State var showMypostView = false
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .center){
                        Button {
                            showFlyersView.toggle()
                        } label: {
                            VStack(alignment: .center) {
                                Image("flyer")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 150)
                                    .padding()
                                
                                Text("Flyers")
                                    .foregroundStyle(.white)
                                    .frame(width: 100, height: 30)
                                    .background(.blue)
                                    .cornerRadius(100)
                            
                        }
                            .padding()
                    }
                        .navigationDestination(isPresented: $showFlyersView) {
                            FlyersView()
                        }

                        Button {
                            showFavouritesView.toggle()
                        } label: {
                            VStack {
                                Image( "fav")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 150)
                                    .padding()
                                
                            Text("Favourites")
                                .foregroundStyle(.white)
                                .frame(width: 100, height: 30)
                                .background(.blue)
                                .cornerRadius(100)
                        }
                            .padding()
                    }
                    
                    .navigationDestination(isPresented: $showFavouritesView) {
                        FavouritesView()
                    }
                }
                .padding(.bottom)
                
                Button {
                    showMypostView.toggle()
                } label: {
                    VStack (alignment: .center) {
                        Image("brochure")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .padding(.top)
                        
                        Text("My Post")
                            .foregroundStyle(.white)
                            .frame(width: 100, height: 30)
                            .background(.blue)
                            .cornerRadius(100)
                    }
                }
                
                .navigationDestination(isPresented: $showMypostView) {
                    MyPostView()
                }
            }
            .navigationTitle("My Wall")
        }
    }
}

#Preview {
    MyWallView()
}

extension Color {
    public static var pinkygrey: Color {
        return Color(UIColor(red: 145/255, green: 100/255, blue: 254/255, alpha: 1.0))
    }
}
