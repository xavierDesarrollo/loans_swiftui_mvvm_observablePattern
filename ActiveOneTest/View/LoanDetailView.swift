//
//  LoanView.swift
//  ActiveOneTest
//
//  Created by Xavier Sotomayor on 2/3/24.
//

import SwiftUI

struct LoanDetailView: View {
    var loan: Loan!
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            VStack(alignment: .leading) {
                Text("Due in \(loan.paymentDetails.dueInDays) days").font(.system(size: 14).bold()).foregroundStyle(.gray)
                HStack(alignment: .bottom, spacing: 0) {
                    Text("$\(String(String(loan.paymentDetails.amountDue).split(separator: ".").first!))").font(.system(size: 30, design: .rounded).bold())
                    Text(".\(String(String(loan.paymentDetails.amountDue).split(separator: ".").last!))").font(.system(size: 25, design: .rounded).bold()).foregroundStyle(.gray)
                    Spacer()
                    Image(systemName: "creditcard")
                        .resizable()
                        .frame(width: 50, height: 40)
                }
            }
            HStack(alignment: .center, spacing: 3) {
                Text("Next payment").font(.system(size: 14).bold()).foregroundStyle(.gray)
                Text("\(loan.paymentDetails.nextPaymentDate)").font(.system(size: 15).bold())
                Spacer()
                Text("\(loan.paymentDetails.paymentProgress.currentPaymentNumber)").font(.system(size: 15).bold())
                Text("of \(loan.paymentDetails.paymentProgress.totalPayments) payments").font(.system(size: 14).bold()).foregroundStyle(.gray)
            }
            Button(action: {
                        
            }) {
                Text("Make a payment").font(.system(size: 14).bold()).foregroundStyle(.white)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50, alignment: .center)
            .background(Color.loanBackgroundPaymentButton)
            .cornerRadius(25)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 550, alignment: .center)
        .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
        .background(Color.loanBackground)
        .cornerRadius(30)
    }
    
}

struct LoanDetailView_Previews: PreviewProvider {
    static var previews: some View {
        var paymentProgress = PaymentProgress(currentPaymentNumber: 9, totalPayments: 10)
        var paymentDetails = PaymentDetails.init(dueInDays: 2, amountDue: 395.93, nextPaymentDate: "2024-02-24", paymentProgress: paymentProgress)
        var loanDetails = LoanDetails(loanID: "", remainingBalance: 1, amountBorrowed: 2, interestPaidToDate: 3.0, interestRate: 4.0, maxCreditAmount: 5, repaymentDay: 6, lastFourPaymentCard: "", numberOfDocuments: 7)
        var loan = Loan(email: "", paymentDetails: paymentDetails, loanDetails: loanDetails)
        LoanDetailView(loan: loan)
    }
}






