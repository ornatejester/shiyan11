//
//  ViewController.swift
//  iostest11
//
//  Created by student on 2018/12/13.
//  Copyright © 2018年 2016110433. All rights reserved.
//

import UIKit
protocol studentprotocol{
    func change(name:String,no:String)
}

class firstViewController: UIViewController {
    var stu = student()
//    func change(name: String, no: String) {
//        self.name=name
//        self.no=no
//    }
    
//    var name = ""
//    var no = ""
    @IBOutlet weak var tfno: UITextField!
    @IBOutlet weak var tfname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        tfno.text=stu.no
        tfname.text=stu.name
    }
    @IBAction func showthirdvc(_ sender: Any) {
        let thirdvc=UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "thirdvc")
        present(thirdvc,animated: true,completion: nil)
    }
    @IBAction func showsecvc(_ sender: Any) {
        stu.no = tfno.text!
        stu.name = tfname.text!
        let secvc=UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secondvc") as! secondViewController
        secvc.stu=stu
//        secvc.name=stu.name
//        secvc.no=stu.no
       // secvc.delegate=self
       self.navigationController?.pushViewController(secvc, animated: true)
    }
}

