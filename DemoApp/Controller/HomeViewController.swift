//
//  HomeViewController.swift
//  DemoApp
//
//  Created by IOS_Dev on 20/10/21.
//  Copyright © 2021 IOS_Developer. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var lblUserEmail: UILabel!
    
    var name = String()
    var email = String()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        navigationTitle(title: "Home")
        
        lblUserName.text = name
        lblUserEmail.text = email
    }
    
}
