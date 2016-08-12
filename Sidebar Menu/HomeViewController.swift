//
//  HomeViewController.swift
//  Sidebar Menu
//
//  Created by Habib Akbari on 5/21/1395 AP.
//  Copyright © 1395 Habib Akbari. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var menuButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //Toggle display the sidebar menu
        if self.revealViewController() != nil {
            //Customizing the Menu
            self.revealViewController().rearViewRevealWidth = 110
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
      
    }

}
