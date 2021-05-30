//
//  TableViewCell.swift
//  10piHacks2021(5-29-2021)
//
//  Created by Shuji Yoshizaki on 5/29/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var link1: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
