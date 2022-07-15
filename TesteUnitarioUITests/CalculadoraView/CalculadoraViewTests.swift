//
//  TelaInicialTests.swift
//  TesteUnitarioUITests
//
//  Created by Rafael Riki Ogawa Osiro on 15/07/22.
//

import XCTest

class CalculadoraViewTests: XCTestCase {
    
    private var calculadoraView: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        self.calculadoraView = XCUIApplication()
        self.calculadoraView.launch()
    }
    
    override func tearDown() {
        
        self.calculadoraView = nil
    }
    
    func testBotaoPresentationSheet() {
        
        var count = 0
        
        let presentViewButton = self.calculadoraView.buttons["presentView"]
        presentViewButton.tap()
        count += 1
                        
        XCTAssertGreaterThan(count, 0)
    }
}
