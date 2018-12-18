//
//  secondViewController.swift
//  iostest11
//
//  Created by student on 2018/12/13.
//  Copyright © 2018年 2016110433. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
//    var name = ""
//    var no = ""
// var delegate:studentprotocol?
    var stu:student!
    @IBOutlet weak var tfno: UITextField!
    @IBOutlet weak var tfname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tfno.text=stu.no
        tfname.text=stu.name
        //self.view.backgroundColor=UIColor.yellow
    }
    @IBAction func close(_ sender: Any) {
        stu.no=tfno.text!
        stu.name=tfname.text!
//        for vc in self.navigationController!.viewControllers{
//            if let firstvc = vc as? firstViewController{
//                firstvc.no=stu.no
//                firstvc.name=stu.name
//            }
//        }
        
        
        
 //       delegate?.change(name: name, no: no)
        
       navigationController?.popViewController(animated: true)
    }
    


}
