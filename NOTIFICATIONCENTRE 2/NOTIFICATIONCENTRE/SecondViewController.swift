//
//  SecondViewController.swift
//  NOTIFICATIONCENTRE
//
//  Created by Gajbhiye Mayuri Krushandeo on 11/24/19.
//  Copyright © 2019 Gajbhiye Mayuri Krushandeo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstNTF: UITextField!
    
    
    @IBOutlet weak var lastNTF: UITextField!
    
    @IBOutlet weak var emailID_TF: UITextField!
    
    @IBOutlet weak var mobileNoTF: UITextField!
    
    @IBOutlet weak var cityTF: UITextField!
    
    var alertController :UIAlertController!
    var  alertAction:UIAlertAction!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       //keyboard Format for Typing
        firstNTF.keyboardType = UIKeyboardType.namePhonePad
        lastNTF.keyboardType = UIKeyboardType.namePhonePad
        emailID_TF.keyboardType = UIKeyboardType.emailAddress
        mobileNoTF.keyboardType = UIKeyboardType.phonePad
        cityTF.keyboardType = UIKeyboardType.namePhonePad
        
    }
    
   //posting
    
    @IBAction func submitBtn(_ sender: Any) {
        
        if((firstNTF.text?.isEmpty)! || (lastNTF.text?.isEmpty)! || (emailID_TF.text?.isEmpty)! || (mobileNoTF.text?.isEmpty)! || (cityTF.text?.isEmpty)!)
        {
            
            getAlert(titleName: "Registered", messageDetails: "Please Enter All Details")
            
        }else{
    //STORING THE DATA IN THE "DICTIONARY FORMAT"  - NOTE:_NO ARRAY FORMAT ALLOWED -
            let dataDictn = ["firstName":firstNTF.text!,"lastName":lastNTF.text!,"emailID":emailID_TF.text!,"mobileNo":mobileNoTF.text!,"city":cityTF.text!]
            
      //POSTING THE DATA FROM "SECONDVC -TO - VIEWCONTROLLER"
            NotificationCenter.default.post(name: NSNotification.Name("DataSwift"), object: self, userInfo:dataDictn)
   
       //Dismiss the Data After Its Been Filled
            dismiss(animated: true, completion: nil)
            
            
        }
    }
    
    func getAlert(titleName:String,messageDetails:String){
        
        alertController = UIAlertController(title: titleName, message: messageDetails, preferredStyle: UIAlertController.Style.alert)
        alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    
}
