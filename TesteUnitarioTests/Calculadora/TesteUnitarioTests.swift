//
//  TesteUnitarioTests.swift
//  TesteUnitarioTests
//
//  Created by Rafael Riki Ogawa Osiro on 13/07/22.
//

import XCTest
@testable import TesteUnitario

class CalculadoraTest: XCTestCase {
    
    private var viewModel: CalculadoraViewModel!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        viewModel = CalculadoraViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        viewModel = nil
    }
    
    func testSomar() {
        let resultado = viewModel.somar(x: 1, y: 5)
        
        XCTAssertEqual(resultado, 6, "A soma 1 + 6 não é \(resultado)")
    }
    
    func testSubtrair() {
        let resultado = viewModel.subtrair(x: 5, y: 5)
        
        XCTAssertEqual(resultado, 0, "A subtração de 5 - 5 não é \(resultado)")
    }
    
    func testMultiplicar() {
        let resultado = viewModel.multiplicar(x: 9, y: 9)
        
        XCTAssertEqual(resultado, 81, "A multiplicação de 9 * 9 não é \(resultado)")
    }
    
    func testDividir() {
        let resultado = viewModel.dividir(x: 4, y: 4)
        
        XCTAssertEqual(resultado, 1, "A divisão de 4 / 4 não é \(resultado)")
    }
}
