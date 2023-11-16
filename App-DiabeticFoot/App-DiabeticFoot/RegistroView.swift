//
//  RegistroView.swift
//  App-DiabeticFoot
//
//  Created by Scarlet on 04/11/23.
//

import SwiftUI



struct RegistroView: View {
    @State private var Name: String = ""
    @State private var LastName: String = ""
    @State private var Username: String = ""
    @State private var Email: String = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {
                TextField(
                    "Nombre",
                    text: $Name
                )
                .disableAutocorrection(true)
                TextField(
                    "Apellido",
                    text: $LastName
                )
                .disableAutocorrection(true)
            TextField(
                "Usuario",
                text: $Username
            )
            .disableAutocorrection(true)
            TextField(
                "Correo",
                text: $Email
            )
            .disableAutocorrection(true)
            }
            .textFieldStyle(.roundedBorder)
        VStack {
            //Button("Siguiente", action: signIn)
            //Button("Log In", action: register)
            NavigationLink(
                destination:
                    InicioSesion(),
                    label: {
                        Text("Siguiente")
                            }
            )
            NavigationLink(
                destination:
                    UnidadesView(),
                    label: {
                        Text("Log In")
                            }
            )
        }
        .buttonStyle(.bordered)
    }
            
    
}

struct RegistroView_Previews: PreviewProvider {
    static var previews: some View {
        RegistroView()
    }
}
