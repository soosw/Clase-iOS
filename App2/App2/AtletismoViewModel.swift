//
//  AtletismoViewModel.swift
//  App2
//
//  Created by Alumno on 21/09/23.
//

import Foundation

import SwiftUI

class AtletismoViewModel : ObservableObject{
    
    @Published var arrCompetencias = [AtletismoModel]()
    
    init(){
        getCompetencias()
    }
    
    func getCompetencias() {
        
        var competencia : AtletismoModel
        
        competencia = AtletismoModel(titulo: "Mundial", description: "El Campeonato Mundial de Atletismo es la máxima competición de atletismo a nivel internacional. Es organizado por World Athletics​ desde 1983 ", urlVideo: "https://www.youtube.com/watch?v=2PqJj0Y3LaA", ultimaedicion: 2023, nombreImagen: "Mundial", IsFavorite: false)
        arrCompetencias.append(competencia)
        
        competencia = AtletismoModel(titulo: "Olimpiadas", description: "Los Juegos Olímpicos de Verano, oficialmente conocidos como los Juegos de la Olimpiada, son un evento multideportivo internacional organizado cada cuatro años bajo la supervisión del Comité Olímpico Internacional. Desde 1896, reúne gran cantidad de deportistas en múltiples especialidades.", urlVideo: "https://www.youtube.com/watch?v=zUaYZRu8aiU", ultimaedicion: 2021, nombreImagen: "Olimpicos", IsFavorite: true)
        arrCompetencias.append(competencia)
        
        competencia = AtletismoModel(titulo: "Diamond League", description: "La Liga Diamante 2023 es la decimocuarta temporada de la serie anual de reuniones de atletismo al aire libre, organizada por World Athletics. La competencia es una revisión de la serie de atletismo de alto nivel desde la fundación de la Liga Diamante en 2010.", urlVideo: "https://www.youtube.com/watch?v=LTAzA1cMvMg", ultimaedicion: 2023, nombreImagen: "Diamond-league", IsFavorite: false)
        arrCompetencias.append(competencia)
    }
    
}
