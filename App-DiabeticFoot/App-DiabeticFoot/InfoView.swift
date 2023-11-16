//
//  Tratamiento2View.swift
//  App-DiabeticFoot
//
//  Created by Scarlet on 04/11/23.
//

import SwiftUI

struct InfoView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    // Define un array de datos que contiene información para cada elemento en la cuadrícula
    let items = [
        ("image1", "Texto 1"),
        ("image2", "Texto 2"),
        ("image3", "Texto 3"),
        ("image4", "Texto 4")
    ]

    var body: some View {
           NavigationView {
               GeometryReader { geometry in
                   ZStack {
                       Color("BackgroundColor")
                           .ignoresSafeArea()

                       VStack {
                           VStack(spacing: 0) {
                               Color(Color(red: 0.85, green: 0.85, blue: 0.85))
                                   .ignoresSafeArea()
                                   .frame(maxHeight: 0)
                               HStack {
                                   Text("Lecciones")
                                       .font(Font.system(size: 35, weight: .bold))
                                       .foregroundStyle(Color(red: 0.278, green: 0.278, blue: 0.278))
                                       .padding([.leading], 30)
                                   Spacer()
                                   Image("cucho")
                                       .resizable()
                                       .scaledToFit()
                                       .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                       .frame(width: 70)
                                       .padding([.trailing], 10)
                               }
                               .padding(8)
                               .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                               .clipShape(
                                   .rect(
                                       bottomLeadingRadius: 20,
                                       bottomTrailingRadius: 20
                                   )
                               )
                           }

                           Spacer()

                           ScrollView {
                               LazyVGrid(columns: columns, alignment: .center, spacing: 15) {
                                   ForEach(items, id: \.0) { (imageName, text) in
                                       NavigationLink(
                                           destination: Text(text), // Reemplaza esto con la vista de destino deseada
                                           label: {
                                               VStack {
                                                   Image(imageName)
                                                       .resizable()
                                                       .aspectRatio(contentMode: .fit)
                                                       .frame(width: 100, height: 100)

                                                   Text(text)
                                                       .font(.headline)
                                               }
                                           }
                                       )
                                   }
                               }
                           }
                           .padding()
                       }
                   }
                   .ignoresSafeArea(.keyboard)
                   .frame(width: geometry.size.width)
               }
               .navigationBarItems(trailing:
                   NavigationLink(
                       destination: MainView(),
                       label: {
                           Text("Inicio")
                       }
                   )
               )
           }
       }
}

