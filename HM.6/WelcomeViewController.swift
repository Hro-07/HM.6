//
//  WelcomeViewController.swift
//  HM.6
//
//  Created by Hrayr on 6/10/23.
//
import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var userLabel: UILabel!
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    var userLabelName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        if let userLabelName = userLabelName {
            userLabel.text = "\(userLabelName)!"
        } else {
            userLabel.text = "Welcome!"
        }
    }
    
}
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
