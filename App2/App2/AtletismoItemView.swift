//
//  AtletismoView.swift
//  App2
//
//  Created by Alumno on 20/09/23.
//

import SwiftUI

struct AtletismoItemView: View {

    
    let competencia : AtletismoModel
    
    var body: some View {
        Image(competencia.nombreImagen)
            .resizable()
            .scaledToFit()
            .frame(width: 200)
            .cornerRadius(10)
            .overlay( alignment: .topLeading,  content:{
                HStack{
                    Text(competencia.titulo)
                        .padding()
                    Image(systemName: competencia.IsFavorite ? "star.fill" : "star")
                        .foregroundColor(.yellow)
                }
            })
    }
}

struct AtletismoItemView_Previews: PreviewProvider {
    static var previews: some View {
        AtletismoItemView(competencia: AtletismoModel.defaultCompetencia)
    }
}
