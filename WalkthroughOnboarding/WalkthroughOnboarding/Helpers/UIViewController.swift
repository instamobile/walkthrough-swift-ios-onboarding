//
//  UIViewController.swift
//  WalkthroughOnboarding
//
//  Created by Florian Marcu on 8/16/18.
//  Copyright © 2018 Instamobile. All rights reserved.
//

import UIKit

extension UIViewController {
  
  func addChildViewControllerWithView(_ childViewController: UIViewController, toView view: UIView? = nil) {
    let view: UIView = view ?? self.view
    childViewController.removeFromParent()
    childViewController.willMove(toParent: self)
    addChild(childViewController)
    childViewController.didMove(toParent: self)
    view.addSubview(childViewController.view)
    view.layoutIfNeeded()
  }
  
  func removeChildViewController(_ childViewController: UIViewController) {
    childViewController.removeFromParent()
    childViewController.willMove(toParent: nil)
    childViewController.removeFromParent()
    childViewController.didMove(toParent: nil)
    childViewController.view.removeFromSuperview()
    view.layoutIfNeeded()
  }
  
  func hideKeyboardWhenTappedAround() {
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
    tap.cancelsTouchesInView = false
    view.addGestureRecognizer(tap)
  }
  
  @objc func dismissKeyboard() {
    view.endEditing(true)
  }
}
