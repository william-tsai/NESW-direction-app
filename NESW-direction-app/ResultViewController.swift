//
//  ResultViewController.swift
//  NESW-direction-app
//
//  Created by William Tsai on 1/19/18.
//  Copyright © 2018 William Tsai. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var selectedDirection: String?
    
    @IBOutlet var dismissBtn: UIButton!
    
    @IBAction func dismissBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegueToNeswVC", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dismissBtn.setTitle(selectedDirection, for: .normal)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
