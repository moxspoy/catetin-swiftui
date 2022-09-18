//
//  ContentView.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 18/09/22.
//

import Foundation
import SwiftUI

extension InputAmountContinueButton {
    func continueInputAmount (amount: Int) -> Void {
        if (amount < MINIMUM_AMOUNT) {
            self.errorMessage = "Amount minimum is " + String(MINIMUM_AMOUNT)
            return
        }
        
        if (amount > MAXIMUM_AMOUNT) {
            self.errorMessage = "Amount maximum is " + String(MAXIMUM_AMOUNT)
            return
        }
        
        self.errorMessage = ""
        print("Amount is valid, Rp" + String(amount))
    }
}
