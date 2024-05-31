//
//  LocationView.swift
//  FLYER
//
//  Created by Youness El Qadery on 03/02/24.
//
import SwiftUI
import Combine
import MapKit
struct LocationView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedLocationSubtitle: String
    @StateObject private var mapSearch = MapSearch()
    @State var selection = ""
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Address", text: $mapSearch.searchTerm)
                }
                Text(selection)
                Section {
                    ForEach(mapSearch.locationResults, id: \.self) { location in
                       
                            Button {
                                selectedLocationSubtitle = location.subtitle
                                presentationMode.wrappedValue.dismiss()
                                
                            } label: {
                                VStack(alignment: .leading) {
                                    Text(location.title)
                                    Text(location.subtitle)
                                        .font(.system(.caption))
                                }
                            }
                        
                    }
                }
            }.navigationTitle(Text("Address search"))
        }
    }
}




