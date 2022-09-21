//
//  OnboardingPage.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 22/09/22.
//

import SwiftUI

struct OnboardingPage: View {
    @StateObject var viewModel: NavigationViewModel
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct OnboardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage(viewModel: NavigationViewModel())
    }
}
