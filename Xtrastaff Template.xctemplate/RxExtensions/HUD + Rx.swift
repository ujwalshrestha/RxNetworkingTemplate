//
//  HUD + Rx.swift
//  DemoRxSwift
//
//  Created by Praks on 6/4/19.
//  Copyright © 2019 Praks. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import SVProgressHUD
import RxCocoa

extension Reactive where Base: SVProgressHUD {

    public static var isAnimating: Binder<Bool> {
        return Binder(UIApplication.shared) { progressHUD, isVisible in
            if isVisible {
               SVProgressHUD.setContainerView(UIApplication.shared.keyWindow)
                SVProgressHUD.setDefaultStyle(SVProgressHUDStyle.dark)
                SVProgressHUD.setDefaultAnimationType(.native)

                SVProgressHUD.show(withStatus: "Please wait.")
                print("show SVProgressHUD")
            } else {
                SVProgressHUD.dismiss()
                print("dismiss SVProgressHUD")
            }
        }
    }

}
