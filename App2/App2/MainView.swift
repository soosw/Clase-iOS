//
//  SwiftUIView.swift
//  App2
//
//  Created by Alumno on 26/09/23.
//

import SwiftUI

struct MainView: View {
    
    @State private var nombre : String = ""
    @StateObject var atletismoVM = AtletismoViewModel()
    
    var body: some View {
        TabView{
            AtletismoView(nombre: $nombre)
            .environmentObject(atletismoVM)

                .tabItem{
                    Image(systemName: "house.fill")
                }
            PerfilView(nombre: $nombre)                .tabItem{
                    Image(systemName: "person.fill")
            }
            
        }        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
