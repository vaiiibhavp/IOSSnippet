//
//  UIViewController+Extension.swift
//  DemoApp
//
//  Created by IOS_Dev on 21/10/21.
//  Copyright © 2021 IOS_Developer. All rights reserved.
//

import UIKit


extension UIViewController{

    func navigationTitle(title:String){
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        titleLabel.text = title
        titleLabel.textColor = UIColor.black
        titleLabel.textAlignment = .center
        navigationItem.titleView = titleLabel
        self.navigationItem.setHidesBackButton(true, animated: true)
    }

}
