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

        childViewController.removeFromParentViewController()
        childViewController.willMove(toParentViewController: self)
        addChildViewController(childViewController)
        childViewController.didMove(toParentViewController: self)
        view.addSubview(childViewController.view)
        view.setNeedsLayout()
        view.layoutIfNeeded()
    }

    func removeChildViewController(_ childViewController: UIViewController) {
        childViewController.removeFromParentViewController()
        childViewController.willMove(toParentViewController: nil)
        childViewController.removeFromParentViewController()
        childViewController.didMove(toParentViewController: nil)
        childViewController.view.removeFromSuperview()
        view.setNeedsLayout()
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
