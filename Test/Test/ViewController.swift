//
//  ViewController.swift
//  Test
//
//  Created by Дьяков Даниил on 02.07.2023.
//

import UIKit


class MistakeViewController: UIViewController {

}
class CorrectViewController: UIViewController {
    
}

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var authorizeButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    let password: String = "1234"
    var flag: Bool = true
    var login: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        if (passwordTextField.text == password && loginTextField.text?.count == 11 && ((loginTextField.text?.contains("8908*")) != nil)) {
            flag = true
        } else {
            flag = false
        }
        
        if (flag == true) {
            guard let vc = storyboard?.instantiateViewController(withIdentifier: "CorrectViewController") else { return }
            navigationController?.pushViewController(vc, animated: true)
        } else {
            guard let vc = storyboard?.instantiateViewController(withIdentifier: "MistakeViewController") else { return }
            present(vc, animated: true)
            
        }
        
    }
}


