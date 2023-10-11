

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    
    @IBOutlet weak var logIn: UIButton!
    
    private func alertAction(title: String, message: String) {
        let alertPassword = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertPassword.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertPassword, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let user = "1"
        let password = "1"
        
        guard userName.text == user, userPassword.text == password else {
            alertAction(title: "Ошибка", message: "Неверное имя пользователя или пароль")
            return false
        }
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "welcomeSegue" {
            if let destinationVC = segue.destination as? WelcomeViewController {
                destinationVC.userLabelName = userName.text
            }
        }
        
    }
    
    @IBAction func forgotNamePresed() {
        alertAction(title: "Oops!", message: "Your name is user🙂")
        
    }
    
    @IBAction func forgotPasswordPresed() {
        alertAction(title: "Oops!", message: "Your password is password😉")
        
    }
    
    @IBAction func unwindToLogin(for segue: UIStoryboardSegue) {
        userName.text = ""
        userPassword.text = ""
    }
}

