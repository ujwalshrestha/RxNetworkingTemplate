//
//  WebService.swift
//  mRewards
//
//  Created by Braindigit on 2/15/17.
//  Copyright © 2017 Braindigit.com. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import RxAlamofire
import RxSwift

let baseURL = "https://vrewardsapi.simpal.com/"
let imageBaseURL = "https://vrewards.simpal.com/"

enum APIConfig {
    case accessToken
    case userLogin
    case userLogout
    case verifyCode
    case sendVerificationCode
    case resetPassword
    case userRegistration
    case sendPasswordResetCode
    case changePassword
    case fetchInterest
    case fetchState
    case fetchAds
    case fetchSeenAds
    case viewedAds
    case updateSeenAds
    case updateChannelSeen
    case updateOfflineSeen
    case fetchAdDetails
    case fetchUserEarning
    case updateProfile
    case fetchTransactionHistory
    case fetchSettings
    case updateSettings
    case termsConditions
    case aboutApp
    case brand
    case brandAds
    case fetchPaymentGateways
    case savePaymentAccount
    case userPaymentAccount
    case userPaymentAccountSetDefaut
    case userPaymentAccountDelete
    case userWithdraw
    case fetchAdsByCSV
    case updateUserLocation
    case swicthToLogin
    case logout
    case userEarning
    case fetchCoupons
    case fetchUserCoupons
    case saveCoupon
    case deleteUserCoupon
    case deleteMultipleUserCoupon
    case supportRequest
    case rewardLog
    case paymentInformation
    case ticketSubject
    case supportTickets
    case supportTicketDetail
    case createTicket
    case solveTicket
    case seenCount
    
    func urlPath(_ offset: Int? = nil, limit: Int? = nil, appUserID: String? = nil, brandId: Int? = nil, statusId: Int? = nil, startDate: String? = nil, endDate: String? = nil, appId: String? = nil) -> String {
        switch self {
        case .seenCount:
            return baseURL+"api/v1/ads/seenadscount?appUserId="
        case .accessToken:
            return baseURL+"/auth/token"
        case .userLogin:
            return baseURL+"/api/v1/users/login"
        case .userLogout:
            return baseURL+"/Login/Login.svc/UserLogout"
        case .userRegistration:
            return baseURL+"api/v1/users/register"
        case .updateProfile:
            return baseURL+"api/v1/users/update"
        case .fetchState:
            return baseURL+"/api/v1/misc/states?appId="
        case .fetchInterest:
            return baseURL+"/api/v1/interests?appId="
        case .fetchAds:
            return baseURL+"api/v1/ads?offset=\(offset!)&limit=\(limit!)&appUserId=\(appUserID!)"
        case .fetchSeenAds:
            return baseURL+"/api/v1/ads/seen?offset=\(offset!)&limit=\(limit!)&appUserId=\(appUserID!)"
        case .updateSeenAds:
            return baseURL+"/api/v1/ads/updateseen"
        case .updateChannelSeen:
            return baseURL+"api/v1/ads/channels/updateseen"
        case .updateOfflineSeen:
            return baseURL+"/api/v1/ads/offline/updateseens"
        case .fetchAdDetails:
            return baseURL+"/UserRegistration/UserRegistration.svc/RegisterUser"
        case .fetchUserEarning:
            return baseURL+"/userVerification/UserVerification.svc/VerifiyAccount"
        case .fetchTransactionHistory:
            return baseURL+"/api/v1/transactions/lists?appUserId=\(appUserID!)&offset=\(offset!)&limit=\(limit!)&statusId=\(statusId!)&startDate=\(startDate!)&endDate=\(endDate!)"
        case .fetchSettings:
            return baseURL+"api/v1/users/settings?appUserId="
        case .updateSettings:
            return baseURL+"/api/v1/users/settings/update"
        case .termsConditions:
            return baseURL+"/api/v1/misc/termsandconditions?appId="
        case .aboutApp:
            return baseURL+"/api/v1/misc/aboutapp?appId="
        case .brand:
            return baseURL+"/api/v1/brands?appUserId=\(appUserID!)"
        case .brandAds:
            return baseURL+"/api/v1/ads/brand?offset=\(offset!)&limit=\(limit!)&appUserId=\(appUserID!)&brandId=\(String(describing: brandId))"
        case .fetchPaymentGateways:
            return baseURL+"/api/v1/transactions/paymentgateways?appId="
        case .savePaymentAccount:
            return baseURL+"/api/v1/transactions/saveaccount"
        case .userPaymentAccount:
            return baseURL+"/api/v1/transactions/paymentaccounts?appUserId=\(appUserID!)"
        case .userPaymentAccountSetDefaut:
            return baseURL+"/api/v1/transactions/defaultaccount"
        case .userPaymentAccountDelete:
            return baseURL+"/api/v1/transactions/deleteaccount"
        case .userWithdraw:
            return baseURL+"/api/v1/transactions/withdraw"
        case .fetchAdsByCSV:
            return baseURL+"api/v1/ads/pushed?appUserId="
        case .updateUserLocation:
            return baseURL+"api/v1/users/location/current"
        case .swicthToLogin:
            return baseURL+"/api/v1/users/UserOveride"
        case .logout:
            return baseURL+"api/v1/users/logout?appUserId=\(appUserID!)"
        case .userEarning:
            return baseURL+"api/v1/transactions/earnings?appUserId=\(appUserID!)"
        case .fetchCoupons:
            return baseURL+"/api/v1/coupon?offset=\(offset!)&limit=\(limit!)&appUserId=\(appUserID!)"
        case .fetchUserCoupons:
            return baseURL+"api/v1/coupon/list?offset=\(offset!)&limit=\(limit!)&appUserId=\(appUserID!)"
        case .saveCoupon:
            return baseURL+"api/v1/coupon/save"
        case .deleteUserCoupon:
            return baseURL+"api/v1/coupon/Delete"
        case .deleteMultipleUserCoupon:
            return baseURL+"api/v1/coupon/Deletes"
        case .supportRequest:
            return baseURL+"api/v1/customersupport/contact"
        case .verifyCode:
            return baseURL+"api/v1/users/VerifyCode"
        case .sendVerificationCode:
            return baseURL+"api/v1/users/SendVerificationCode"
        case .sendPasswordResetCode:
            return baseURL+"api/v1/users/SendPasswordResetCode"
        case .resetPassword:
            return baseURL+"api/v1/users/ResetPassword"
        case .changePassword:
            return baseURL+"api/v1/users/ChangePassword"
        case .rewardLog:
            return baseURL+"api/v1/transactions/summary?appUserId=\(appUserID!)&offset=\(offset!)&limit=\(limit!)"
        case .viewedAds:
            return baseURL+"api/v1/ads/history?appUserId=\(appUserID!)&offset=\(offset!)&limit=\(limit!)"
        case .paymentInformation:
            return baseURL+"api/v1/transactions/paymentinformation?appUserId=\(appUserID!)&appID=\(appId!)"
        case .ticketSubject:
            return baseURL+"api/v1/customersupport/TicketsTitle?appUserId=\(appUserID!)&appId=\(appId!)"
        case .supportTickets:
            return baseURL+"api/v1/customersupport/Tickets?offset=\(offset!)&limit=\(limit!)&appUserId=\(appUserID!)&appId=\(appId!)"
        case .supportTicketDetail:
            return baseURL+"api/v1/customersupport/TicketDetail?appUserId=\(appUserID!)&appID=\(appId!)&ticketID="
        case .createTicket:
            return baseURL+"api/v1/customersupport/NewTicket"
        case .solveTicket:
            return baseURL+"api/v1/customersupport/UpdateStatus?appUserId=\(appUserID!)&statusID=3&ticketID="
            
            
        }
    }
}


enum ServerResponse: Int {
    case failure                = 202
    case existDependent         = 708
    case clubNotMatched         = 209
    case tokenExpire            = 501
    case parseError             = 500
    case offline                = -1009
    case invalidMembershipCode  = 203
    case success                = 200
    
    case user_Not_Registerd     = 901
    case userNotRegistered      = 902
    case savingError            = 903
    case regError               = 904
    case userAlreadyExist       = 905
    case invalidFileExtensions  = 906
    case fileNotFound           = 907
    case invalidUser            = 908
    case userAlreadyLogin       = 909
    case sessionExpire          = 910
    case noEarning              = 911
    case userNotVarified        = 915
    case dailyLimitReached      = 916
    case maxDailyLimitReached   = 917
    case adsNotGeneratedByInterest = 918
    case adsNotGenerated        = 919
    
    
    //    User_Not_Registerd = 901,
    //    ModelValidationError = 904,
    //    LoginError = 902,
    //    SavingError = 903,
    //    UserAlreadyExist = 905,
    //    InvalidFileExtensions = 906,
    //    FileNotFound=907,
    //    InvalidUser=908,
    //    AlreadyLogin=909,
    //    SessionExpire=910,
    //    UnClaimAmount=911
    
    
    func message() -> String{
        switch self {
        case .parseError:
            return "Parsing Error"
        case .offline:
            return "Internet not Available"
        case .userNotRegistered:
            return "User has not been registered"
        default:
            return "Unknown Error"
        }
    }
}


class WebService: NSObject {
    
    static func printResponse(response:DataResponse<Any>) {
        //print(response)
        //print(response.request!)
        //print(response.data!)
        //print(response.result)
    }
    
    static let disposeBag = DisposeBag()
    
    //Base class for GET Request
    //Params: nil
    //Return type: AnyObject
    class func getAt(
        url:String,
        parameters:[String:AnyObject]!,
        headers:[String: String]!,
        successBlock:@escaping ((_ response:AnyObject?) -> Void),
        failureBlock:@escaping ((_ message:String) -> Void)){

        
        var headerDic:[String:String]?
        
        headerDic = ["Authorization": "authToken" as String!]
        
        //print("Initiated GET request at \(url)")
        
        if Reachablity.isNetworkReachable(){
        Alamofire.request(
            url,
            method: .get,
            parameters: parameters,
            encoding: JSONEncoding.default,
            headers:  headerDic).responseJSON {
                (response:DataResponse<Any>) in

                //print(response)
                let statusCode = response.response?.statusCode
                
                let headers = response.response?.allHeaderFields
                let errorMsg = headers?["errorMessage"] as? String ?? ""
                _ = headers?["errorCode"] as? String ?? ""
               
                successBlock(response.result.value as AnyObject?)
        }
        }
        else{
            failureBlock("NETWORK_ERROR_MESSAGE")

        }
    }
    
    //Base class for GET WITHOUT ACCESS TOKEN Request
    //Params: nil
    //Return type: AnyObject
    class func getAtWithNoAccessToken(
        url:String,
        parameters:[String:AnyObject]? = nil,
        successBlock:@escaping ((_ response:AnyObject?) -> Void),
        failureBlock:@escaping ((_ message:String) -> Void)){
        
        //print("Initiated GET request at \(url)")
        //print("parameters: \(parameters!)")
        //print("url: \(url)")
        if Reachablity.isNetworkReachable(){
        Alamofire.request(
            url,
            method: .get,
            parameters: parameters,
            encoding: JSONEncoding.default,
            headers: nil).responseJSON {
                (response:DataResponse<Any>) in
                
                //print(response)
                let statusCode = response.response?.statusCode
                
                let headers = response.response?.allHeaderFields
                let errorMsg = headers?["errorMessage"] as? String ?? ""
                _ = headers?["errorCode"] as? String ?? ""
              
                
                successBlock(response.result.value as AnyObject?)
        }
    }
        else{
            failureBlock("NETWORK_ERROR_MESSAGE")
            
        }
    }
    
    
   
    
    //POST AT
    //Base class for POST Request
    //Params: parameters
    //Return type: AnyObject
    class func postAt(
        url:String,
        parameters: [String: AnyObject]? = nil,
        headers:[String: String]? = nil,
        successBlock:@escaping ((_ response:AnyObject?) -> Void),
        failureBlock:@escaping ((_ message:String) -> Void)){
        print("Initiated POST request at " + url)
        
        
        var headerDic:[String:String]?
        

        
        if Reachablity.isNetworkReachable(){
            Alamofire.request(
                url,
                method: .post,
                parameters: parameters,
                encoding: JSONEncoding.default,
                headers:  headerDic).responseJSON {
                    (response:DataResponse<Any>) in
                   // print(response)
                    let statusCode = response.response?.statusCode
                    let header = response.response?.allHeaderFields
                
                    let errorMsg = header?["message"] as? String
                    
                    
                  
                    
                    successBlock(response.result.value as AnyObject?)
            }
        }
        else{
            failureBlock("NETWORK_ERROR_MESSAGE")
        }
    }
    
    
    
    
    
    //Base class for POST WITH JSON Array
    class func postAtJSONArray(
        url:String!,
        parameters: [AnyObject]? = nil,
        headers:[String: String]? = nil,
        successBlock:@escaping ((_ response:AnyObject?) -> Void),
        failureBlock:@escaping ((_ message:String) -> Void)){
        var actualHeader = [String: String]()
        if headers != nil {
            actualHeader = headers!
        }
        
        actualHeader["Authorization"] = "token"
        
        var request = URLRequest(url: NSURL(string: url)! as URL)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Header", forHTTPHeaderField: "Authorization")
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters!, options: [])
        } catch let error as NSError {
            //print("json error: \(error.localizedDescription)")
        }
        
        if Reachablity.isNetworkReachable(){
        Alamofire.request(
            request).responseJSON {
                (response:DataResponse<Any>) in
                //print(response)
                let statusCode = response.response?.statusCode
                let header = response.response?.allHeaderFields
                let errorMsg = header?["message"] as? String
                
                
                
                successBlock(response.result.value as AnyObject?)
        }
    }
        else{
            failureBlock("NETWORK_ERROR_MESSAGE")
            
        }
    }
    
    
 
    
    
    
    
    //MARK: POST AT WITH NO ACCESS TOKEN
    //Base class for POST WITHOUT ACCESS TOKEN Request
    //Params: parameters
    //Return type: AnyObject
    class func postAtWithoutAccessToken(
        url:String,
        parameters: [String: AnyObject]!,
        successBlock:@escaping ((_ response:AnyObject?) -> Void),
        failureBlock:@escaping ((_ message:String) -> Void)){

        
      if Reachablity.isNetworkReachable(){
      Alamofire.request(
        url,
        method: .post,
        parameters: parameters!,
        encoding: JSONEncoding.default,
        headers: nil)
        .validate(contentType: ["application/json"])
        .responseJSON {
            (response:DataResponse<Any>) in
            //print("Initiated POST request at " + url)
            
            //print(response)
            //print(parameters)
            let statusCode = response.response?.statusCode
            let headers = response.response?.allHeaderFields
            let errorMsg = headers?["errorMessage"]
            let accessToken = headers?["accessToken"]
            if(accessToken != nil){
                
            }
         
            successBlock(response.result.value as AnyObject?)
        }
    }
      else{
        failureBlock("NETWORK_ERROR_MESSAGE")
        
        }
  }


    
    //Base class for DELETE Request
    //Params: parameters
    //Return type: AnyObject
    class func deleteAt(
        url:String,
        parameters: [String: AnyObject]!,
        successBlock:@escaping ((_ response:AnyObject?) -> Void),
        failureBlock:@escaping ((_ message:String) -> Void)){
        //print("Initiated POST request at " + url)
        
        if Reachablity.isNetworkReachable(){
        Alamofire.request(
            url,
            method: .delete,
            parameters: parameters,
            encoding: JSONEncoding.default,
            headers: nil).responseJSON {
                (response:DataResponse<Any>) in
                let statusCode = response.response?.statusCode
                let headers = response.response?.allHeaderFields
//                //print(headers)
                let errorMsg = headers?["errorMessage"]
                let accessToken = headers?["accessToken"]
                if(accessToken != nil){
                    
                }
                
              
                successBlock(response.result.value as AnyObject?)
        }
    }
        else{
            failureBlock("NETWORK_ERROR_MESSAGE")
            
        }
    }
    
    
    

}
