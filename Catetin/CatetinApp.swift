//
//  CatetinApp.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 17/09/22.
//

import SwiftUI

@main
struct CatetinApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: NavigationViewModel())
        }
    }
}
