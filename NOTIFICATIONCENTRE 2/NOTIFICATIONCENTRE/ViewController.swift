//
//  ViewController.swift
//  NOTIFICATIONCENTRE
//
//  Created by Gajbhiye Mayuri Krushandeo on 11/24/19.
//  Copyright © 2019 Gajbhiye Mayuri Krushandeo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var firstNLbl: UITextField!
    
    @IBOutlet weak var lastNLbl: UITextField!
    
    @IBOutlet weak var emailIDLbl: UITextField!
    
    
    @IBOutlet weak var mobileNoLbl: UITextField!
    
    
    @IBOutlet weak var cityNLbl: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
 
      //For Recieving the Data form the Post(SecondVC) -Imp statement
        NotificationCenter.default.addObserver(self, selector: #selector(receivedDataFromPost(data:)), name: NSNotification.Name("DataSwift"), object: nil)
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func receivedDataFromPost(data:Notification)
    {
        firstNLbl.text = data.userInfo!["firstName"]! as? String
          print(data.userInfo!["firstName"]! as! String)
        
        print(firstNLbl.text as Any)
        
        lastNLbl.text = data.userInfo!["lastName"]! as? String
        
        emailIDLbl.text = data.userInfo!["emailID"]! as? String
        
        mobileNoLbl.text = data.userInfo!["mobileNo"]! as? String
        
        cityNLbl.text = data.userInfo!["city"]! as? String
    }
    
    @IBAction func nextBtn(_ sender: Any) {
        
        let greenVC = storyboard?.instantiateViewController(withIdentifier: "svc") as! SecondViewController
        
        present(greenVC, animated: true, completion: nil)
     
        //PRESENT METHOD - TO NAVIGATE FROM FIRST VC TO NEXT VC
        
}
}
