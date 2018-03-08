//
//  ViewController.swift
//  cold_call
//
//  Created by Ruslan Suvorov on 3/7/18.
//  Copyright © 2018 Ruslan Suvorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var names = ["Ily", "Spirus", "Michael", "Anna"]
    
    @IBOutlet weak var namesLabel: UILabel!
    @IBOutlet weak var callButton: UIButton!
    
    @IBAction func callButtonPressed(_ sender: UIButton ) {
        namesLabel.text = names[Int( arc4random_uniform( 4 ) )]
        print( "call button pressed" )
//        updateUI()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        callButton.layer.cornerRadius = 5
        namesLabel.text = names[Int( arc4random_uniform( 4 ) )]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
