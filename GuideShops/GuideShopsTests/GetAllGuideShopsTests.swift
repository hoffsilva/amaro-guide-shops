//
//  GuideShopsTests.swift
//  GuideShopsTests
//
//  Created by Hoff Henry Pereira da Silva on 19/12/20.
//

import XCTest
import Combine
import Resolver
@testable import GuideShops

class GetAllGuideShopsTests: XCTestCase {
    
    private var cancellables = Set<AnyCancellable>()
    
    override func setUp() {
        Resolver.register {
            GetAllGuideShopsRepositoryMock(withSuccess: true)
        }.implements(GetAllGuideShopsRepository.self)
    }

    func test_getAllGuideShops_shouldFetchGuideShopsFromGetAllGuideShopsRepository() {
        let expect = expectation(description: "Should has two objects")
        let expectedValue = 2
        let sut = GetAllGuideShopsImpl()
        sut.getAllGuideShopsRepository = Resolver.resolve(GetAllGuideShopsRepositoryMock.self)
        sut.getAllGuideShops().sink { _ in } receiveValue: { (data) in
            XCTAssertEqual(data.count, expectedValue)
            expect.fulfill()
        }.store(in: &cancellables)
        waitForExpectations(timeout: 1, handler: nil)
    }

}
