//
//  ContentView.swift
//  AppNasa
//
//  Created by Alumno on 22/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var PhotoVM = PhotoViewModel()
    
    var body: some View {
        
        // List(PhotoVM.arrPhotos){ item in
        ScrollView(.vertical){
            ScrollView(.horizontal){
                VStack{
                    if (PhotoVM.isLoading) {
                        ProgressView("Loading...")
                            .progressViewStyle(CircularProgressViewStyle())
                            .scaleEffect(1.5, anchor: .center)
                            .frame(maxWidth: .infinity)
                            .frame(height: UIScreen.main.bounds.size.height) // Ajusta la altura para centrar verticalmente
                            .alignmentGuide(.top) { _ in UIScreen.main.bounds.size.height / 2 } // Centra verticalmente
                    } else {
                        
                        Text(PhotoVM.a.title)
                        AsyncImage(url: URL(string: PhotoVM.a.url))
                            .scaledToFit()
                        //.frame(height: 850)
                            .padding(70)
                            .clipped()
                    }
                }
            .frame(maxWidth: .infinity)
            .task {
                do{
                    try await PhotoVM.getPhotoData()
                } catch {
                    print("error2")
                }
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
