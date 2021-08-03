//
//  ViewController.swift
//  Task13
//
//  Created by 三浦　一真 on 2021/08/03.
//

import UIKit

class FruitsViewController: UIViewController {

    
    @IBOutlet private weak var fruitsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fruitsTableView.delegate = self
        fruitsTableView.dataSource = self
        fruitsTableView.registerCustomCell(FruitsTableViewCell.self)

    }

}

extension FruitsViewController: UITableViewDelegate {

}

extension FruitsViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCustomCell(with: FruitsTableViewCell.self)
        return cell
    }


}