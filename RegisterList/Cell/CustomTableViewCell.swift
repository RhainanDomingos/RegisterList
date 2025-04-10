//
//  CustomTableViewCell.swift
//  Swift_DesafioTabBarCurso
//
//  Created by Rhainan Domingos on 10/02/25.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    public func setupCell(profile: Profile) {
        userImageView.image = profile.photo
        nameLabel.text = profile.name
    }
}
