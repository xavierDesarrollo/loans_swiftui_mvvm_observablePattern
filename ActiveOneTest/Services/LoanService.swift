//
//  LoanService.swift
//  ActiveOneTest
//
//  Created by Xavier Sotomayor on 2/3/24.
//

import Foundation

final class LoanService {
    
    static func getLoanData(completion: @escaping (Result<Loan, Error>) -> Void) {
        
        let withMock = true
        
        if withMock {
            do {
                let loan = try JSONDecoder().decode(Loan.self, from: LoanMock().data.data(using: .utf8)!)
                completion(.success(loan))
            } catch let error {
                print("Error: \(error)")
                completion(.failure(error))
            }
            
            return
        }
        
        var request = URLRequest(url: URL(string: "URL")!)
        request.httpMethod = "GET"

        URLSession.shared.dataTask(with: request) { data, _, error in
            if let error = error {
                print("Error: \(error)")
                completion(.failure(error))
                return
            }
            do {
                let loan = try JSONDecoder().decode(Loan.self, from: LoanMock().data.data(using: .utf8)!)
                completion(.success(loan))
            } catch let error {
                print("Error: \(error)")
                completion(.failure(error))
            }

        }.resume()
    }
}
