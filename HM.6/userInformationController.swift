//
//  userInformationController.swift
//  HM.6
//
//  Created by Hrayr on 11/10/23.
//

import UIKit

final class userInformationController: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var poction: UILabel!
    
    @IBOutlet weak var fotoUzer: UIImageView!
    
    private let primaryColor = UIColor(
        red: 150/255,
        green: 130/255,
        blue: 80/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    var userinf = UserInformation.userinit()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.aaddVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)

        name.text = userinf.name
        lastName.text = userinf.lastName
        poction.text = userinf.poction
        fotoUzer.image = userinf.picture
        
    }
    
}

extension UIView {
    func aaddVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
