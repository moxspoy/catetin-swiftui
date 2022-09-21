//
//  ContentView.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 17/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: NavigationViewModel
    
    var body: some View {
        NavigationStack(path: $viewModel.navigationPath) {
            SplashPage(viewModel: viewModel)
                .navigationDestination(for: NavigationPathEnum.self) {route in
                    switch route {
                    case .Splash:
                        SplashPage(viewModel: viewModel)
                    case .Onboarding:
                        OnboardingPage(viewModel: viewModel)
                    case .InputAmount:
                        InputAmountPage(viewModel: viewModel)
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: NavigationViewModel())
    }
}
