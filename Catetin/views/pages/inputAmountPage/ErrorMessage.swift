//
//  ErrorMessage.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 18/09/22.
//

import Foundation
import SwiftUI

struct ErrorMessage: View {
    @Binding var message: String
    var body: some View {
        if message != "" {
            HStack {
                Text(message).foregroundColor(Color.red).font(.italic(.caption)())
                Spacer()
            }
            .padding(.leading)
        }
    }
}

