//
//  PreEscaneo.swift
//  App-DiabeticFoot
//
//  Created by Alumno on 04/11/23.
//

import SwiftUI

struct PreEscaneo: View {
    @State private var ScanDate = Date()
    @State private var Rp: String = ""
    @State private var isChecked = false
    @State private var selectedOption = "Opción 1"
    let options = ["Opción 1", "Opción 2", "Opción 3", "Opción 4"]
    
    @State private var painLevel = 0.0
    
    var body: some View {
        
        
        
        Section(header: Text("Selecciona la fecha de hoy")) {
            DatePicker("Fecha", selection: $ScanDate, displayedComponents: .date)
                .datePickerStyle(.wheel)
        }
        Text("Pregunta 1")
        HStack {
            Toggle(isOn: $isChecked){}
            Toggle(isOn: $isChecked){}
            Toggle(isOn: $isChecked){}
        }
        Text("Pregunta 2")
        TextField(
            "Escribe tu respuesta",
            text: $Rp
        )
        VStack {
            Text("Pregunta 3")
            
            Picker("Selecciona una opción", selection: $selectedOption) {
                ForEach(options, id: \.self) { option in
                    Text(option).tag(option)
                }
            }
            .pickerStyle(MenuPickerStyle())
            
        }
        
        Text("Dolor")
        VStack {
            Slider(value: $painLevel, in: 1.0...10.0, step: 1.0)
                        .padding()

                Text("Nivel de dolor: \(Int(painLevel))")
            }
        
        Button(action: {
            print("Respuesta seleccionada: \(selectedOption)")
        }) {
            Text("Guardar respuesta")
        }
        
    }
    
}

struct PreEscaneo_Previews: PreviewProvider {
    static var previews: some View {
        PreEscaneo()
    }
}
