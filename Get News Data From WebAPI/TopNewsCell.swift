//
//  TopNewsCell.swift
//  Get News Data From WebAPI
//
//  Created by USER on 04/09/2022.
//

import UIKit

class TopNewsCell: UITableViewCell {
    @IBOutlet weak var newsTitleLbl: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var authorLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override func prepareForReuse() {
        super.prepareForReuse()
            newsImage.image = nil
        
    }
    
}
