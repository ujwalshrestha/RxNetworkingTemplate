//
//  WrapperNavViewController.swift
//  Redeem
//
//  Created by Braindigit on 6/16/17.
//  Copyright © 2017 com.redeem. All rights reserved.
//

import UIKit

class WrapperNavViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        if let nav = self.navigationController {
            nav.navigationBar.backgroundColor                   = .blue
            nav.navigationBar.barTintColor                      = UIColor.primaryRedColor()
            
            nav.navigationBar.isTranslucent                     = true
            nav.view.backgroundColor                            = .clear
            self.navigationItem.hidesBackButton                 = true
            self.navigationController?.isNavigationBarHidden    = false
            let navBar                                          = self.navigationController!.navigationBar
            navBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.RegularAvertaFontWithSize(size: 16), NSAttributedString.Key.foregroundColor:UIColor.white]
            nav.navigationBar.isTranslucent                     = false
            
            
            //sideMenuButtonLeft()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}
