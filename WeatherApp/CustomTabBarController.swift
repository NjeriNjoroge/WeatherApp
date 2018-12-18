//
//  CustomTabBarController.swift
//  WeatherApp
//
//  Created by Grace Njoroge on 18/12/2018.
//  Copyright © 2018 Grace Njoroge. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setup custom view controllers
        let todayViewController = TodayViewController()
        let recentVC = UINavigationController(rootViewController: todayViewController)
        recentVC.tabBarItem.title = "Today"
        recentVC.tabBarItem.image = UIImage(named: "cloud")
        
        let forecastViewController = ForecastViewController()
        let secondVC = UINavigationController(rootViewController: forecastViewController)
        secondVC.tabBarItem.title = "Forecast"
        secondVC.tabBarItem.image = UIImage(named: "sun")
        
        viewControllers = [recentVC, secondVC]
        
    }
}
