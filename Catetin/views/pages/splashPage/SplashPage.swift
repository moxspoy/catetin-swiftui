//
//  SplashPage.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 18/09/22.
//

import SwiftUI

struct SplashPage: View {
    @State var errorMessage: String = ""
    @StateObject var viewModel: NavigationViewModel
    var body: some View {
        if (errorMessage != "") {
            let message = "Error while connecting to the Internet"
            VStack {
                Text(message).bold()
                Text(errorMessage).font(.caption)
                Button("Retry", action: {
                    requestGetAppInfo {appInfo in
                        viewModel.navigateToOnboardingPage()
                    }
                }).padding(.top)
            }
        } else {
            LottieView(lottieFile: "flip_loading_animation")
                .frame(width: 120, height: 120)
                .onAppear() {
                    requestGetAppInfo {appInfo in
                        viewModel.navigateToOnboardingPage()
                    }
                }
        }
    }
}


struct SplashPage_Previews: PreviewProvider {
    static var previews: some View {
        SplashPage(errorMessage: "", viewModel: NavigationViewModel())
    }
}
