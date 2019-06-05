//
//  ViewModel.swift
//  Remittance
//
//  Created by 8square i on 11/28/18.
//  Copyright © 2018 Eightsquare Pvt. Ltd. All rights reserved.
//

import Foundation

protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    func transform(input: Input) -> Output
}

