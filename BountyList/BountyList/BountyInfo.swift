//
//  BountyInfo.swift
//  BountyList
//
//  Created by lyanju on 2023/08/08.
//

import UIKit

class BountyInfo: NSObject {
    let name: String
    let bounty: Int
    
    var image: UIImage? {
        return UIImage(named: "\(name).jpg")
    }
    
    init(name: String, bounty: Int) {
        self.name = name
        self.bounty = bounty
    }
    
}
