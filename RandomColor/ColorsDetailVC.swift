//
//  ColorsDetailVC.swift
//  RandomColor
//
//  Created by I9orila on 17.01.2023.
//

import UIKit

class ColorsDetailVC: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = color ?? .blue 
    }
  }
