//
//  ViewControllerEdit.swift
//  storyboard
//
//  Created by alumno on 29/08/16.
//  Copyright © 2016 Melissa. All rights reserved.
//

import UIKit

class ViewControllerEdit: UIViewController {

    // Outlets from Control View Edit.
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var bCancel: UIButton!
    @IBOutlet weak var bSave: UIButton!
    
    // Variables from other Control Views.
    var name : String!
    var email : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tfName.text = name
        tfEmail.text = email
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if sender as! UIButton == bSave {
            let viewInitial = segue.destinationViewController as! ViewController
            
            viewInitial.name = tfName.text
            viewInitial.email = tfEmail.text
        }
    }

}
