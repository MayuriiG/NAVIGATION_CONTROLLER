//
//  SecondViewController.swift
//  Nc-delegate_method
//
//  Created by Mayurii Gajbhiye on 26/11/19.
//  Copyright © 2019 Mayurii Gajbhiye. All rights reserved.
//

import UIKit
//B TO A METHOD 
protocol DataTransfer{

    func labelCreation(fullName:String,contact:String)

}

class SecondViewController: UIViewController {

    var delegate:DataTransfer!

    
    @IBOutlet weak var txtField1: UITextField!
    
    @IBOutlet weak var txtField2: UITextField!
    
   
    

override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnTapped(_ sender: Any) {
    
        //!=   (indicate shouldnot)
        
        if (self.txtField1.text != "" && self.txtField2.text != ""){
         
            dismiss(animated: true)
          
                //data stored in the form of" Dictionary"
           
            let typeFullName:String = self.txtField1.text!
            let typeContact:String = self.txtField2.text!
               // let n:String = self.txtField1.text!
              //  let p:String = self.txtField2.text!
          
        // 1)call this statement after intializing the instance in VC-1
        //2) func labelCreation(fullName:String,contact:String)
    self.delegate.labelCreation(fullName:"\(typeFullName)", contact: "\(typeContact)")
    
    // self.delegate.labelCreation(fullName: <#T##String#>, contact: <#T##String#>)
    //self.delegate.labelCreation(fullName: "\(n)", contact: "\(p)")
           
           
            
                    //very imp braces " for the code
       
        }else
          {
            //for empty blanks- alert]
        let alertcontroller = UIAlertController(title: "", message: "All Fields are Mandatory", preferredStyle: UIAlertController.Style.alert)
        let alertBtn  = UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive, handler: nil)
        alertcontroller.addAction(alertBtn)
        present(alertcontroller, animated: true, completion: nil)
          }
            
        }

    }

