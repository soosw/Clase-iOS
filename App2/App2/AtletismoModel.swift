//
//  AtletismoModel.swift
//  App2
//
//  Created by Alumno on 21/09/23.
//

import Foundation

struct AtletismoModel : Identifiable, Equatable {
    var id = UUID()
    var titulo : String
    var description : String
    var urlVideo : String
    var ultimaedicion : Double
    var nombreImagen : String
    var IsFavorite : Bool
    
    
}


extension AtletismoModel{
    public static var defaultCompetencia = AtletismoModel(titulo: "Mundial", description: "El Campeonato Mundial de Atletismo es la máxima competición de atletismo a nivel internacional. Es organizado por World Athletics​ desde 1983 ", urlVideo: "https://www.youtube.com/watch?v=2PqJj0Y3LaA", ultimaedicion: 2023, nombreImagen: "Mundial", IsFavorite: false)
}
