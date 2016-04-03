//
//  ViewController.swift
//  OurFirstApp
//
//  Created by Grant Hyun Park on 4/2/16.
//  Copyright © 2016 Grant Hyun Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var myPeople: [People] = []
    @IBOutlet weak var myTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myPeople.append(People(name: "Bob", age: 23, phoneNumber: 2569874563))
        myPeople.append(People(name: "Sarah", age: 40, phoneNumber: 4567891234))
        myPeople.append(People(name: "Sue", age: 15, phoneNumber: 2566903141))
        myTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPeople.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! TableViewCell
        cell.cellLabel.text = myPeople[indexPath.row].name
        return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }


}

