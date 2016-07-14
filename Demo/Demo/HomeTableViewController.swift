//
//  HomeTableViewController.swift
//  Demo
//
//  Created by MandyXue on 16/7/14.
//  Copyright © 2016年 AppleClub. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    // MARK: - Data Source
    
    var people: [Person] = []
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        people.append(Person())
        people.append(Person(name: "test", email: "test@test.com", avatar: UIImage(named: "avatar"), status: 0))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return people.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("HomeCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = people[indexPath.row].name
        cell.detailTextLabel?.text = people[indexPath.row].email

        return cell
    }

}
