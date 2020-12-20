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

    private lazy var titleLabbel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    convenience init() {
        self.init(frame: .zero)
        setUpViews()
    }
    
    func setUpCell(_ data: GuideShopsListViewCellData) {
        self.titleLabbel.text = data.title
        self.imageView?
            .sd_setImage(
                with: URL(string: data.imageUrl),
                completed: nil)
    }
    
    override func prepareForReuse() {
        self.titleLabbel.text = nil
        self.imageView?.image = nil
    }
    
}

extension GuideShopsListViewCell: ViewCodable {
    
    func setUpViewHierarchy() {
        subviews {
            titleLabbel
            thumbnailImageView
        }
    }
    
    func setUpConstraints() {
        layout {
            16
            |-16-self.titleLabbel-16-|
            16
            |-16-self.thumbnailImageView.heightEqualsWidth()-16-|
            16
        }
    }
    
}


