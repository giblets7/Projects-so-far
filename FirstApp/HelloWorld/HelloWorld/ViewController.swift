//
//  ViewController.swift
//  HelloWorld
//
//  Created by Graeme Robertson on 24/03/2017.
//  Copyright © 2017 Graeme Robertson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var logoImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgImageView.isHidden = true
        logoImageView.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func welcomeButtonWasPressed(_ sender: Any) {
        bgImageView.isHidden = false
        logoImageView.isHidden = false
    }

}

