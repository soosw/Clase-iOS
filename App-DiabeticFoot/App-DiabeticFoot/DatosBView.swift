//
//  DatosBView.swift
//  App-DiabeticFoot
//
//  Created by Scarlet on 04/11/23.
//

import SwiftUI

struct DatosBView: View {
    @State private var BirthDate = Date()
    @State private var Dxate = Date()
    @State private var Shoe: String = ""
    @State private var selectedSexo = "Masculino"
        let sexos = ["Masculino", "Femenino", "Otro"]
    var body: some View {
        NavigationLink(
            destination:
                UnidadesView(),
                label: {
                    Text("Regresar")
                        }
        )
        
        
        Text("Sexo")
                VStack {
                    Picker("Sexo:", selection: $selectedSexo) {
                        ForEach(sexos, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                }

    
        Text("Fecha de nacimiento")
        Form {
            DatePicker("Fecha de nacimiento", selection: $BirthDate, displayedComponents: .date)
                }
        Text("Fecha de Diagnóstico")
        Form {
            DatePicker("Fecha de Diagnóstico", selection: $Dxate, displayedComponents: .date)
                }
        Text("Calzado")
        TextField( "cm",
                    text: $Shoe
                )
        NavigationLink(
            destination:
                Tratamiento1View(),
                label: {
                    Text("Siguiente")
                        }
        )
        
    }
}

struct DatosBView_Previews: PreviewProvider {
    static var previews: some View {
        DatosBView()
    }
}
