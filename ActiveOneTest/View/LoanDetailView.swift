//
//  LoanView.swift
//  ActiveOneTest
//
//  Created by Xavier Sotomayor on 2/3/24.
//

import Foundation

import SwiftUI

struct LoanDetailView: View {
    
    //@StateObject var viewModel = LoanDetailViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Button(action: {
          
            }, label: {
                HStack(spacing: 4) {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 14, alignment: .center)
                }
            })
            .frame(width: 50, height: 50, alignment: .center)
            .accentColor(.black)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(25)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 550, alignment: .topLeading)
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






