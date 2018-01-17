//
//  InterfaceController.swift
//  ColorPicker WatchKit Extension
//
//  Created by IJke Botman on 17/01/2018.
//  Copyright © 2018 IJke Botman. All rights reserved.
//

import WatchKit

class InterfaceController: WKInterfaceController {
    
    @IBOutlet var colorGroup: WKInterfaceGroup!
    @IBOutlet var label: WKInterfaceLabel!
    
    @IBAction func changeColors() {
        let colors = ColorManager.defaultManager.availableColors
        let namesAndContexts: [(name: String, context: AnyObject)] = colors.map({c in ("ColorPalette", c)})
        presentController(withNamesAndContexts: namesAndContexts)
    }
}

