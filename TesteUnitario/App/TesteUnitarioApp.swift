//
//  TesteUnitarioApp.swift
//  TesteUnitario
//
//  Created by Rafael Riki Ogawa Osiro on 13/07/22.
//

import SwiftUI

@main
struct TesteUnitarioApp: App {
    
    @ObservedObject var viewModel = CalculadoraViewModel()
        
    var body: some Scene {
        WindowGroup {
            CalculadoraView(calculadoraViewModel: self.viewModel)
        }
    }
}
