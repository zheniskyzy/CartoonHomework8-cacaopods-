//
//  CartoonTableViewCell.swift
//  CartoonHomework8(cacaopods)
//
//  Created by Madina Olzhabek on 30.12.2023.
//

import UIKit
import SDWebImage

class CartoonTableViewCell: UITableViewCell {

    @IBOutlet weak var imageOfCartoonImageView: UIImageView!
    
    @IBOutlet weak var flagImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated) 

        // Configure the view for the selected state
    }
    func setData(cartoon: Cartoon){
        nameLabel.text = cartoon.name
        yearLabel.text = cartoon.year
        countryLabel.text = cartoon.country
        
        imageOfCartoonImageView.sd_setImage(with: URL(string: cartoon.imageOfCartoon), completed: nil)
        flagImageView.sd_setImage(with: URL(string: cartoon.flag), completed: nil)
        
    }
    
}
