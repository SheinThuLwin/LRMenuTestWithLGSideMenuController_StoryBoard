//
//  RootVC.swift
//  LRMenuTest
//
//  Created by ut-i02 on 28/01/2022.
//

import UIKit

protocol RootVCProtocol: AnyObject{
    func showMenuLeft()
    func showMenuRight()
    func goToDetail()
}

class RootVC: UIViewController {
    @IBOutlet weak var lblTitle: UILabel!
    
//    @IBOutlet weak var btnLeft: UIButton!
//    @IBOutlet weak var btnRight: UIButton!
    weak var slideMenuProtocol: RootVCProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func btnLeftTouchUpInside(_ sender: UIButton) {
        if let smp = slideMenuProtocol{
            smp.showMenuLeft()
        }
    }
    
    @IBAction func btnRightTouchUpInside(_ sender: UIButton) {
        if let smp = slideMenuProtocol{
            smp.showMenuRight()
        }
    }
    
    @IBAction func btnDetailTouchUpInside(_ sender: UIButton) {
        if let smp = slideMenuProtocol{
            smp.goToDetail()
        }
    }
}

extension RootVC: LeftMenuProtocol{
    func changeTitle(title: String) {
        print("Change Title >> \(title)")
        lblTitle.text = title
    }
}

extension RootVC: RightMenuProtocol{
    func changeColor(color: UIColor) {
        print("Change Color")
        view.backgroundColor = color
    }
    
    
}
