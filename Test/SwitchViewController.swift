//
//  SwitchViewController.swift
//  Test
//
//  Created by kutai on 2015/8/31.
//  Copyright (c) 2015年 kutai. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {

    @IBOutlet weak var sw: UIResizableSwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        sw.addTarget(self, action: "actionValueChange:", forControlEvents: UIControlEvents.ValueChanged)
        
        // Do any additional setup after loading the view.
    }
    
    func actionValueChange(sender: UIResizableSwitch) {
        println("value change to:\(sender.on)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func actionResizableSwitchValueChange(sender: UIResizableSwitch) {
        
    }
    
    @IBAction func actionChangeSwitch(sender: UIButton) {
        self.sw.setOn(!self.sw.on, animated: true)
//        self.sw.on = !self.sw.on
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
