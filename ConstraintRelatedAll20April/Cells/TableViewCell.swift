//
//  TableViewCell.swift
//  ConstraintRelatedAll20April
//
//  Created by Mac on 20/04/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var lblTwo: UILabel!
    
    @IBOutlet weak var lblOne: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
