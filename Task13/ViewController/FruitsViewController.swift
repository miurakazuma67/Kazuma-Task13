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
    private var fruits: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: TableView + Cell
        fruitsTableView.delegate = self
        fruitsTableView.dataSource = self
        fruitsTableView.registerCustomCell(FruitsTableViewCell.self)
        fruitsModel.delegate = self
        setModel()
    }

}

extension FruitsViewController: UITableViewDelegate {

}

extension FruitsViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCustomCell(with: FruitsTableViewCell.self)
        //cellに名前を登録する
        cell.configure(name: fruits[indexPath.row])
        return cell
    }
}

extension FruitsViewController: FruitsModelDelegate {
    func setModel() {
        self.fruits = fruitsModel.fruits
    }
    
    func check(index: Int) {
    }
}
