//
//  SettingsViewController.swift
//  idm362-meg394
//
//  Created by Melissa Gabriele on 3/6/21.
//

import UIKit

class SettingsViewController: UIViewController {
    
    //OUTLETS
    //sound switch and on/off
    @IBOutlet weak var soundSwitch: UISwitch!
    @IBOutlet weak var onLabel: UILabel!
    @IBOutlet weak var offLabel: UILabel!
    
    //close settings button
    @IBOutlet weak var closeSettings: UIButton!
    
    //theme buttons
    @IBOutlet weak var pinkButtonOut: UIButton!
    @IBOutlet weak var greenButtonOut: UIButton!
    @IBOutlet weak var blueButtonOut: UIButton!
    @IBOutlet weak var orangeButtonOut: UIButton!
    @IBOutlet weak var aquaButtonOut: UIButton!
    @IBOutlet weak var purpleButtonOut: UIButton!
    
    //sound stack view
    @IBOutlet weak var soundStack: UIStackView!
    
    //VARIABLES
    //default values for passed variables
    var themeColorValue:String = "orange"
    var isSoundOnValue:Bool = true
    
    //check if save button pressed
    var checkIfSaved:Bool = false
    
    //AFTER VIEW LOAD
    override func viewDidLoad() {
        super.viewDidLoad() // Do any after loading
        
        //orange button highlighted on click
        orangeButtonOut.layer.shadowColor = UIColor.white.cgColor
        orangeButtonOut.layer.shadowRadius = 10
        orangeButtonOut.layer.shadowOpacity = 0.9
        
        //sound view to front
        self.view.bringSubviewToFront(soundStack)
        
        //set switch on/off opacity
        onLabel.alpha = 1
        offLabel.alpha = 0.5
        
    } //end view load
    
    //ACTION
    //switch
    @IBAction func soundSwitch(_ sender: UISwitch) {
        if (sender.isOn){
            isSoundOnValue = true
            onLabel.alpha = 1
            offLabel.alpha = 0.5
        } else {
            isSoundOnValue = false
            onLabel.alpha = 0.5
            offLabel.alpha = 1
        }
    }
    
    //color buttons
    @IBAction func pinkButton(_ sender: UIButton) {
        //background color
            self.view.backgroundColor = UIColor(named: "pink-1")
            //switch color
            soundSwitch.onTintColor = UIColor(named: "pink-2")
            //x color
            closeSettings.tintColor = UIColor(named: "pink-3")
            //shadow on button clicked
            pinkButtonOut.layer.shadowColor = UIColor.white.cgColor
            pinkButtonOut.layer.shadowRadius = 15
            pinkButtonOut.layer.shadowOpacity = 0.9
            //turn off other shadows
            greenButtonOut.layer.shadowOpacity = 0
            blueButtonOut.layer.shadowOpacity = 0
            orangeButtonOut.layer.shadowOpacity = 0
            aquaButtonOut.layer.shadowOpacity = 0
            purpleButtonOut.layer.shadowOpacity = 0
            //set pass variable color
            themeColorValue = "pink"
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
        greenButtonOut.layer.shadowRadius = 15
        greenButtonOut.layer.shadowOpacity = 0.9
        //turn off other shadows
        pinkButtonOut.layer.shadowOpacity = 0
        blueButtonOut.layer.shadowOpacity = 0
        orangeButtonOut.layer.shadowOpacity = 0
        aquaButtonOut.layer.shadowOpacity = 0
        purpleButtonOut.layer.shadowOpacity = 0
        //set pass variable color
        themeColorValue = "green"
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
        blueButtonOut.layer.shadowRadius = 15
        blueButtonOut.layer.shadowOpacity = 0.9
        //turn off other shadows
        pinkButtonOut.layer.shadowOpacity = 0
        greenButtonOut.layer.shadowOpacity = 0
        orangeButtonOut.layer.shadowOpacity = 0
        aquaButtonOut.layer.shadowOpacity = 0
        purpleButtonOut.layer.shadowOpacity = 0
        //set pass variable color
        themeColorValue = "blue"
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
        orangeButtonOut.layer.shadowRadius = 15
        orangeButtonOut.layer.shadowOpacity = 0.9
        //turn off other shadows
        pinkButtonOut.layer.shadowOpacity = 0
        greenButtonOut.layer.shadowOpacity = 0
        blueButtonOut.layer.shadowOpacity = 0
        aquaButtonOut.layer.shadowOpacity = 0
        purpleButtonOut.layer.shadowOpacity = 0
        //set pass variable color
        themeColorValue = "orange"
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
        aquaButtonOut.layer.shadowRadius = 15
        aquaButtonOut.layer.shadowOpacity = 0.9
        //turn off other shadows
        pinkButtonOut.layer.shadowOpacity = 0
        greenButtonOut.layer.shadowOpacity = 0
        blueButtonOut.layer.shadowOpacity = 0
        orangeButtonOut.layer.shadowOpacity = 0
        purpleButtonOut.layer.shadowOpacity = 0
        //set pass variable color
        themeColorValue = "aqua"
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
        purpleButtonOut.layer.shadowRadius = 15
        purpleButtonOut.layer.shadowOpacity = 0.9
        //turn off other shadows
        pinkButtonOut.layer.shadowOpacity = 0
        greenButtonOut.layer.shadowOpacity = 0
        blueButtonOut.layer.shadowOpacity = 0
        orangeButtonOut.layer.shadowOpacity = 0
        aquaButtonOut.layer.shadowOpacity = 0
        //set pass variable color
        themeColorValue = "purple"
    }
    
    //save settings button
    @IBAction func saveSettings(_ sender: UIButton) {
        //show alert
        let settingsSavedAlert = UIAlertController(title: "Save Settings", message: "Are you sure?", preferredStyle: .actionSheet)
        
        settingsSavedAlert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {(UIAlertAction) in
            self.checkIfSaved = true
        }))
        
        settingsSavedAlert.addAction(UIAlertAction(title: "No", style: .destructive, handler: {(UIAlertAction) in
            self.checkIfSaved = false
        }))
        
        self.present(settingsSavedAlert, animated: true)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "showConvert" && checkIfSaved == true) {
            let convertView = segue.destination as! ViewController
            convertView.themeColor = themeColorValue
            convertView.isSoundOn = isSoundOnValue
        }
    }

} //end
