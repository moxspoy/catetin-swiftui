//
//  Button.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 18/09/22.
//

import Foundation
import SwiftUI

struct InputAmountContinueButton: View {
    @Binding var amount: Int
    @Binding var errorMessage: String
    var body: some View {
        Button(action: {
            self.continueInputAmount(amount: amount)
        }) {
            Text("Continue")
                .padding()
                .frame(maxWidth: .infinity, alignment: .center)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                                .stroke(Color(hex: 0xeaeaea))
                    )
                .foregroundColor(Color(.white))
                .bold()
            .background(Color(.orange))
            .cornerRadius(16)
            Spacer()
        }
        .padding()
    }
}
