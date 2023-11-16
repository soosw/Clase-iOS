//
//  GraficaPastel.swift
//  Graphs
//
//  Created by Alumno on 03/10/23.
//

import SwiftUI

struct GraficaPastel: View {
    let datapPie = [
        (6.0,Color.red),
        (3.0,Color.blue),
        (1.0,Color.yellow),
        (4.0,Color.green)
    ]
    
    var body: some View {
        PieChartView(slices: datapPie)
    }
}

struct GraficaPastel_Previews: PreviewProvider {
    static var previews: some View {
        GraficaPastel()
    }
}
