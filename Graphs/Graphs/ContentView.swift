//
//  ContentView.swift
//  Graphs
//
//  Created by Alumno on 03/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Ejemplo gráfica!")
                .font(.largeTitle)
                .padding(.bottom,20)
            GraficaBarras()
            Divider()
            GraficaLinea()
            Divider()
            GraficaPastel()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
