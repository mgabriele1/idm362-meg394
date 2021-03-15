//
//  ViewController.swift
//  idm362-meg394
//
//  Created by Melissa Gabriele on 1/20/21.
//

import UIKit

class ViewController: UIViewController {
    
    //OUTLETS.
    @IBOutlet weak var inputField: UITextField!
    
    //AFTER LOAD FUNCTION.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do after loading.
        inputField.keyboardType = .numberPad //numeric keyboaed
    }
    
    //ACTIONS.
    
    //EXTRA FUNCTIONS.
    //disable keyboard when click elsewhere
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }


}

