//
//  LoginViewController.swift
//  MovieApp
//
//  Created by Minjing Shi on 5/24/19.
//  Copyright © 2019 Minjing Shi. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    @IBAction func OnLogin(_ sender: Any) {
        loginUser()
    }
    
    @IBAction func onsignup(_ sender: Any) {
        registerUser()
    }
    
    func loginUser() {
        
        let username = Username.text ?? ""
        let password = Password.text ?? ""
        
        PFUser.logInWithUsername(inBackground: username, password: password) { (user: PFUser?, error: Error?) in
            if let error = error {
                print("User log in failed: \(error.localizedDescription)")
            } else {
                print("User logged in successfully")
                self.performSegue(withIdentifier: "Segg", sender: nil)
                // display view controller that needs to shown after successful login
            //storyboard!.instantiateInitialViewController(withIdentifier: "HomeViewController")
            }
        }
    }
    func registerUser() {
        // initialize a user object
        let newUser = PFUser()
        
        // set user properties
        newUser.username = Username.text
        newUser.password = Password.text
        
        // call sign up function on the object
        newUser.signUpInBackground { (success: Bool, error: Error?) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                print("User Registered successfully")
                self.performSegue(withIdentifier: "Segg", sender: nil)
                // manually segue to logged in view
                
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
