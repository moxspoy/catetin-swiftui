//
//  ContentView.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 17/09/22.
//

import SwiftUI

struct ContentView: View {
    @State public var amount: Int = 0
    @State public var errorMessage: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationBar(title: "Masukkan Jumlah Transfer")
            ScrollView {
                AccountCard(account: AccountModel(id: 10, bank: "bca", bankCode: "bca", accountNumber: "9728897288", name: "M Nurilman Baehaqi", accountHolder: "M Nurilman Baehaqi", accountType: "bank_account", status: "SUCCESS"))
                InputAmountSection(amount: self.$amount)
                ErrorMessage(message: $errorMessage)
            }
            .background(Color("lightGrayBackground"))
            InputAmountContinueButton(amount: $amount, errorMessage: $errorMessage)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
