//
//  ViewController.swift
//  TrafficLightSecondApp
//
//  Created by Юлия on 30.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var trafficLightSettingsView: UIStackView!
    @IBOutlet var trafficLightButtonView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightSettingsView.layer.cornerRadius = 50
        trafficLightSettingsView.alpha = 0.2
    }

    @IBAction func trafficLightButtonPressed() {
        
        for _ in 1...3 {
         
        }
        
    }
    
}

