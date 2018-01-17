//
//  ColorDetailController.swift
//  ColorPicker
//
//  Created by IJke Botman on 17/01/2018.
//  Copyright © 2018 IJke Botman. All rights reserved.
//

import UIKit

class ColorDetailController: UITableViewController {
    
    var color: UIColor?
    @IBOutlet weak var hexLabel: UILabel!
    @IBOutlet weak var rgbLabel: UILabel!
    @IBOutlet weak var hslLabel: UILabel!
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hexLabel.text = color?.hexString
        rgbLabel.text = color?.rgbString
        hslLabel.text = color?.hslString
        colorView.backgroundColor = color
    }
    
}
