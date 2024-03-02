//
//  LoanViewModelTest.swift
//  ActiveOneTestTests
//
//  Created by Xavier Sotomayor on 2/3/24.
//

import XCTest
@testable import ActiveOneTest

final class LoanViewModelTest: XCTestCase {
    
    var viewModel: LoanViewModel!

    override func setUpWithError() throws {
        viewModel = LoanViewModel()
    }

    override func tearDownWithError() throws {
        viewModel = nil
    }

    func testLoanViewModel_getLoanData() async throws {
        await viewModel.getLoanData()
        XCTAssertNotNil(viewModel.loan)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
