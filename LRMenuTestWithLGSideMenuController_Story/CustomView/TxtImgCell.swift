//
//  TxtImgCell.swift
//  LRMenuTest
//
//  Created by ut-i02 on 28/01/2022.
//

import UIKit

class TxtImgCell: UITableViewCell {
    @IBOutlet weak var lbl: UILabel!
    
    static let nibName = "TxtImgCell"
    static let reuseId = "TxtImgCell"

    class func registerCell(tableView: UITableView){
        tableView.register(UINib(nibName: nibName, bundle: nil), forCellReuseIdentifier: reuseId)
    }
    
    class func getReusableCell(tableView: UITableView, title: String? = "") -> TxtImgCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseId) as! TxtImgCell
        cell.lbl.text = title ?? "???"
        return cell
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
