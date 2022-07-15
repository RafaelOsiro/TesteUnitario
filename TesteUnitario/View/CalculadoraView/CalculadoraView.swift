//
//  ContentView.swift
//  TesteUnitario
//
//  Created by Rafael Riki Ogawa Osiro on 13/07/22.
//

import SwiftUI

struct CalculadoraView: View {
    
    @ObservedObject var calculadoraViewModel: CalculadoraViewModel
    
    var body: some View {
        VStack{
            Button("Texto") {
                self.calculadoraViewModel.botaoView.toggle()
            }
            .padding(30)
            .foregroundColor(.black)
            .background(.red)
            .cornerRadius(15)
            .accessibilityIdentifier("presentView")
        }.sheet(isPresented: self.$calculadoraViewModel.botaoView) {
            BotaoView()
        }
    }
}

struct CalculadoraView_Previews: PreviewProvider {
    static var previews: some View {
        CalculadoraView(calculadoraViewModel: CalculadoraViewModel())
    }
}
