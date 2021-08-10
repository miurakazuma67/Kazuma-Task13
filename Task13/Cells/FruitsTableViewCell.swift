//
//  FruitsTableViewCell.swift
//  Task13
//
//  Created by 三浦　一真 on 2021/08/03.
//

import UIKit

final class FruitsTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var checkImage: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    
    func configure(fruits: Fruit) {
        nameLabel.text = fruits.name
        if fruits.isChecked == true {
            self.checkImage.image = UIImage(named: "checkmark.png")
        } else { return }
    }
    
}
