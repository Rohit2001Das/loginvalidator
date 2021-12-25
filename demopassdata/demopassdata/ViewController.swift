//
//  ViewController.swift
//  demopassdata
//
//  Created by ROHIT DAS on 24/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtname: UITextField!
    @IBOutlet weak var txtemail: UITextField!
    @IBAction func `continue`(_ sender: UIButton) {
        if((txtemail.text?.validateEmail())! && txtname.hasText==true && ((txtname.text?.namevalid()) == true)) {
        let sec:SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "sec")as!SecondViewController
            sec.strname = txtname.text
            sec.stremail = txtemail.text
        self.navigationController?.pushViewController(sec, animated: true)
        }
        else if txtname.hasText==false || ((txtname.text?.namevalid()) == false){
            let alert = UIAlertController(title: "Name is not given", message: "Write a valid name", preferredStyle: UIAlertController.Style.alert)

                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                    // show the alert
                    self.present(alert, animated: true, completion: nil)
            
        }
        
        else{
            let alert = UIAlertController(title: "Invalid email id", message: "Write a valid email id", preferredStyle: UIAlertController.Style.alert)

                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                    // show the alert
                    self.present(alert, animated: true, completion: nil)
        }
       
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
extension String {
    func validateEmail() -> Bool {
        let emailRegEx = "^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    func namevalid() -> Bool {
            //Declaring the rule of characters to be used. Applying rule to current state. Verifying the result.
            let regex = "[A-Za-z]{2,}"
            let test = NSPredicate(format: "SELF MATCHES %@", regex)
            let result = test.evaluate(with: self)
            
            return result
        }
}

