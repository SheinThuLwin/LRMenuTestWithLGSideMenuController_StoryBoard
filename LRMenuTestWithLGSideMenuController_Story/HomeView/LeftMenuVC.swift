//
//  LeftMenuVC.swift
//  LRMenuTest
//
//  Created by ut-i02 on 28/01/2022.
//

import UIKit

protocol LeftMenuProtocol: AnyObject{
    func changeTitle(title: String)
}

class LeftMenuVC: UIViewController {

    @IBOutlet weak var tblMenu: UITableView!
    
    private let titles = ["Mango", "Banana", "Coconut"]
    weak var menuProtocol: LeftMenuProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        TxtImgCell.registerCell(tableView: tblMenu)
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

extension LeftMenuVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return TxtImgCell.getReusableCell(tableView: tblMenu, title: titles[indexPath.row])
    }
    
    
}

extension LeftMenuVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let mp = menuProtocol{
            print("Left select at table index - \(indexPath.row)")
            mp.changeTitle(title: titles[indexPath.row])
        }
    }
}
