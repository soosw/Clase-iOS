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
        
        List(PhotoVM.arrPhotos){ item in
            
            VStack{
                Text(item.title)
                AsyncImage(url: URL(string: item.url))
                    .scaledToFit()
                    .frame(height: 150)
                    .clipped()
            }
        }
        
        .task {
            do{
                try await PhotoVM.getPhotoData()
            } catch {
                print("error2")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
