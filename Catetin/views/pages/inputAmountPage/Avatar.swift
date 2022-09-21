//
//  Avatar.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 18/09/22.
//

import Foundation
import SwiftUI

struct Avatar: View {
    var body: some View {
        Image("default_avatar")
            .resizable()
            .clipShape(Circle())
            .frame(width: 60, height: 60)
            .background(Color.white)
    }
}
