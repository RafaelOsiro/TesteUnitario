//
//  BotaoView.swift
//  TesteUnitario
//
//  Created by Rafael Riki Ogawa Osiro on 14/07/22.
//

import SwiftUI

struct BotaoView: View {
    
    @State private var texto: String = ""
    @State private var textos = [String]()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Digite alguma coisa: ", text: $texto)
                        .textFieldStyle(.roundedBorder)
                        .accessibilityIdentifier("textoTextField")
                    
                    Button("Adicionar") {
                        self.textos.append(self.texto)
                    }
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(20)
                    .accessibilityIdentifier("adicionarBotao")
                }
                
                Spacer(minLength: 30)
                
                List(self.textos, id: \.self) { texto in
                    Text("\(texto)")
                }
                .listStyle(.plain)
            }
            .padding()
            .navigationBarTitle("Texto")
        }
    }
}

struct BotaoView_Previews: PreviewProvider {
    static var previews: some View {
        BotaoView()
    }
}
