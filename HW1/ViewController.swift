//
//  ViewController.swift
//  HW1
//
//  Created by Наталья Рогова on 27.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yelowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        yelowView.alpha = 0.3
        greenView.alpha = 0.3
        startButton.layer.cornerRadius = 10
        redView.layer.cornerRadius = redView.bounds.size.width / 2
        yelowView.layer.cornerRadius = yelowView.bounds.size.width / 2
        greenView.layer.cornerRadius = greenView.bounds.size.width / 2
    }
    
    var numer = -1
    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)

        numer += 1
        numer = numer % 3
        if numer == 0 {
            redView.alpha = 1
            greenView.alpha = 0.3
        } else if numer == 1 {
            yelowView.alpha = 1
            redView.alpha = 0.3
        } else if numer == 2 {
            greenView.alpha = 1
            yelowView.alpha = 0.3
        }
    }
    
}
