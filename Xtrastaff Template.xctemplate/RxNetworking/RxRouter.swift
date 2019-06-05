//
//  V4WebRouter.swift
//  Remittance
//
//  Created by 8square i on 1/29/19.
//  Copyright © 2019 Eightsquare Pvt. Ltd. All rights reserved.
//


import Foundation
import UIKit

enum RxRouter {
    // MARK:- Main Base Url
    static let mainUrl = "https://eremitpreprod.mtradeasia.com/"
    
    case exchangeRate
    case refreshToken(params: [String: Any])
    
    
    // Config Urls
    var url: NSURL {
        switch self {
        case .refreshToken:
            return NSURL(string: RxRouter.mainUrl + "account/token/refresh")!
        case .exchangeRate:
            return NSURL(string: RxRouter.mainUrl + "api/list/exchangerate")!
        }
    }
    
    // Config Methods Type
    var method: String {
        switch self {
        case .refreshToken:
            return "POST"
        default:
            return "GET"
        }
        
    }
    
    // Config Headers
    var headers: Dictionary<String, String> {
        switch self {
            
        default:
            return ["Content-Type": "application/json",
                    "DeviceType": "IOS",
                    "DeviceKey": "",
                    "ApiVersion": "4"
            ]
        }
    }
    
    var parameters: Dictionary<String, Any> {
        switch self {
        case .refreshToken(let params):
            return params
        default: return [:]
        }
    }
    
}
