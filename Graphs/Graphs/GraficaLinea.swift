//
//  GraficaLinea.swift
//  Graphs
//
//  Created by Alumno on 03/10/23.
//

import SwiftUI
import Charts

struct GraficaLinea: View {
    let dataLinesXY = [
        Punto(x:1, y:20),
        Punto(x:2, y:100),
        Punto(x:3, y:60),
        Punto(x:4, y:50),
        Punto(x:5, y:30),
        Punto(x:6, y:100),


        
    ]
    var body: some View {
        Chart(dataLinesXY){
            item in LineMark(x:.value("Meses", item.x),y:.value("Votos", item.y))
        }
        .frame(height: 200)
        .foregroundColor(.purple)
        .chartXScale(domain: [1,dataLinesXY.count])
        
        
    }
}

struct GraficaLinea_Previews: PreviewProvider {
    static var previews: some View {
        GraficaLinea()
    }
}
