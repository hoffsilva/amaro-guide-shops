//
//  GuideShopsListView.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 19/12/20.
//

import UIKit
import Stevia

final class GuideShopsListView: UIView {
    
    lazy var guideShopsTableView: UITableView = {
        UITableView()
    }()
    
    convenience init() {
        self.init(frame: .zero)
        setUpViews()
    }
    
}

extension GuideShopsListView: ViewCodable {
    
    func setUpViewHierarchy() {
        subviews {
            guideShopsTableView
        }
    }
    
    func setUpConstraints() {
        guideShopsTableView.fillContainer()
    }
    
}
