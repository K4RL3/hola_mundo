//
//  nuevaPantalla.swift
//  pruebaHolaMundo
//
//  Created by alumno on 2/13/26.
//

import SwiftUI

struct nuevaPantalla: View {
    @State var nombreJugador = ""
    @State var colorCambiante: Color = .white
    @State var seDerroto = false
    
    var body: some View {
        
        
        TextField("jugador 1: ", text: $nombreJugador)
            .padding(10)
            .multilineTextAlignment(.center)
        
        Toggle("Cansado?", isOn: $seDerroto)
            .fixedSize(horizontal: true, vertical: true)
        if(seDerroto){
            Image("gatoDerrotado")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
        }
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white, colorCambiante]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
            ColorPicker("Elige tu color favorito", selection: $colorCambiante)
                    .bold(true)
                    .padding(60)
        }
    }
    
}

#Preview {
    nuevaPantalla()
}

