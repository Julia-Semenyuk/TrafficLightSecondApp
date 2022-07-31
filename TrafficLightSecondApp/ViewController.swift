//
//  ViewController.swift
//  TrafficLightSecondApp
//
//  Created by Юлия on 30.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var trafficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 104
        yellowView.layer.cornerRadius = 104
        greenView.layer.cornerRadius = 104
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }

    // Мой светофор конечно не работает, но я очень старалась)
    
    @IBAction func startButtonPressed() {
        trafficLightButton.setTitle("NEXT",
                                    for: .normal)
        
        if trafficLightButton.isEnabled {
            
            if (redView != nil) == true {
                var statusOld = redView.alpha = 1
                (redView != nil) == false
                (yellowView != nil) == true
            }
            
            
            if  (greenView != nil) == true {
                var statusOld = greenView.alpha = 1
                (greenView != nil) == false
                (yellowView != nil) == true
            }
            
            if  (yellowView != nil) == true {
                (yellowView != nil) == false
                if var statusOld = redView.alpha = 1 {
                    (greenView != nil) == false
                } else {
                    (yellowView != nil) == true
                }
            }
        }
        
        
    }
    
}


