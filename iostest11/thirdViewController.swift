//
//  thirdViewController.swift
//  iostest11
//
//  Created by student on 2018/12/13.
//  Copyright © 2018年 2016110433. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {

    @IBOutlet weak var tfno: UITextField!
    @IBOutlet weak var tfname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
