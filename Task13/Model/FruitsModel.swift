//
//  FruitsModel.swift
//  Task13
//
//  Created by 三浦　一真 on 2021/08/03.
//

import Foundation

//protocolかく
protocol FruitsModelDelegate: AnyObject {
    func setModel()
}

final class FruitsModel {
    weak var delegate: FruitsModelDelegate?
    let fruits = ["りんご", "みかん", "バナナ", "パイナップル"]
    
    func set(fruits: [String]) {
        delegate?.setModel()
    }
}


