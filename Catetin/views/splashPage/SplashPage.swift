//
//  SplashPage.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 18/09/22.
//

import SwiftUI

struct SplashPage: View {
    @State var errorMessage: String = ""
    var body: some View {
        if (errorMessage != "") {
            let message = "Error while connecting to the Internet"
            VStack {
                Text(message).bold()
                Text(errorMessage).font(.caption)
                Button("Retry", action: {
                    requestGetAppInfo()
                }).padding(.top)
            }
        } else {
            LottieView(lottieFile: "flip_loading_animation")
                .frame(width: 120, height: 120)
                .onAppear() {
                    requestGetAppInfo()
                }
        }
    }
}


struct SplashPage_Previews: PreviewProvider {
    static var previews: some View {
        SplashPage(errorMessage: "")
    }
}
