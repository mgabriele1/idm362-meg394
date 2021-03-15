//
//  SettingsViewController.swift
//  idm362-meg394
//
//  Created by Melissa Gabriele on 3/6/21.
//

import UIKit

class SettingsViewController: UIViewController {
    
    //OUTLETS
    @IBOutlet weak var soundSwitch: UISwitch!
    @IBOutlet weak var closeSettings: UIButton!
    @IBOutlet weak var pinkButtonOut: UIButton!
    @IBOutlet weak var greenButtonOut: UIButton!
    @IBOutlet weak var blueButtonOut: UIButton!
    @IBOutlet weak var orangeButtonOut: UIButton!
    @IBOutlet weak var aquaButtonOut: UIButton!
    @IBOutlet weak var purpleButtonOut: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any after loading view.
    }
    
    //ACTION
    @IBAction func pinkButton(_ sender: UIButton) {
        //background color
        self.view.backgroundColor = UIColor(named: "pink-1")
        //switch color
        soundSwitch.onTintColor = UIColor(named: "pink-2")
        //x color
        closeSettings.tintColor = UIColor(named: "pink-3")
        //shadow on button clicked
        pinkButtonOut.layer.shadowColor = UIColor.white.cgColor
        pinkButtonOut.layer.shadowRadius = 10
        pinkButtonOut.layer.shadowOpacity = 0.85
        //turn off other shadows
        greenButtonOut.layer.shadowOpacity = 0
        blueButtonOut.layer.shadowOpacity = 0
        orangeButtonOut.layer.shadowOpacity = 0
        aquaButtonOut.layer.shadowOpacity = 0
        purpleButtonOut.layer.shadowOpacity = 0
    }
    
    @IBAction func greenButton(_ sender: UIButton) {
        //background color
        self.view.backgroundColor = UIColor(named: "green-1")
        //switch color
        soundSwitch.onTintColor = UIColor(named: "green-2")
        //x color
        closeSettings.tintColor = UIColor(named: "green-3")
        //shadow on button clicked
        greenButtonOut.layer.shadowColor = UIColor.white.cgColor
        greenButtonOut.layer.shadowRadius = 10
        greenButtonOut.layer.shadowOpacity = 0.85
        //turn off other shadows
        pinkButtonOut.layer.shadowOpacity = 0
        blueButtonOut.layer.shadowOpacity = 0
        orangeButtonOut.layer.shadowOpacity = 0
        aquaButtonOut.layer.shadowOpacity = 0
        purpleButtonOut.layer.shadowOpacity = 0
    }
    
    @IBAction func blueButton(_ sender: UIButton) {
        //background color
        self.view.backgroundColor = UIColor(named: "blue-1")
        //switch color
        soundSwitch.onTintColor = UIColor(named: "blue-2")
        //x color
        closeSettings.tintColor = UIColor(named: "blue-3")
        //shadow on button clicked
        blueButtonOut.layer.shadowColor = UIColor.white.cgColor
        blueButtonOut.layer.shadowRadius = 10
        blueButtonOut.layer.shadowOpacity = 0.85
        //turn off other shadows
        pinkButtonOut.layer.shadowOpacity = 0
        greenButtonOut.layer.shadowOpacity = 0
        orangeButtonOut.layer.shadowOpacity = 0
        aquaButtonOut.layer.shadowOpacity = 0
        purpleButtonOut.layer.shadowOpacity = 0
    }
    
    @IBAction func orangeButton(_ sender: UIButton) {
        //background color
        self.view.backgroundColor = UIColor(named: "orange-1")
        //switch color
        soundSwitch.onTintColor = UIColor(named: "orange-2")
        //x color
        closeSettings.tintColor = UIColor(named: "orange-3")
        //shadow on button clicked
        orangeButtonOut.layer.shadowColor = UIColor.white.cgColor
        orangeButtonOut.layer.shadowRadius = 10
        orangeButtonOut.layer.shadowOpacity = 0.85
        //turn off other shadows
        pinkButtonOut.layer.shadowOpacity = 0
        greenButtonOut.layer.shadowOpacity = 0
        blueButtonOut.layer.shadowOpacity = 0
        aquaButtonOut.layer.shadowOpacity = 0
        purpleButtonOut.layer.shadowOpacity = 0
    }
   
    @IBAction func aquaButton(_ sender: UIButton) {
        //background color
        self.view.backgroundColor = UIColor(named: "aqua-1")
        //switch color
        soundSwitch.onTintColor = UIColor(named: "aqua-2")
        //x color
        closeSettings.tintColor = UIColor(named: "aqua-3")
        //shadow on button clicked
        aquaButtonOut.layer.shadowColor = UIColor.white.cgColor
        aquaButtonOut.layer.shadowRadius = 10
        aquaButtonOut.layer.shadowOpacity = 0.85
        //turn off other shadows
        pinkButtonOut.layer.shadowOpacity = 0
        greenButtonOut.layer.shadowOpacity = 0
        blueButtonOut.layer.shadowOpacity = 0
        orangeButtonOut.layer.shadowOpacity = 0
        purpleButtonOut.layer.shadowOpacity = 0
    }
    
    @IBAction func purpleButton(_ sender: UIButton) {
        //background color
        self.view.backgroundColor = UIColor(named: "purple-1")
        //switch color
        soundSwitch.onTintColor = UIColor(named: "purple-2")
        //x color
        closeSettings.tintColor = UIColor(named: "purple-3")
        //shadow on button clicked
        purpleButtonOut.layer.shadowColor = UIColor.white.cgColor
        purpleButtonOut.layer.shadowRadius = 10
        purpleButtonOut.layer.shadowOpacity = 0.85
        //turn off other shadows
        pinkButtonOut.layer.shadowOpacity = 0
        greenButtonOut.layer.shadowOpacity = 0
        blueButtonOut.layer.shadowOpacity = 0
        orangeButtonOut.layer.shadowOpacity = 0
        aquaButtonOut.layer.shadowOpacity = 0
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

} //end
