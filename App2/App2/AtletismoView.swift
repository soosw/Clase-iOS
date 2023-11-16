//
//  ContentView.swift
//  App2
//
//  Created by Alumno on 20/09/23.
//

import SwiftUI



struct AtletismoView: View {
    
    
    
    @Binding var nombre : String
    @State var showFavoritesOnly = false
    @EnvironmentObject var atletismoVM : AtletismoViewModel
    
    var filterCompetencias : [AtletismoModel]{
        atletismoVM.arrCompetencias.filter{ competencia in (!showFavoritesOnly || competencia.IsFavorite)
            
        }
    }
    
    var body: some View {

        NavigationView{
            
            ZStack{
                Color(.lightGray)
                    .ignoresSafeArea(.all)
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        Text("Hola \(nombre)")
                        
                        Toggle(isOn: $showFavoritesOnly){
                            Text("Solo Favoritos")
                        }
                        .frame(width: 200)
                        ForEach(filterCompetencias) { item in
                            
                            NavigationLink(destination: AtletismoDetailView(competencia: item), label: {
                                AtletismoItemView(competencia: item)
                            })
                        }
                    }//Vstack
                }//ScrollView
            }//Zstack
            .navigationTitle("Atletismo :)")
            

        }
        }
        
}

struct AtletismoView_Previews: PreviewProvider {
    static var previews: some View {
        AtletismoView(nombre: .constant("Scarlet"))
    }
}
