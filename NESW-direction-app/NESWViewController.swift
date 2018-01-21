//
//  ViewController.swift
//  NESW-direction-app
//
//  Created by William Tsai on 1/17/18.
//  Copyright © 2018 William Tsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // [N, E, S, W]
    @IBOutlet var btnGroup: [UIButton]!
    
    var direction: String!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        for button in btnGroup {
            if sender == button {
                direction = button.currentTitle
            }
        }
        performSegue(withIdentifier: "modalSegueToResultVC", sender: direction)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ResultViewController
        print(sender)
        destination.selectedDirection = direction
    }
    
    @IBAction func unwindToNeswVC(through segue: UIStoryboardSegue) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

