//
//  GuideShopsListViewCell.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 19/12/20.
//

import UIKit
import Stevia
import SDWebImage

struct GuideShopsListViewCellData {
    let title: String
    let imageUrl: String
}

class GuideShopsListViewCell: UITableViewCell {

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setUpCell(data: GuideShopsListViewCellData) {
        self.titleLabel.text = data.title
        self.thumbnailImageView
            .sd_setImage(
                with: URL(string: data.imageUrl),
                completed: nil)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.titleLabel.text = nil
        self.thumbnailImageView.image = nil
    }
    
}

extension GuideShopsListViewCell: ViewCodable {
    
    func setUpViewHierarchy() {
        subviews {
            titleLabel
            thumbnailImageView
        }
    }
    
    func setUpConstraints() {
        layout {
            16
            |-16-self.titleLabel-16-|
            16
            |-16-self.thumbnailImageView.heightEqualsWidth()-16-|
            16
        }
    }
    
    func setUpAdditionalConfigurations() {
        titleLabel.numberOfLines = 0
        self.selectionStyle = .none
    }
    
}


