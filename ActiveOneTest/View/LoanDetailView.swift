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
                Text("$\(String(loan.paymentDetails.amountDue))").font(.system(size: 30, design: .rounded).bold())
            }
            HStack(alignment: .center, spacing: 3) {
                Text("Next payment").font(.system(size: 14).bold()).foregroundStyle(.gray)
                Text("$\(loan.paymentDetails.nextPaymentDate)").font(.system(size: 15).bold())
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
        LoanDetailView()
    }
}






