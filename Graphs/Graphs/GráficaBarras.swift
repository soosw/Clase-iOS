//
//  GráficaBarras.swift
//  Graphs
//
//  Created by Alumno on 03/10/23.
//

import SwiftUI
import Charts

struct GraficaBarras: View {
    var body: some View {
    
        let dataBarChart: [Comida] = [
            Comida(id: 1, tipo: "Pizza", votos: 3),
            Comida(id: 2, tipo: "Sushi", votos: 13),
            Comida(id: 3, tipo: "Hamburguesa", votos: 40)
        ]
        VStack{
            Chart(dataBarChart) {
                item in BarMark(x:.value("Comida", item.tipo), y:.value("Votos", item.votos))
            }
        }
        
    }
}

struct Gra_ficaBarras_Previews: PreviewProvider {
    static var previews: some View {
        GraficaBarras()
    }
}
