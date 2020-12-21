//
//  GetAllGuideShopsProvider.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 20/12/20.
//

import Foundation
import Moya

enum GetAllGuideShopsProvider {
    case getAllGuideShops
}

extension GetAllGuideShopsProvider: TargetType {
    
    var baseURL: URL {
        URL(string: "https://rickandmortyapi.com/api/character/")!
    }
    
    var path: String {
        ""
    }
    
    var method: Moya.Method {
        .get
    }
    
    var sampleData: Data {
        Data()
    }
    
    var task: Task {
        .requestPlain
    }
    
    var headers: [String : String]? {
        nil
    }
    
}
