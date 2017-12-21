//
//  AddColonsTests.swift
//  AddColonsTests
//
//  Created by Josiah Mory on 12/21/17.
//  Copyright © 2017 kickinbahk Productions. All rights reserved.
//

import XCTest
@testable import AddColons

class AddColonsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testWhenGivenStringItReturnsString() {
        let stringMutator = StringMutator()
        let lettersString = "A"
        
        XCTAssertEqual(stringMutator.parseString(str: lettersString), lettersString, "When given string, it is returned")
    }

    func testInsertColonAfter2Chars() {
        let stringMutator = StringMutator()
        let passed = "AAB"
        let expected = "AA:B"
        
        XCTAssertEqual(stringMutator.parseString(str: passed), expected, "Tests that colon is inserted after 2 characters when passing in string")
    }
    
    func testIfGivenLongerOddStringColonIsInsertedAfterEvery2Characters() {
        let stringMutator = StringMutator()
        let passed = "AABBCCD"
        let expected = "AA:BB:CC:D"
        
        XCTAssertEqual(stringMutator.parseString(str: passed), expected, "If given long odd string, colon is inserted after every 2 characters")
    }
    
    func testStringDoesNotEndWithColon() {
        let stringMutator = StringMutator()
        let passed = "AA"
        let expected = "AA"
        
        XCTAssertEqual(stringMutator.parseString(str: passed), expected, "Tests string does not end with colon")
    }
    
    func testIfGivenLongerEvenStringColonIsNotInsertedAtEnd() {
        let stringMutator = StringMutator()
        let passed = "AABBCCDD"
        let expected = "AA:BB:CC:DD"
        
        XCTAssertEqual(stringMutator.parseString(str: passed), expected, "If given long even string, does not end with colon")
    }
    
}






