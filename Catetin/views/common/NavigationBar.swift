//
//  NavigationBar.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 18/09/22.
//

import Foundation
import SwiftUI

struct NavigationBar: View {
    var title: String
    var body: some View {
        HStack {
            Image(systemName: "chevron.backward")
                .imageScale(.large)
                .foregroundColor(Color.black)
            Text(title).bold()
            Spacer()
        }
        .padding()
        .background(Color.white)
    }
}
