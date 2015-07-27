//
//  ViewController.swift
//  Dashboards.swift
//
//  Created by longhao on 15/7/22.
//  Copyright (c) 2015年 longhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dashboard: Dashboard?
    var dashboard2: Dashboard?
    var timeTips: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dashboard = Dashboard(frame: CGRectMake(0, 68, 300, 250), title: "Left", left: 95,
            total: 100, suffix: "GB")
        dashboard!.center.x = self.view.center.x
        self.view.addSubview(dashboard!)
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateTimer:", userInfo: nil, repeats: true)
        
        dashboard2 = Dashboard(frame: CGRectMake(0, 318, 300, 350))
        dashboard2!.change(95, total: 100, suffix: "GB")
        dashboard2!.title = "test"
        dashboard2!.center.x = self.view.center.x
        self.view.addSubview(dashboard2!)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateTimer(sender: NSTimer) {
        timeTips += 1
        let left = CGFloat(100 - timeTips*10)
        self.dashboard!.change(left, total: 100, suffix: "GB")
        //self.dashboard!.title = String(timeTips)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

