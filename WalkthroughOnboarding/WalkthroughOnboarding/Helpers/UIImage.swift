//
//  UIImage.swift
//  WalkthroughOnboarding
//
//  Created by Florian Marcu on 8/16/18.
//  Copyright © 2018 Instamobile. All rights reserved.
//

import UIKit

extension UIImage {
  static func localImage(_ name: String, template: Bool = false) -> UIImage {
    var image = UIImage(named: name)!
    if template {
      image = image.withRenderingMode(.alwaysTemplate)
    }
    return image
  }
}
