//
//  LoanView.swift
//  ActiveOneTest
//
//  Created by Xavier Sotomayor on 2/3/24.
//

import SwiftUI

struct LoanView: View {
    
    @StateObject var viewModel = LoanViewModel()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 30) {
                if let loan = viewModel.loan {
                    Text("LOAN\nDETAILS").font(.system(size: 30, design: .rounded).bold())
                    HStack(alignment: .center, spacing: 3) {
                        Text("Left").font(.system(size: 14).bold()).foregroundStyle(.gray)
                        Text("$\(loan.loanDetails.remainingBalance)").font(.system(size: 15).bold())
                        Spacer()
                        Text("Amount Borrowed").font(.system(size: 14).bold()).foregroundStyle(.gray)
                        Text("$\(loan.loanDetails.amountBorrowed)").font(.system(size: 15).bold())
                    }
                    HStack(alignment: .center, spacing: 2) {
                        ProgressView(value: 100, total: 100)
                            .accentColor(.green)
                            .padding(EdgeInsets(top: 17, leading: 0, bottom: 0, trailing: 0))
                            .background(Color.green)
                            .cornerRadius(5)
                        ProgressView(value: 0, total: 100)
                            .frame(minWidth: 0, maxWidth: 27)
                            .accentColor(.green)
                            .padding(EdgeInsets(top: 17, leading: 0, bottom: 0, trailing: 0))
                            .background(Color.gray)
                            .cornerRadius(5)
                        ProgressView(value: 0, total: 100)
                            .frame(minWidth: 0, maxWidth: 27)
                            .accentColor(.green)
                            .padding(EdgeInsets(top: 17, leading: 0, bottom: 0, trailing: 0))
                            .background(Color.gray)
                            .cornerRadius(5)
                    }
                    VStack(alignment: .leading, spacing: 5) {
                        HStack(spacing: 5) {
                            ZStack {
                                VStack(alignment: .leading) {
                                    Text("Interest").font(.system(size: 12)).foregroundStyle(.gray)
                                    Spacer()
                                    Text("$\(String(loan.loanDetails.interestPaidToDate))").font(.system(size: 20).bold())
                                }
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 80, maxHeight: 80, alignment: .leading)
                                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                                .background(Color.white)
                                .cornerRadius(20)
                            }
                            ZStack {
                                VStack(alignment: .leading) {
                                    Text("Interest Rate").font(.system(size: 12)).foregroundStyle(.gray)
                                    Spacer()
                                    Text("\(String(loan.loanDetails.interestRate))%").font(.system(size: 20).bold())
                                }
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 80, maxHeight: 80, alignment: .leading)
                                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                                .background(Color.white)
                                .cornerRadius(20)
                            }
                        }
                        HStack(spacing: 5) {
                            ZStack {
                                VStack(alignment: .leading) {
                                    Text("Loan ID").font(.system(size: 12)).foregroundStyle(.gray)
                                    Spacer()
                                    Text("\(loan.loanDetails.loanID)").font(.system(size: 20).bold())
                                }
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 80, maxHeight: 80, alignment: .leading)
                                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                                .background(Color.white)
                                .cornerRadius(20)
                            }
                            ZStack {
                                VStack(alignment: .leading) {
                                    HStack {
                                        Spacer()
                                        NavigationLink(destination: LoanDetailView()) {
                                            Text("\(Image(systemName: "arrow.right"))")
                                            .frame(width: 35, height: 35, alignment: .center)
                                            .accentColor(.white)
                                            .background(Color.black.opacity(0.2))
                                            .cornerRadius(18)
                                        }
                                    }
                                    HStack {
                                        Text("Upcoming\npayments").font(.system(size: 14).bold()).foregroundStyle(.white)
                                    }
                                }
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 80, maxHeight: 80, alignment: .leading)
                                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                                .background(Color.loanBackgroundPaymentButton)
                                .cornerRadius(20)
                            }
                        }
                    }
                }
            }
            .task {
                await viewModel.getLoanData()
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 550)
            .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
            .background(Color.loanBackground)
            .cornerRadius(30)
        }
    }
}

struct LoanView_Previews: PreviewProvider {
    static var previews: some View {
        LoanView()
    }
}
