//
//  RxNetworkResponse.swift
//  Remittance
//
//  Created by Praks on 1/10/19.
//  Copyright © 2019 Eightsquare Pvt. Ltd. All rights reserved.
//

import Foundation

enum RxNetworkResponse {
    case success(data: Data?)
    case failure(error: Error?)
    case urlResponse(urlResponse: HTTPURLResponse?)
    

    var successResponse: (Data?) {
        if case let .success(data: data) = self {
            return data
        }
        return nil
    }
    
    var failResponse: (Error?) {
        if case let .failure(error: error) = self {
            return error
        }
        return nil
    }
    
    var urlResponse: (HTTPURLResponse?) {
        if case let .urlResponse(urlResponse: urlResponse) = self {
            return urlResponse
        }
        return nil
    }
}

/*
 EXAMPLE
 
 func setupData() {
 let router = WebRouter.listExchageRate
 let successResponse = RxNetworking.shared.dataTask(with: router)
 .map { $0?.successResponse }.unwrap()
 let failuresResponse = RxNetworking.shared.dataTask(with: router)
 .map { $0?.failResponse }.unwrap()
 
 successResponse
 .subscribe { (successData) in
 print(successData.element)
 guard let data = successData.element as? Data else { return }
 print(Utils.decodeJSON(type: ExchanteRates.self, from: data) as? ExchanteRates as Any)
 }.disposed(by: disposeBag)
 
 
 failuresResponse
 .subscribe { (failData) in
 if let failure = failData.element {
 self.showAlert(title: "", message: failure.localizedDescription)
 }
 }.disposed(by: disposeBag)
 }
 */
