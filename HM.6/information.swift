//
//  information.swift
//  HM.6
//
//  Created by Hrayr on 11/10/23.
//

import Foundation
import UIKit


struct UserInformation {
    var name: String
    var lastName: String
    var poction: String
    var picture: UIImage
}

struct userBio {
    var bio: String
}

extension UserInformation {
    static func userinit() -> UserInformation{
        UserInformation.init(name: "Naruto", lastName: "Uzumaki", poction: "Hokage", picture: UIImage(named: "1366_2000")!)
    }
}

extension userBio {
    static func bioInit() -> userBio {
        userBio.init(bio: "Наруто - сирота, который был оставлен в Конохагакуре после того, как Девятихвостый Демон-лис напал на деревню и его родители пожертвовали собой, чтобы защитить Коноху. В своем детстве он был известен как шумливый и неуклюжий парень, который стремился получить признание своих сверстников и стать Хокаге (главой деревни). Наруто известен своей необычной силой - внутри него находится Девятихвостый Демон-лис (Курама), который был запечатан в нем при его рождении. Он прошел через множество испытаний и приключений, став мощным ниндзя и приобретя друзей, таких как Саске и Сакура. Главная цель Наруто - стать Хокаге и защищать свою деревню. Он также стремится изменить отношение других к себе и доказать, что он достоин уважения и признания. Его история охватывает множество событий, включая его учебу в академии, участие в многочисленных битвах и важные моменты в его жизни.")
    }
}
