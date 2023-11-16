//
//  StructComida.swift
//  Graphs
//
//  Created by Alumno on 03/10/23.
//

import Foundation

struct Comida:Identifiable{
    let id: Int
    let tipo: String
    let votos: Double
}

struct Punto: Identifiable{
    let id: Int
    let x: Int
    let y: Double
    
    init( x: Int, y: Double) {
        self.id = x
        self.x = x
        self.y = y
    }
    
}
