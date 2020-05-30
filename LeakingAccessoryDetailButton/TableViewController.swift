//
//  TableViewController.swift
//  LeakingAccessoryDetailButton
//
//  Created by Martin Hettiger on 30.05.20.
//  Copyright © 2020 Martin Hettiger. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var data = [
        "Foo",
        "Bar",
        "Baz"
    ]

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.reuseIdentifier, for: indexPath) as! CustomTableViewCell

        cell.textLabel?.text = data[indexPath.item]

        return cell
    }

}
