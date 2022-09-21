//
//  SplashPageExtension.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 21/09/22.
//

import Foundation

extension SplashPage {
    func requestGetAppInfo(completionHandler:@escaping (AppInfoModel) -> Void) {
        requestAPIV1(url: Endpoints().APP_INFO).responseDecodable(of: AppInfoModel.self) { response in
            switch response.result {
            case .success(let appInfo):
                print(appInfo.customerFriendPhoneNumber)
                completionHandler(appInfo)
            case .failure(let error):
                self.errorMessage = error.localizedDescription
            }
        }
    }
}
