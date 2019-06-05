//
//  CustomConstructableRequest.swift
//  Remittance
//
//  Created by Praks on 1/9/19.
//  Copyright © 2019 Eightsquare Pvt. Ltd. All rights reserved.
//

import Foundation
protocol Router {
    var url:  NSURL { get }
    var method: String { get }
    var headers: Dictionary<String, String> { get }
    var parameters: Dictionary<String, Any> { get }
}

/** Set the Default Value */
extension Router {
    var method : String { return "GET" }
    var headers : Dictionary<String, String> { return Dictionary() }
    var parameters : Dictionary<String, Any> { return Dictionary()}
}

protocol ConstructableRequest: Router {
    func buildRequest() -> URLRequest?
}

extension ConstructableRequest {
    func buildRequest() -> URLRequest? {
        var request =  URLRequest(url: url as URL)
        if method != "GET" {
            request.httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: [])
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        }
        
        // TODO: Configure for other Methods (DELETE, PUT etc....)
        request.allHTTPHeaderFields = headers
        request.httpMethod = method
        return request
    }
}

struct WebRequest: ConstructableRequest {
    
    var router: RxRouter!
    
    var url: NSURL {
        return router.url
    }
    
    var method: String {
        return router.method
    }
    
    var parameters: Dictionary<String, Any> {
        return router.parameters
    }
    
    var headers: Dictionary<String, String> {
        return router.headers
    }
}
