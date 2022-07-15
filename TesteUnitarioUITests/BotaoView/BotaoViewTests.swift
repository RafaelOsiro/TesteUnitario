//
//  TesteUnitarioUITests.swift
//  TesteUnitarioUITests
//
//  Created by Rafael Riki Ogawa Osiro on 13/07/22.
//

import XCTest

class BotaoViewTests: XCTestCase {
    
    private var view: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        self.view = XCUIApplication()
        self.view.launch()
    }
    
    override func tearDownWithError() throws {
        
        self.view = nil
    }
    
    func testTextField() {
        
        let presentViewButton = self.view.buttons["presentView"]
        presentViewButton.tap()
        
        let textoTextField = self.view.textFields["textoTextField"]
        textoTextField.tap()
        textoTextField.typeText("Irineu, você não sabe? Nem eu!")
        
        let adicionarButton = self.view.buttons["adicionarBotao"]
        adicionarButton.tap()
        
        let contadorTexto = self.view.tables.children(matching: .cell).count
        
        XCTAssertEqual(1, contadorTexto)
    }
}
