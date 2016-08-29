//
//  ViewControllerInformation.swift
//  storyboard
//
//  Created by alumno on 29/08/16.
//  Copyright © 2016 Melissa. All rights reserved.
//

import UIKit

class ViewControllerInformation: UIViewController {

    // Outlets from the Control View Information.
    @IBOutlet weak var imgPhoto: UIImageView!
    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var tfWidth: UITextField!
    
    // Variables from other Control Views.
    var image : UIImage!
    var height : CGFloat!
    var width : CGFloat!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgPhoto.image = image
        tfHeight.text = String(height)
        tfWidth.text = String(width)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
