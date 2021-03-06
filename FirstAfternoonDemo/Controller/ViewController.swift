//
//  ViewController.swift
//  FirstAfternoonDemo
//
//  Created by Burr, Alan on 10/6/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var FirstButton: UIButton!
    
    @IBAction func FirstMethod(_ sender: UIButton)
    {
        FirstButton.backgroundColor = .black
        
        if (FirstButton.backgroundColor == .orange)
        {
           FirstButton.backgroundColor = .black
        }
        else
        {
            FirstButton.backgroundColor = .orange
        }
        view.backgroundColor = createRandomColor()
    }
    
    private func createRandomColor() -> UIColor
    {
        let newColor :UIColor
        let redValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let greenValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let blueValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        newColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat(1.0))
        
        return newColor
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

