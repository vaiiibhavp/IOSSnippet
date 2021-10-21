//
//  ViewController.swift
//  DemoApp
//
//  Created by IOS_Dev on 20/10/21.
//  Copyright © 2021 IOS_Developer. All rights reserved.
//

import UIKit
import GoogleSignIn

class LoginViewController: UIViewController {
    
    @IBOutlet weak var btnLogin: UIButton!
    let signInConfig = GIDConfiguration.init(clientID: "358743039257-tcov1nbnhpmo4kna5tmeqj3h803bhp0e.apps.googleusercontent.com")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUI()
    }
    
    func setUI()
    {
        btnLogin?.layer.cornerRadius = 20.0
        btnLogin.layer.masksToBounds = true
    }
    
    @IBAction func signIn(sender: Any) {
        GIDSignIn.sharedInstance.signIn(with: signInConfig, presenting: self) { user, error in
            guard error == nil else { return }
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            vc.name = user?.profile?.name ?? ""
            vc.email = user?.profile?.email ?? ""
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

