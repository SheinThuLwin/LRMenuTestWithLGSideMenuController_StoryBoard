//
//  RightMenuVC.swift
//  LRMenuTest
//
//  Created by ut-i02 on 28/01/2022.
//

import UIKit

protocol RightMenuProtocol: AnyObject{
    func changeColor(color: UIColor)
}

class RightMenuVC: UIViewController {
    weak var menuProtocol: RightMenuProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func btnColorTouchUpInside(_ sender: UIButton) {
        if let mp = menuProtocol{
//            let color = sender.view
//            if let color = color{
//                print("Right select - Btn Color")
//                mp.changeColor(color: sender.backgroundColor ?? .white)
//            }else{
//                print("Right select - White")
//                mp.changeColor(color: .white)
//            }
            let title = sender.titleLabel?.text
            var c = UIColor.white
            if let title = title {
                print("Right select - Btn Color")
                
                if title == "G"{
                    c = .green
                }else if title == "O"{
                    c = .orange
                }else{
                    c = .purple
                }
                
            }
            
            mp.changeColor(color: c)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
