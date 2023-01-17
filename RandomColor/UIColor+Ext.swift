//
//  UIColor+Ext.swift
//  RandomColor
//
//  Created by I9orila on 17.01.2023.
//

import UIKit

extension UIColor {
    
  static func random() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: .random(in: 0.6...0.9))
        return randomColor
    }
}
