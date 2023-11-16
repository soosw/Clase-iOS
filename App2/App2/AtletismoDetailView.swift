//
//  AtletismoDetailView.swift
//  App2
//
//  Created by Alumno on 21/09/23.
//

import SwiftUI

struct AtletismoDetailView: View {
    @EnvironmentObject var atletismoVM : AtletismoViewModel
    @State private var animatingButton = false
    @State private var animatingImage = false
    
    let competencia: AtletismoModel
    
    var body: some View {
        
        VStack{
            Image(competencia.nombreImagen)
                .resizable()
                .scaledToFit()
                .frame(width: 250)
                .clipShape(Circle())
                .shadow(radius: animatingImage ? 3 : 0)
                .offset(y: animatingImage ? -60 : -50)
                .onTapGesture {
                        withAnimation(.easeInOut(duration: 1.0)) { // Cambia la animación aquí
                            animatingImage.toggle()
                        }
                    }
            
            Text(competencia.titulo)
                //.font(.title)
                .foregroundColor(.red)
                .offset(y: -20)
                .font(Font.custom("Chalkduster",size: 30))
                .bold()
                .opacity(animatingImage ? 0 : 1) // Inicialmente oculto
                    .onAppear {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            animatingImage.toggle() // Hacer aparecer el título
                        }
                    }
            Image(systemName: competencia.IsFavorite ? "star.fill" : "star")
                .foregroundColor(.yellow)
                .onTapGesture {
                    atletismoVM.arrCompetencias[
                        atletismoVM.arrCompetencias.firstIndex(of: competencia) ?? 0].IsFavorite.toggle()
                }
            
            
            Text(competencia.description)
                .multilineTextAlignment(.center)
                .padding()
                .font(Font.custom("Chalkduster",size: 16))
            
            //Link(destination: URL(string: competencia.urlVideo)!, label: {
              //  Label("video", systemImage: "play.tv.fill")
            //})
            Button(action: {
                // Acción del botón
                //withAnimation(.easeInOut(duration: 1)){
                withAnimation(.interpolatingSpring(stiffness: 50, damping: 5)) {
                    animatingButton.toggle()
                }
            }) {
                VStack {
                    Link(destination: URL(string: competencia.urlVideo)!) {
                        Label("video", systemImage: "play.tv.fill")
                            .font(Font.custom("Chalkduster",size: 12))
                    }
                }
                .frame(width: 170, height: 70)
                .foregroundColor(.indigo)
                .background(LinearGradient(colors: [.gray, .white], startPoint: .bottomLeading, endPoint: .topTrailing))
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .shadow(radius: 3)
                .opacity(animatingButton ? 1.0 : 0.7)
                .scaleEffect(animatingButton ? 1.5 : 1.0)
            }
            .padding()

        }
        
        
    }
}

struct AtletismoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AtletismoDetailView(competencia: AtletismoModel.defaultCompetencia)
    }
}
