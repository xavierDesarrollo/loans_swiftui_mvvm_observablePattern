//
//  LoanMock.swift
//  ActiveOneTest
//
//  Created by Xavier Sotomayor on 2/3/24.
//

import Foundation

struct LoanMock {
    let data: String = """
{
    "email": "example@example.com",
    "paymentDetails": {
        "dueInDays": 2,
        "amountDue": 325.93,
        "nextPaymentDate": "2024-02-24",
        "paymentProgress": {
            "currentPaymentNumber": 8,
            "totalPayments": 10
        }
    },
    "loanDetails": {
        "loanID": "JMI-923429",
        "remainingBalance": 652,
        "amountBorrowed": 3250,
        "interestPaidToDate": 319.77,
        "interestRate": 9.9,
        "maxCreditAmount": 10000,
        "repaymentDay": 12,
        "lastFourPaymentCard": "7284",
        "numberOfDocuments": 4
    }
}
"""
}
