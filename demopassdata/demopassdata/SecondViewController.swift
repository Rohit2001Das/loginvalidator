//
//  SecondViewController.swift
//  demopassdata
//
//  Created by ROHIT DAS on 24/12/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblname: UITextField!
    @IBOutlet weak var lblemail: UITextField!
    
    var strname:String? = nil
    var stremail:String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        lblname.text = strname
        lblemail.text = stremail

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
