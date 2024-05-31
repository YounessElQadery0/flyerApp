//
//  PostView.swift
//  FLYER
//
//  Created by Irem Nur Arslaner on 03/02/24.
//
import Foundation
import AVFoundation
import SwiftUI

struct PostView: View {
    enum Field {
        case prompt
    }
    @FocusState var focus: Field?
    @State private var selectedLocationSubtitle = ""
    @State private var isModalPresented = false
    let dateFormatter: DateFormatter = {
            let formatter = DateFormatter()
        formatter.dateStyle = .short
            return formatter
        }()

    
    @State var image: UIImage?
    @State var image2: UIImage?
    @State var image3: UIImage?
    
        @State private var showCamera = false
    @State private var showCamera2 = false
    @State private var showCamera3 = false
    @State private var wakeUp = Date.now
    @State var titleText = ""
    @State var postText = ""
    @State var hashtagsText = ""
    @State private var isDisclosed = false
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                VStack {
                    ScrollView {
                        HStack {
                            Button {
                                showCamera = true
                                
                            } label: {
                                if image == nil {
                                    Image(systemName: "photo.badge.plus")
                                        .font(.system(size: 65))
                                        .foregroundColor(.black)
                                }
                                else {
                                    Image(uiImage: image!)
                                        .resizable().frame(width: 90, height: 90)
                                        .clipShape(UnevenRoundedRectangle(bottomLeadingRadius: 8.43, bottomTrailingRadius: 8.43))
                                    
                                }
                            }
                            .sheet(isPresented: $showCamera, onDismiss: {self.showCamera = false}) {
                                CameraViewController(photo: $image)
                            }
                            .padding()
                            
                            Button {
                                showCamera2 = true
                            } label: {
                                if image2 == nil {
                                    Image(systemName: "photo.badge.plus")
                                        .font(.system(size: 65))
                                        .foregroundColor(.black)
                                }
                                else {
                                    Image(uiImage: image2!)
                                        .resizable().frame(width: 90, height: 90)
                                        .clipShape(UnevenRoundedRectangle(bottomLeadingRadius: 8.43, bottomTrailingRadius: 8.43))
                                }
                            }
                            .sheet(isPresented: $showCamera2, onDismiss: {self.showCamera2 = false}) {
                                CameraViewController(photo: $image2)
                            }
                            .padding()
                            
                            Button {
                                showCamera3 = true
                                
                            } label: {
                                if image3 == nil {
                                    Image(systemName: "photo.badge.plus")
                                        .font(.system(size: 65))
                                        .foregroundColor(.black)
                                }
                                else {
                                    Image(uiImage: image3!)
                                        .resizable().frame(width: 90, height: 90)
                                        .clipShape(UnevenRoundedRectangle(bottomLeadingRadius: 8.43, bottomTrailingRadius: 8.43))
                                }
                            }
                            .sheet(isPresented: $showCamera3, onDismiss: {self.showCamera3 = false}) {
                                CameraViewController(photo: $image3)
                            }
                            .padding()
                        }
                        
                        Divider()
                        HStack {
                            Text("Title:")
                                .padding(.horizontal)
                            
                            TextField("", text: $titleText)
                            
                        }
                        Divider()
                        HStack {
                            Text("#Hashtags:")
                                .padding(.horizontal)
                            
                            TextField("", text: $hashtagsText)
                            
                        }
                        
                        Divider()
                        
                        HStack {
                            Button {
                                isModalPresented.toggle()
                            } label: {
                                if selectedLocationSubtitle == "" {
                                    Text("Choose location")
                                        .foregroundStyle(.white)
                                }
                                else {
                                    Text("\(selectedLocationSubtitle)")
                                        .foregroundStyle(.white)
                                         }
                            }
                            .labelsHidden()
                            .frame(width: 150, height: 30)
                            .background(Color.blue)
                            .cornerRadius(5)
                            .padding()
                            .sheet(isPresented: $isModalPresented) {
                                LocationView(selectedLocationSubtitle: $selectedLocationSubtitle)
                                       }
                            
                            DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .date)
                                .labelsHidden()
                            .frame(width: 150, height: 40)
                           // .background(Color.blue)
                            .cornerRadius(5)
                            .padding()
                        }
                        Divider()
                        HStack {
                            Button {
                                withAnimation {
                                    isDisclosed.toggle()
                                }
                            } label: {
                                HStack {
                                    Text("Description")
                                    Spacer()
                                    Image(systemName: isDisclosed ? "chevron.up" : "chevron.down")
                                        .foregroundColor(.blue)
                                    
                                }
                            }
                            .buttonStyle(.plain)
                            .padding()
                            Spacer()
                        }
                        
                        TextEditor(text: $postText)
                            .scrollContentBackground(.hidden)
                            .background(Color.gray)
                            .foregroundColor(.white)
                            .frame(height: isDisclosed ? 180 : 0, alignment: .top)
                            .clipped()
                            .cornerRadius(30)
                            .padding()
                            .focused($focus, equals: .prompt)
                            .submitLabel(.return)
                            .toolbar {
                                ToolbarItem(placement: .keyboard) {
                                    HStack {
                                        Spacer()
                                        Button("Done") {
                                            focus = nil
                                        }
                                    }
                                }
                            }
                        
                        //Spacer()
                        Button {
                            
                        } label: {
                            Text("Post")
                                .foregroundStyle(.white)
                        }
                        .frame(width: 100, height: 40)
                        .background(Color.blue)
                        .cornerRadius(100)
                        .padding()
                        Spacer()
                    }
                }
                .navigationBarTitle(Text("Post"), displayMode: .automatic)
            }
        }
    }
}

#Preview {
    PostView()
}
