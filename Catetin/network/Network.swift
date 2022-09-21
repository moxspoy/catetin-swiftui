//
//  Network.swift
//  Catetin
//
//  Created by FLP-9-Baehaqi on 18/09/22.
//

import Foundation
import Alamofire

var API_KEY = "EDdwAw954mv4VyjpXLXZ5pRehJNXNmhsqdMbPFyaDq28aAhz";
var BASE_URL = "https://domestic-dev-box.flip.id/api/"
var URL_V1 = "v1/"
var URL_V2 = "v2/"
var CONTENT_TYPE_URL_ENCODED = "application/x-www-form-urlencoded";
var LANGUAGE = "en-ID"

let headers: HTTPHeaders = [
    "Authorization": "Basic VXNlcm5hbWU6UGFzc3dvcmQ=",
    "Accept": "application/json",
    "Content-Type": CONTENT_TYPE_URL_ENCODED,
    "api-key": API_KEY,
    "Content-Language": LANGUAGE
]

public func requestAPI(url: String, method: HTTPMethod = .post) -> DataRequest {
    let path = BASE_URL + url;
    return AF.request(path, headers: headers).validate()
}


public func requestAPIV1(url: String, method: HTTPMethod = .post) -> DataRequest {
    let path = BASE_URL + URL_V1 + url;
    print(path);
    return AF.request(path, headers: headers).validate()
}
