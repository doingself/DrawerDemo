//
//  LeftViewController.swift
//  DrawerDemo
//
//  Created by 623971951 on 2018/2/7.
//  Copyright © 2018年 syc. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController {

    private var tabView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        tabView = UITableView(frame: self.view.bounds)
        tabView.dataSource = self
        tabView.delegate = self
        
        tabView.estimatedRowHeight = 44.0
        tabView.rowHeight = UITableViewAutomaticDimension
        
        tabView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tabView.tableFooterView = UIView()
        
        self.view.addSubview(tabView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension LeftViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "left \(indexPath.row)"
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
extension LeftViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("\(#function) = \(indexPath.row)")
    }
}
