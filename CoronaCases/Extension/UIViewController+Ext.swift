//
//  UIViewController+Ext.swift
//  CoronaCases
//
//  Created by SwiftiSwift on 27.04.20.
//  Copyright © 2020 SwiftiSwift. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentOnMostTop() {
        mostTopVC.present(self, animated: true, completion: nil)
    }
    
    var mostTopVC: UIViewController {
        if var topController = UIApplication.shared.windows.first?.rootViewController  {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            return topController
        }
        
        return self
    }
    
    func dismissTopAlert() {
        if mostTopVC.isKind(of: UIAlertController.self) {
            mostTopVC.dismiss(animated: true, completion: nil)
        }
    }
}
