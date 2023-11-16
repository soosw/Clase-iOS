//
//  ContentView.swift
//  AppNasa
//
//  Created by Alumno on 22/09/23.
//
import SwiftUI

struct ContentView: View {
    
    @StateObject var PhotoVM = PhotoViewModel()
    @State private var animatingButton = false
    @State private var animatingImage = false
    
    var body: some View {
        
        List(PhotoVM.arrPhotos){ item in
            
            VStack {
                Text(item.title)
                    .font(Font.custom("Chalkduster", size: 30))
                    .foregroundColor(.red)
                    .bold()
                
                AsyncImage(url: URL(string: item.image))
                    .scaledToFit()
                    .frame(width: 250)
                    .clipShape(Circle())
                    .shadow(radius: animatingImage ? 3 : 0)
                
                Text(item.description)
                    .multilineTextAlignment(.center)
                    .font(Font.custom("Chalkduster", size: 16))
                    .padding()
                
                Button(action: {
                    withAnimation(.interpolatingSpring(stiffness: 50, damping: 5)) {
                        animatingButton.toggle()
                    }
                }) {
                    VStack {
                        Link(destination: URL(string: item.url)!) {
                            Label("video", systemImage: "play.tv.fill")
                                .font(Font.custom("Chalkduster", size: 12))
                        }
                    }
                    .frame(width: 170, height: 70)
                    .foregroundColor(.indigo)
                    .background(LinearGradient(colors: [.gray, .white], startPoint: .bottomLeading, endPoint: .topTrailing))
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .shadow(radius: 3)
                    .opacity(animatingButton ? 1.0 : 0.7)
                    .scaleEffect(animatingButton ? 1.5 : 1.0)
                }
            }
            .padding()
        }
        
        .task {
            do {
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

