//
//  ViewController.swift
//  ListFull
//
//  Created by ian schoenrock on 9/30/18.
//  Copyright © 2018 ian schoenrock. All rights reserved.
//

import UIKit

var names = ["Ian", "Chayla", "Juice", "Corey"]
var myIndex = 0

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //@IBOutlet weak var input: UITextField!

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var MyTableView: UITableView!

    @IBAction func addFromSecond(_ sender: Any) {
        performSegue(withIdentifier: "SecondSegue", sender: self)
    }
    
    @IBAction func add(_ sender: Any) {
        names.append(input.text!)
        MyTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "myCell")
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "DetailSegue", sender: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        MyTableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

