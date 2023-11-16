//
//  PhotoViewModel.swift
//  AppNasa
//
//  Created by Alumno on 22/09/23.
//

import Foundation
import SwiftUI

class PhotoViewModel : ObservableObject {
    @Published var a  = PhotoModel(title: "", description: "", url: "")
    @Published var isLoading = false // Agregamos la propiedad isLoading y la inicializamos en false
        


    
    func getPhotoData() async throws{
        isLoading = true // Antes de realizar la solicitud, establecemos isLoading en true
        //1. Obtener el objeto URL
        
        //guard let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&count=10")
        guard let url = URL(string: "https://xkcd.com/info.0.json")
        //guard let url = URL(string: "https://api.chucknorris.io/jokes/random")
        else{
                print("invalid url")
                return
                }
        
        //2. Preparar el request a la pagina http con la URL
        let urlRequest = URLRequest(url: url)
        
        //3. Realizar la llamada con URLSession
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else{
            print("error url")
            return
        }
        
        //4. Decodificar la informacion de formato JSON
        let results = try JSONDecoder().decode(PhotoModel.self, from: data)
        
        //print (results)
        
        //5. Utilizamos el thread principal para actualizar la variable de Photos
        DispatchQueue.main.async {
            self.a = results
            self.isLoading = false // Una vez que la imagen se ha cargado, establecemos isLoading en false
        }
        
        
        
    }
}
