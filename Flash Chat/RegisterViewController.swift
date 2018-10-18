//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    
    //Pre-linked IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    //life cycle
    // app launched >> app visible >> app recedes into Background >> resource reclaimed
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
    @IBAction func registerPressed(_ sender: AnyObject) {
        // dothings in firebase
        // firebase has method
        
        //TODO: Set up a new user on our Firbase database
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                print(error ?? "error")
            } else {
                //success
                print("Registeration Success")
                // self cant use in closure
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
        //call back or completion Handler  will get triggered when process completed
        //  What is completion Handler
        // Completion >> tells after done

        
        
    } 
    
    
}
