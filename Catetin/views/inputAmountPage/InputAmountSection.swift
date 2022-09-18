//
//  InputAmountSection.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 18/09/22.
//

import Foundation
import SwiftUI

struct InputAmountSection: View {
    @Binding var amount: Int
    @FocusState private var isFocused: Bool
    
    var body: some View {
        return VStack(alignment: .leading) {
            Text("Jumlah Transfer")
                .padding(EdgeInsets(top: 16, leading: 16, bottom: -4, trailing: 16))
            
            HStack {
                Text("Rp")
                    .font(Font.system(size: 36))
                    .bold()
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -8))
                TextField(
                    "0",
                    value: $amount, formatter: NumberFormatter()
                )
                .font(Font.system(size: 36))
                .bold()
                .keyboardType(.numberPad)
                .focused($isFocused)
            }
            
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
        }
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                        .stroke(Color(hex: 0xeaeaea))
            )
        .padding(.horizontal)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.isFocused = true
                }
        }
        
    }
}
