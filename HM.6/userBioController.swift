//
//  userBioController.swift
//  HM.6
//
//  Created by Hrayr on 11/10/23.
//

import UIKit

final class userBioController: UIViewController {
    @IBOutlet weak var bioINfo: UILabel!
    
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
    
    var userBioInfo = userBio.bioInit()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.aaddVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        bioINfo.text = userBioInfo.bio
    }
    
}


