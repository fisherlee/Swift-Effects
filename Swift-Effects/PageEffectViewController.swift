//
//  3DPageViewController.swift
//  Swift-Effects
//
//  Created by liwei on 16/9/26.
//  Copyright © 2016年 liwei. All rights reserved.
//

import UIKit

class PageEffectViewController: UIViewController {
    
    static let pageStoryboardId = "pageStoryboardId"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation
    
    @IBAction func tapStartAction()->Void {
        
        self.view.layer.cornerRadius = 5
        
        var transformIdentity = CATransform3DIdentity
        transformIdentity.m34 = 1 / -1000
        transformIdentity.m11 = 0.9
        transformIdentity.m22 = 0.8
        
        self.view.layer.transform = CATransform3DScale(transformIdentity, 1, 1, 1)
        self.view.layer.transform = CATransform3DRotate(transformIdentity, CGFloat(M_PI/128), 1, 0, 0)
    }
    
    @IBAction func tapEndAction()->Void {
        
        var transformIdentity = CATransform3DIdentity
        
        transformIdentity.m22 = 1
        transformIdentity.m34 = 1
        
        self.view.layer.transform = CATransform3DScale(transformIdentity, 1, 1, 1)
        self.view.layer.transform = CATransform3DRotate(transformIdentity, 0, 1, 0, 0)
    }

}
