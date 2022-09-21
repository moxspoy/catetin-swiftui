//
//  NavigationViewModel.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 22/09/22.
//

import Foundation
import SwiftUI

class NavigationViewModel: ObservableObject {
    @Published var navigationPath = NavigationPath()
    
    func navigateToSplashPage() {
        navigationPath.append(NavigationPathEnum.Splash)
    }
    
    func navigateToOnboardingPage() {
        navigationPath.append(NavigationPathEnum.Onboarding)
    }
    
    func navigateToInputAmountPage() {
        navigationPath.append(NavigationPathEnum.InputAmount)
    }
    
    func navigateBack() {
        navigationPath.removeLast()
    }
    
    func navigateToRoot() {
        navigationPath = NavigationPath()
    }
}
