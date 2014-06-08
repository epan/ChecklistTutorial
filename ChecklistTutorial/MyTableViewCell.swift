//
//  MyTableViewCell.swift
//  ChecklistTutorial
//
//  Created by Eric Pan on 6/8/14.
//  Copyright (c) 2014 Eric Pan. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    let medOrange: UIColor = UIColor(red: 0.973, green: 0.388, blue: 0.173, alpha: 1)

    init(style: UITableViewCellStyle, reuseIdentifier: String) {
        // Overrides table view style and take in the subtitle style
        super.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)

        // Styles
        self.backgroundColor = medOrange
        self.textColor = UIColor.whiteColor()
        self.selectionStyle = UITableViewCellSelectionStyle.None
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
