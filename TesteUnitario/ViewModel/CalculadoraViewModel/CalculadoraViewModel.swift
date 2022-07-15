//
//  TestViewModel.swift
//  TesteUnitario
//
//  Created by Rafael Riki Ogawa Osiro on 14/07/22.
//

import Foundation

class CalculadoraViewModel: ObservableObject {
    
    @Published var botaoView = false
    
    func somar (x: Int, y: Int) -> Int {
        return x + y
    }
    
    func subtrair (x: Int, y: Int) -> Int {
        return x - y
    }
    
    func multiplicar (x: Int, y: Int) -> Int {
        return x * y
    }
    
    func dividir (x: Int, y: Int) -> Int {
        return x / y
    }
}
