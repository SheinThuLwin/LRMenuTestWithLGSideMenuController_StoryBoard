//
//  ViewController.swift
//  LRMenuTestWithLGSideMenuController_Story
//
//  Created by ut-i02 on 28/01/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let navControler = self.navigationController{
            var vcs = navControler.viewControllers
            if let index = vcs.firstIndex(of: self){
                vcs.remove(at: index)
                navControler.setViewControllers(vcs, animated: false)
            }
        }
    }

}

