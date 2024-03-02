//
//  LoanViewModel.swift
//  ActiveOneTest
//
//  Created by Xavier Sotomayor on 2/3/24.
//

import SwiftUI

class LoanViewModel: ObservableObject {
    
    @Published var loan: Loan!
    
    @MainActor
    func getLoanData() async {
        LoanService.getLoanData { result in
            switch result {
            case let .success(loan):
                self.loan = loan
            case .failure(_):
                self.loan = nil
            }
        }
    }
    
    func goToDetails() {
        print("LoanDetailsView")
    }
}
