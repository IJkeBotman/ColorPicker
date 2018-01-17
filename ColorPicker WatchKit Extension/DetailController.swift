//
//  DetailController.swift
//  ColorPicker WatchKit Extension
//
//  Created by IJke Botman on 17/01/2018.
//  Copyright © 2018 IJke Botman. All rights reserved.
//

import WatchKit
import Foundation


class DetailController: WKInterfaceController {
    @IBOutlet var hexLabel: WKInterfaceLabel!
    @IBOutlet var rgbLabel: WKInterfaceLabel!
    @IBOutlet var hslLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        let color = ColorManager.defaultManager.selectedColor
        hexLabel.setText("#" + color.hexString)
        rgbLabel.setText(color.rgbString)
        hslLabel.setText(color.hslString)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
