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
    let fruits: [Fruit] = [
        Fruit(name: "りんご", isChecked: true),
        Fruit(name: "みかん", isChecked: false),
        Fruit(name: "バナナ", isChecked: true),
        Fruit(name: "パイナップル", isChecked: false)
    ]
    
    func set(fruits: [Fruit]) {
        delegate?.setModel()
    }
}


