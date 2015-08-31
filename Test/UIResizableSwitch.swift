//
//  SizableSwitch.swift
//  Test
//
//  Created by kutai on 2015/8/31.
//  Copyright (c) 2015年 kutai. All rights reserved.
//

import UIKit

@IBDesignable class UIResizableSwitch: UIControl {

    private var isSetted: Bool = false
    var customSwitch: UISwitch = UISwitch()
    var on: Bool {
        get {
            return customSwitch.on
        }
        set(newValue){
            self.setOn(newValue, animated: false)
        }
    }
    

    func setOn(on: Bool, animated: Bool) {
        self.customSwitch.setOn(on, animated: animated)
    }
    
    func triggerValueChange(sender: UISwitch!) {
        self.sendActionsForControlEvents(UIControlEvents.ValueChanged)
    }
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        if isSetted == false {
            var widthRatio = rect.width / customSwitch.bounds.width
            var heightRatio = rect.height / customSwitch.bounds.height
            customSwitch.transform = CGAffineTransformMakeScale(widthRatio, heightRatio)
            customSwitch.center = CGPointMake(self.bounds.width / 2, self.bounds.height / 2)
            customSwitch.layer.contentsScale = UIScreen.mainScreen().scale
            customSwitch.addTarget(self, action: "triggerValueChange:", forControlEvents: UIControlEvents.ValueChanged)
            self.addSubview(customSwitch)
            isSetted = true
        }
    }
    

}
