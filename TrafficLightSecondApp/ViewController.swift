

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var trafficLightButton: UIButton!
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }
    override func viewDidLayoutSubviews() {
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
    
    @IBAction func startButtonPressed() {
        trafficLightButton.setTitle("NEXT",
                                    for: .normal)
        
        if trafficLightButton.isEnabled {
            
            if redView.alpha == 1 {
                redView.alpha = lightIsOff
                yellowView.alpha = lightIsOn
            } else if yellowView.alpha == 1 {
                yellowView.alpha = lightIsOff
                greenView.alpha = lightIsOn
            } else if greenView.alpha == 1 {
                greenView.alpha = lightIsOff
                redView.alpha = lightIsOn
            } else {
                redView.alpha = lightIsOn
            }
            
        }
    }
}

