//
//  TableViewController.swift
//  PullToRefreshFirst
//
//  Created by trung on 2018/08/28.
//  Copyright © 2018 trung. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var arrayPull = ["1"]
    var refresh: UIRefreshControl!
//    var refresh = UIRefreshControl()


    override func viewDidLoad() {
        super.viewDidLoad()
       
        refresh = UIRefreshControl()
        refresh.attributedTitle = NSAttributedString(string: "pull")
        refresh.addTarget(self, action: #selector(add), for: .valueChanged)
        tableView.addSubview(refresh)

    }
    @objc func add() {
       // arrayPull.append("x")
        arrayPull.insert("Huy Cave", at: 0)
        refresh.endRefreshing()
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPull.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrayPull[indexPath.row]
        return cell
    }
   



}
