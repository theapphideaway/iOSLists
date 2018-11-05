//
//  SecondViewController.swift
//  ListFull
//
//  Created by ian schoenrock on 10/13/18.
//  Copyright © 2018 ian schoenrock. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var secondInput: UITextField!
    
    @IBAction func secondAdd(_ sender: Any) {
        names.append(secondInput.text!)
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
