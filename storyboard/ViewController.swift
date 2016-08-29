//
//  ViewController.swift
//  storyboard
//
//  Created by alumno on 29/08/16.
//  Copyright © 2016 Melissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets from Control View.
    @IBOutlet weak var imgPhoto: UIImageView!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    // Variables from other Control Views.
    var name : String!
    var email : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation methods
    
    @IBAction func unwindInformation(sender : UIStoryboardSegue) {
        // This methods has no content.
        // It is used to go back.
    }
    
    @IBAction func unwindEdit(sender : UIStoryboardSegue) {
        tfName.text = name
        tfEmail.text = email
    }
    
    // In this function we share the information from the other ViewControllers.
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "info" {
            let viewInfo = segue.destinationViewController as! ViewControllerInformation
            viewInfo.image = imgPhoto.image
            viewInfo.height = imgPhoto.frame.size.height
            viewInfo.width = imgPhoto.frame.size.width
        }
        else if segue.identifier == "edit" {
            let viewEdit = segue.destinationViewController as! ViewControllerEdit
            viewEdit.name = tfName.text
            viewEdit.email = tfEmail.text
        }
    }

}

