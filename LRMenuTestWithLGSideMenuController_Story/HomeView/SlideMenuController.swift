//
//  SlideMenuController.swift
//  LRMenuTest
//
//  Created by ut-i02 on 28/01/2022.
//

import LGSideMenuController

class SlideMenuController: LGSideMenuController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rootVC: RootVC = self.rootViewController as! RootVC
        let leftMenuVC: LeftMenuVC = self.leftViewController as! LeftMenuVC
        let rightMenutVC: RightMenuVC = self.rightViewController as! RightMenuVC

        setupSlide(rootVC: rootVC, leftMenuVC: leftMenuVC, rightMenutVC: rightMenutVC)
        
        self.title = "Hello"
    }
    
    private func setupSlide(rootVC: RootVC, leftMenuVC: LeftMenuVC, rightMenutVC: RightMenuVC){
        rootVC.slideMenuProtocol = self
        leftMenuVC.menuProtocol = rootVC
        rightMenutVC.menuProtocol = rootVC

        leftViewPresentationStyle = .slideAboveBlurred
        rightViewPresentationStyle = .slideBelowShifted

        leftViewWidth = 250.0
        rightViewWidth = 100.0
    }
}

extension SlideMenuController: RootVCProtocol{
    func goToDetail() {
//        if let navController = self.navigationController{
//            print("found nav and go detail")
//        }
        
        self.navigationController?.pushViewController(DetailVC.getNewInstance(), animated: true)
    }
    
    func showMenuLeft() {
        showLeftView()
    }
    
    func showMenuRight() {
        showRightView()
    }
    
    
}
