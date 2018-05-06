//
//  CustomTabBarController.swift
//  midpoint_zm239
//
//  Created by Zozó on 2018. 04. 27..
//  Copyright © 2018. Zozo. All rights reserved.
//

import Foundation
import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let accountNavigationController = AccountViewController()
        accountNavigationController.tabBarItem.image = UIImage(named: "ic_today_2x.png")
        accountNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 9, left: 0, bottom: -9, right: 0)
        
        let eventsNavigationView = EventsViewController()
        eventsNavigationView.tabBarItem.image = UIImage(named: "ic_today_2x.png")
        eventsNavigationView.tabBarItem.imageInsets = UIEdgeInsets(top: 9, left: 0, bottom: -9, right: 0)
        
        let testNavigationView = DummyViewController()
        testNavigationView.tabBarItem.image = UIImage(named: "ic_today_2x.png")
        testNavigationView.tabBarItem.imageInsets = UIEdgeInsets(top: 9, left: 0, bottom: -9, right: 0)
        
        viewControllers = [accountNavigationController,eventsNavigationView,testNavigationView]
    }
}
