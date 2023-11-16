//
//  PhotoModel.swift
//  AppNasa
//
//  Created by Alumno on 22/09/23.
//

import Foundation


struct PhotoModel : Decodable, Identifiable{
    var id = UUID()
    var title : String
    var description : String
    var url : String
    
    
    enum  CodingKeys : String, CodingKey{
        case title
        case description = "explanation"
        case url
    }
}
