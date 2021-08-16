//
//  ViewController.swift
//  Task13
//
//  Created by 三浦　一真 on 2021/08/03.
//

import UIKit

final class FruitsViewController: UIViewController {
    
    @IBOutlet private weak var fruitsTableView: UITableView!
    
    let fruitsModel = FruitsModel()
    //Model で fruits を保持しているので、ViewController で保持する必要はない
    //private var fruits: [Fruit] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: TableView + Cell
        fruitsTableView.dataSource = self
        fruitsTableView.registerCustomCell(FruitsTableViewCell.self)
    }
    
}

extension FruitsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitsModel.fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCustomCell(with: FruitsTableViewCell.self)
        cell.configure(fruits: fruitsModel.fruits[indexPath.row])
        return cell
    }
}
