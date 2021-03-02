//
//  RecipeViewController.swift
//  idm362-meg394
//
//  Created by Melissa Gabriele on 3/1/21.
//

import UIKit

class RecipeViewController: UIViewController {

    //OUTLETS.
    
    
    //AFTER LOAD FUNCTION.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do after loading.
    }
    
    //ACTIONS.
    
    //EXTRA FUNCTIONS.
    //disable keyboard when click elsewhere.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }


}
