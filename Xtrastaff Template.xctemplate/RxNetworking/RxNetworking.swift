//
//  RxNetworking.swift
//  Remittance
//
//  Created by Praks on 1/9/19.
//  Copyright © 2019 Eightsquare Pvt. Ltd. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa


class RxNetworking {
    
    let disposeBag = DisposeBag()
    static let shared = RxNetworking()
    
    func dataTask(with request: RxRouter) -> Observable<RxNetworkResponse?> {
        let webRequest = WebRequest.init(router: request).buildRequest()
        print("""
            Request method :\(String(describing: webRequest?.httpMethod))
            Request url :\(String(describing: webRequest?.url?.absoluteString))
            Request headers :\(String(describing: webRequest?.allHTTPHeaderFields))"
            """)
        
        if let bodyData = webRequest?.httpBody {
            print("Request body :\(Utils.serializeJSON(data: bodyData) as? [String: Any])")
            
        }
        return Observable.create { observer in
            let task = URLSession.shared.dataTask(with: webRequest!) { data, response, error in
                print("RxNetworking shared.dataTask called")
                
                if let urlResponse = response as? HTTPURLResponse {
                    
                    print("RxNetworking statusCode :\(urlResponse.statusCode)")
                    
                    if let data = data {
                        let datastring = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
                      // print("response data :\n \(Utils.serializeJSON(data: data) as? [String: Any])")
                        switch urlResponse.statusCode {
                            
                        // Perform Unauthorised
//                        case HTTPStatusCode.notFound.rawValue:
//                            self.performUnAuthorisedHandler()
                            
                        // Perform Force Update
//                        case HTTPStatusCode.upgradeRequired.rawValue:
//                            self.performUpdateHandler()
                            
                        // Handle All other error that comes as Data.
                        case 400...500:
                            print(Utils.serializeJSON(data: data))
                            let error = NSError(domain: "Some unknown error occured.", code: urlResponse.statusCode, userInfo: nil)
                            
                            observer.onNext(.failure(error: error))
                            observer.onCompleted()
                            
                            // For default return data
                        // The one and only case for Success.
                        default:
                            observer.onNext(.success(data: data))
                            observer.onCompleted()
                        }
                    }
                } else {
                    print("RxNetworking : NO DATA")
                }
                
                // Send error
                if let error = error {
                    print("RXNetworking there is an error :\(error.localizedDescription)")
                    observer.onNext(.failure(error: error))
                    observer.onCompleted()
                }
            }
            task.resume()
            return Disposables.create { task.cancel() }
        }
    }
    
}


enum RxDownloadResponse {
    case success(path: String?)
    case failure(error: Error?)
    
    var successResponse: (String?) {
        if case let .success(path: path) = self {
            return path
        }
        return nil
    }
    
    var failResponse: (Error?) {
        if case let .failure(error: error) = self {
            return error
        }
        return nil
    }
}
