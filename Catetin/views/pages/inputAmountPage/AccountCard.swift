//
//  AccountCard.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 18/09/22.
//

import Foundation
import SwiftUI

struct AccountCard: View {
    var account: AccountModel
    var body: some View {
        VStack() {
            HStack {
                Avatar()
                VStack(alignment: .leading, spacing: 0) {
                    Text(account.name).bold()
                    HStack {
                        HStack {
                            Image(account.bank).resizable()
                                .scaledToFit()
                                
                        }
                        .frame(width: 30, height: 26)
                        Text(account.accountNumber)
                            .font(.caption).padding(.trailing)
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                Spacer()
            }
            .padding(EdgeInsets(top: 32, leading: 16, bottom: 32, trailing: 16))
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(hex: 0xeaeaea))
                )
            .background(Color(hex: 0xffffff))
            .cornerRadius(16)
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
    }
}
