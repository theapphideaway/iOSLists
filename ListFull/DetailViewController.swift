//
//  DetailViewController.swift
//  ListFull
//
//  Created by ian schoenrock on 9/30/18.
//  Copyright © 2018 ian schoenrock. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailText.text = names[myIndex]
        detailText.sizeToFit()
    }

}
