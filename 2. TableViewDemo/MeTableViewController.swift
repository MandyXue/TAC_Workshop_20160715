//
//  MeTableViewController.swift
//  TableViewDemo
//
//  Created by MandyXue on 16/7/15.
//  Copyright © 2016年 AppleClub. All rights reserved.
//

import UIKit

class MeTableViewController: UITableViewController {
    
    var flag = false
    
    @IBAction func change(sender: UIBarButtonItem) {
        flag = !flag
        tableView.reloadData()
    }
    
    var people: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        people.append(Person())
        people.append(Person(name: "xmd", gender: "female"))
        people.append(Person(name: "", gender: ""))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 0
//    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        if indexPath.row % 2 == 0 {
//            let cell = tableView.dequeueReusableCellWithIdentifier("PersonCell", forIndexPath: indexPath)
//            cell.textLabel?.text = "Person Cell"
//            cell.detailTextLabel?.text = "Person Cell Detail"
//            
//            return cell
//        } else {
//            let cell = tableView.dequeueReusableCellWithIdentifier("TeacherCell", forIndexPath: indexPath)
//            cell.textLabel?.text = "Teacher Cell"
//            cell.detailTextLabel?.text = "Teacher Cell Detail"
//            
//            return cell
//        }
        let Identifier = flag ? "TeacherCell": "PersonCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(Identifier, forIndexPath: indexPath)
        cell.textLabel?.text = people[indexPath.row].name
        cell.detailTextLabel?.text = people[indexPath.row].gender
        return cell
    }

}
