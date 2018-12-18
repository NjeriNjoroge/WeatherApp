//
//  TodayViewController.swift
//  WeatherApp
//
//  Created by Grace Njoroge on 18/12/2018.
//  Copyright © 2018 Grace Njoroge. All rights reserved.
//

import UIKit
import SnapKit

class TodayViewController: UIViewController {
    
    let sunImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage.init(named: "clear_sky")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = false
        return imageView
    }()
    
    let locationLabel: UILabel = {
        let label = UILabel()
        label.text = "Prague, Czech Republic"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Today"
        view.backgroundColor = .white
        
        //setup custom view controllers
        view.addSubview(sunImage)
        view.addSubview(locationLabel)
        
        //setup constraints
        setupSunImageViewConstraints()
    }
    
    func setupSunImageViewConstraints() {
        
        sunImage.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.centerX.equalTo(self.view)
            make.centerY.equalTo(self.view).offset(-220)
        }
        
        locationLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.view)
            make.width.equalTo(100)
        }
    }
    
    
}
