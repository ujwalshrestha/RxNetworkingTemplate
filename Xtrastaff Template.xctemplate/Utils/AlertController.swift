//
//  AlertController.swift
//  DemoRxSwift
//
//  Created by Praks on 6/4/19.
//  Copyright © 2019 Praks. All rights reserved.
//

import UIKit

protocol AlertController { }

extension AlertController where Self: UIViewController {

    func showAlert(title: String? = nil, message: String? = nil) {

        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "Ok", style: .cancel) { _ in }

        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }

}
