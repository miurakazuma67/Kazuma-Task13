//
//  FruitsModel.swift
//  Task13
//
//  Created by 三浦　一真 on 2021/08/03.
//

import Foundation

//現段階で外部に通知すべき変化はないので FruitsModelDelegate は削除
//protocol FruitsModelDelegate: AnyObject {
//    func setModel()
//}

final class FruitsModel {
    let fruits: [Fruit] = [
        Fruit(name: "りんご", isChecked: true),
        Fruit(name: "みかん", isChecked: false),
        Fruit(name: "バナナ", isChecked: true),
        Fruit(name: "パイナップル", isChecked: false),
        Fruit(name: "りんご", isChecked: true),
        Fruit(name: "みかん", isChecked: false),
        Fruit(name: "バナナ", isChecked: true),
        Fruit(name: "パイナップル", isChecked: false)
    ]
  
//set という名前だがプロパティに何も変化を与えず、外部に通知をしているだけなので、意味がないので削除
//    func set(fruits: [Fruit]) {
//        delegate?.setModel()
//    }
}


