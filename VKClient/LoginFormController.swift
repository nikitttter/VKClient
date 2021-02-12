//
//  LoginFormController.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 12.02.2021.
//

import UIKit

class LoginFormController: UIViewController {

    @IBOutlet var SigninButton: UIButton!
    @IBOutlet var loginInput: UITextField!
    @IBOutlet var passwordInput: UITextField!
    @IBOutlet var ScrollView: UIScrollView!
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        if loginInput.text == "Hello" && passwordInput.text == "World!"{
        
            let storyBoard = self.storyboard
            let viewController = storyBoard?.instantiateViewController(withIdentifier: "MainContentView")
            
            viewController?.modalPresentationStyle = .fullScreen
            self.present(viewController!, animated: true, completion: nil)
        }
    }
    
    @objc func keyboardWasShown(notification: Notification){
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height  , right: 0.0)
                
    
        
        
        self.ScrollView?.contentInset = contentInsets
        ScrollView?.scrollIndicatorInsets = contentInsets
    }
    
    @objc func keyboardWillBeHidden(notification : Notification){
        let contentInsets = UIEdgeInsets.zero
        self.ScrollView?.contentInset = contentInsets
    }
    
    @objc func hideKeyboard(){
        self.ScrollView?.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let hideKeyboadrGesture = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboard))
        self.ScrollView?.addGestureRecognizer(hideKeyboadrGesture)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        SigninButton.layer.cornerRadius = CGFloat(5)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    

}
