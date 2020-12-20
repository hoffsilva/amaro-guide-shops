//
//  ViewCodable.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 19/12/20.
//

import Foundation

protocol ViewCodable {
    func setUpViews()
    func setUpViewHierarchy()
    func setUpConstraints()
    func setUpAdditionalConfigurations()
}

extension ViewCodable {
    
    func setUpViews() {
        setUpViewHierarchy()
        setUpConstraints()
        setUpAdditionalConfigurations()
    }
    
    func setUpAdditionalConfigurations() {}
    
}
