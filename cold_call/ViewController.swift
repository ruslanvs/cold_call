//
//  ViewController.swift
//  cold_call
//
//  Created by Ruslan Suvorov on 3/7/18.
//  Copyright © 2018 Ruslan Suvorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var names = ["Ily", "Spirus", "Michael", "Anna", "Shane"]
    
    @IBOutlet weak var namesLabel: UILabel!
    @IBOutlet weak var numberLable: UILabel!
    @IBOutlet weak var callButton: UIButton!
    
    @IBAction func callButtonPressed(_ sender: UIButton ) {
        let rand = randomNumber()
        namesLabel.text = names[rand]
        numberLable.text = String( rand + 1 )
        numberLable.textColor = color( number: rand + 1 )
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        callButton.layer.cornerRadius = 5
        let rand = randomNumber()
        namesLabel.text = names[rand]
        numberLable.text = String( rand + 1 )
        numberLable.textColor = color( number: rand + 1 )
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomNumber() -> Int {
        let randomNumber = Int( arc4random_uniform( UInt32( names.count ) ) )
        return randomNumber
    }

    func color( number: Int ) -> UIColor {
        let color: UIColor
        if number == 1 || number == 2 {
            color = UIColor.red
        } else if number == 3 || number == 4{
            color = UIColor.orange
        } else {
            color = UIColor.green
        }
        return color
    }
}
