//
//  PhotoModel.swift
//  AppNasa
//
//  Created by Alumno on 22/09/23.
//

import Foundation

//struct PhotoModel : Decodable{
struct PhotoModel : Decodable, Identifiable{
    var id = UUID()
    var title : String
    var description : String
    var url : String
    var date : String
    
    enum  CodingKeys : String, CodingKey{
        case title = "safe_title"
        //case description = "explanation"
        case description = "alt"
        //case url
        case url = "img"
        case date = "day"
    }
}
