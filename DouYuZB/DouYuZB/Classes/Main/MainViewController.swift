//
//  MainViewController.swift
//  DouYuZB
//
//  Created by 冯海伟 on 2017/5/18.
//  Copyright © 2017年 IOS_tang. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVC("Home")
        addChildVC("Living")
        addChildVC("Focus")
        addChildVC("Discovery")
        addChildVC("Mine")
        
    }
    
    fileprivate func addChildVC(_ storyboardName: String) {
        guard let homeVC = UIStoryboard(name: storyboardName, bundle: nil).instantiateInitialViewController() else {
            return
        }
        addChildViewController(homeVC)
    }

}
