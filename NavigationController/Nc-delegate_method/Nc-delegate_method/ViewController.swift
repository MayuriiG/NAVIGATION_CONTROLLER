//
//  ViewController.swift
//  Nc-delegate_method
//
//  Created by Mayurii Gajbhiye on 26/11/19.
//  Copyright © 2019 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

class ViewController: UIViewController,DataTransfer {

    //BASIC -1 Start with VC1 by formation of instances and then
    //      -2 use of present method for navigating from firstVC to SecondVC
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
      var labelY = 180
    func labelCreation(fullName:String,contact:String){
    //"y position" is needed for the   display of txtfield1 & 2 in position
    // y:labelY
                   let label1 = UILabel()
                   label1.frame = CGRect(x: 20, y: labelY, width: 180, height: 32)
                   label1.backgroundColor = UIColor.yellow
                   label1.textAlignment = .center
                   label1.text = fullName // "\(fullName)"
                   label1.textColor = UIColor.purple
                   label1.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 15.0)
                   view.addSubview(label1)
                   
                   
                   let label2 = UILabel()
                   label2.frame = CGRect(x: 220, y: labelY, width: 180, height: 32)
                   label2.backgroundColor = UIColor.white
                   label2.textAlignment = .center
                   label2.text = contact
                   label2.font = UIFont(name: "Marker Felt", size: 15.0)
                   view.addSubview(label2)
                   
                   labelY = labelY + 50
               }
                   
    @IBAction func addOnTappedBtn(_ sender: Any) {
 
    //  let  connectVC = self.storyboard?.instantiateViewController(identifier: <#T##String#>)
        
        let connectVC = self.storyboard?.instantiateViewController(identifier: "secVC")as!SecondViewController
         //tableview.delegate =  self
        connectVC.delegate = self //passing the reference of b-a (addres )
        
        //write dataTransfer in ""class"" otherwise it will give error....!
        present(connectVC, animated: true) {
            
        }
 
    }
    

}

