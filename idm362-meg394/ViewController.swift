//
//  ViewController.swift
//  idm362-meg394
//
//  Created by Melissa Gabriele on 1/20/21.
//

import UIKit
//Add audio and video library
import AVFoundation

class ViewController: UIViewController {
    
    //OUTLETS.
    //input field
    @IBOutlet weak var inputField: UITextField!
    
    //output field
    @IBOutlet weak var outputField: UITextField!
    
    //input measurement buttons
    @IBOutlet weak var mgInputButton: UIButton!
    @IBOutlet weak var tspInputButton: UIButton!
    @IBOutlet weak var tbspInputButton: UIButton!
    @IBOutlet weak var cupInputButton: UIButton!
    
    //output measurement buttons
    @IBOutlet weak var mgOutputButton: UIButton!
    @IBOutlet weak var tspOutputButton: UIButton!
    @IBOutlet weak var tbspOutputButton: UIButton!
    @IBOutlet weak var cupOutputButton: UIButton!
    
    //measurement labels
    @IBOutlet weak var inputMeasurement: UILabel!
    @IBOutlet weak var outputMeasurement: UILabel!
    
    //outlets for theme
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var arrowColor1: UIView!
    @IBOutlet weak var arrowColor2: UIImageView!
    @IBOutlet weak var arrowBack: UIView!
    
    //convert button
    @IBOutlet weak var convertButtonOutput: UIButton!
    
    //VARIABLES
    //audio variable
    var audioPlayer = AVAudioPlayer()
    
    //measurement variables
    var milliliter: Float = 1
    var teaspoon: Float = 1/4.9289
    var tablespoon: Float = 1/14.7868
    var cup: Float = 1/236.588
    
    //in and out variables
    var inMeasure: Float = 0
    var outMeasure: Float = 0
    
    //passing
    var themeColor:String = "orange"
    var isSoundOn:Bool = true
    
    var backThemeValue:String = "orange"
    var backSoundValue:Bool = true
    
    //convert counter
    var convertCounter: Int = 0
    
    //AFTER LOAD FUNCTION.
    override func viewDidLoad() {
        super.viewDidLoad() // Do after loading.
        
        //input numeric keyboard
        inputField.keyboardType = .decimalPad
        inputField.text = "0.00"
        
        //input/output border off
        inputField.borderStyle = UITextField.BorderStyle.none
        outputField.borderStyle = UITextField.BorderStyle.none
        
        //padding for input measurement buttons
        mgInputButton.imageEdgeInsets = UIEdgeInsets(top: 12, left: 10, bottom: 12, right: 10)
        tspInputButton.imageEdgeInsets = UIEdgeInsets(top: 10, left: 15, bottom: 10, right: 15)
        tbspInputButton.imageEdgeInsets = UIEdgeInsets(top: 10, left: 15, bottom: 10, right: 15)
        cupInputButton.imageEdgeInsets = UIEdgeInsets(top: 12, left: 10, bottom: 12, right: 10)
        
        //padding for output measurement buttons
        mgOutputButton.imageEdgeInsets = UIEdgeInsets(top: 12, left: 10, bottom: 12, right: 10)
        tspOutputButton.imageEdgeInsets = UIEdgeInsets(top: 10, left: 15, bottom: 10, right: 15)
        tbspOutputButton.imageEdgeInsets = UIEdgeInsets(top: 10, left: 15, bottom: 10, right: 15)
        cupOutputButton.imageEdgeInsets = UIEdgeInsets(top: 12, left: 10, bottom: 12, right: 10)
        
        //button opacity 50% at start
        mgInputButton.alpha = 0.5
        tspInputButton.alpha = 0.5
        tbspInputButton.alpha = 0.5
        cupInputButton.alpha = 0.5
        mgOutputButton.alpha = 0.5
        tspOutputButton.alpha = 0.5
        tbspOutputButton.alpha = 0.5
        cupOutputButton.alpha = 0.5
        
        //default in/out measurement
        inputMeasurement.text = "MEASUREMENT"
        outputMeasurement.text = "MEASUREMENT"
        
        //load audio file
        let yumSound = Bundle.main.path(forResource: "sounds/yumyums", ofType: "mp3")
        
        do {
            audioPlayer = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: yumSound!))
            audioPlayer.prepareToPlay()
        } catch {
            print(error)
        }
        
        //PASSED VARIABLES
        //set equal to other passed to pass back
        backSoundValue = isSoundOn
        backThemeValue = themeColor
        
        //toggle sound
        if (isSoundOn == true) {
            audioPlayer.volume = 1
        } else {
            audioPlayer.volume = 0
        }
        
        //change theme color
        if (themeColor == "pink") {
            //background color
            self.view.backgroundColor = UIColor(named: "pink-1")
            //button color
            mgInputButton.tintColor = UIColor(named: "pink-3")
            mgOutputButton.tintColor = UIColor(named: "pink-3")
            tspInputButton.tintColor = UIColor(named: "pink-3")
            tspOutputButton.tintColor = UIColor(named: "pink-3")
            tbspInputButton.tintColor = UIColor(named: "pink-3")
            tbspOutputButton.tintColor = UIColor(named: "pink-3")
            cupInputButton.tintColor = UIColor(named: "pink-3")
            cupOutputButton.tintColor = UIColor(named: "pink-3")
            //settings and arrow color
            settingsButton.tintColor = UIColor(named: "pink-3")
            arrowColor1.backgroundColor = UIColor(named: "pink-3")
            arrowColor2.tintColor = UIColor(named: "pink-3")
            arrowBack.backgroundColor = UIColor(named: "pink-2")
        } else if (themeColor == "green") {
            //background color
            self.view.backgroundColor = UIColor(named: "green-1")
            //button color
            mgInputButton.tintColor = UIColor(named: "green-3")
            mgOutputButton.tintColor = UIColor(named: "green-3")
            tspInputButton.tintColor = UIColor(named: "green-3")
            tspOutputButton.tintColor = UIColor(named: "green-3")
            tbspInputButton.tintColor = UIColor(named: "green-3")
            tbspOutputButton.tintColor = UIColor(named: "green-3")
            cupInputButton.tintColor = UIColor(named: "green-3")
            cupOutputButton.tintColor = UIColor(named: "green-3")
            //settings and arrow color
            settingsButton.tintColor = UIColor(named: "green-3")
            arrowColor1.backgroundColor = UIColor(named: "green-3")
            arrowColor2.tintColor = UIColor(named: "green-3")
            arrowBack.backgroundColor = UIColor(named: "green-2")
        } else if (themeColor == "blue") {
            //background color
            self.view.backgroundColor = UIColor(named: "blue-1")
            //button color
            mgInputButton.tintColor = UIColor(named: "blue-3")
            mgOutputButton.tintColor = UIColor(named: "blue-3")
            tspInputButton.tintColor = UIColor(named: "blue-3")
            tspOutputButton.tintColor = UIColor(named: "blue-3")
            tbspInputButton.tintColor = UIColor(named: "blue-3")
            tbspOutputButton.tintColor = UIColor(named: "blue-3")
            cupInputButton.tintColor = UIColor(named: "blue-3")
            cupOutputButton.tintColor = UIColor(named: "blue-3")
            //settings and arrow color
            settingsButton.tintColor = UIColor(named: "blue-3")
            arrowColor1.backgroundColor = UIColor(named: "blue-3")
            arrowColor2.tintColor = UIColor(named: "blue-3")
            arrowBack.backgroundColor = UIColor(named: "blue-2")
        } else if (themeColor == "orange") {
            //background color
            self.view.backgroundColor = UIColor(named: "orange-1")
            //button color
            mgInputButton.tintColor = UIColor(named: "orange-3")
            mgOutputButton.tintColor = UIColor(named: "orange-3")
            tspInputButton.tintColor = UIColor(named: "orange-3")
            tspOutputButton.tintColor = UIColor(named: "orange-3")
            tbspInputButton.tintColor = UIColor(named: "orange-3")
            tbspOutputButton.tintColor = UIColor(named: "orange-3")
            cupInputButton.tintColor = UIColor(named: "orange-3")
            cupOutputButton.tintColor = UIColor(named: "orange-3")
            //settings and arrow color
            settingsButton.tintColor = UIColor(named: "orange-3")
            arrowColor1.backgroundColor = UIColor(named: "orange-3")
            arrowColor2.tintColor = UIColor(named: "orange-3")
            arrowBack.backgroundColor = UIColor(named: "orange-2")
        } else if (themeColor == "aqua") {
            //background color
            self.view.backgroundColor = UIColor(named: "aqua-1")
            //button color
            mgInputButton.tintColor = UIColor(named: "aqua-3")
            mgOutputButton.tintColor = UIColor(named: "aqua-3")
            tspInputButton.tintColor = UIColor(named: "aqua-3")
            tspOutputButton.tintColor = UIColor(named: "aqua-3")
            tbspInputButton.tintColor = UIColor(named: "aqua-3")
            tbspOutputButton.tintColor = UIColor(named: "aqua-3")
            cupInputButton.tintColor = UIColor(named: "aqua-3")
            cupOutputButton.tintColor = UIColor(named: "aqua-3")
            //settings and arrow color
            settingsButton.tintColor = UIColor(named: "aqua-3")
            arrowColor1.backgroundColor = UIColor(named: "aqua-3")
            arrowColor2.tintColor = UIColor(named: "aqua-3")
            arrowBack.backgroundColor = UIColor(named: "aqua-2")
        } else if (themeColor == "purple") {
            //background color
            self.view.backgroundColor = UIColor(named: "purple-1")
            //button color
            mgInputButton.tintColor = UIColor(named: "purple-3")
            mgOutputButton.tintColor = UIColor(named: "purple-3")
            tspInputButton.tintColor = UIColor(named: "purple-3")
            tspOutputButton.tintColor = UIColor(named: "purple-3")
            tbspInputButton.tintColor = UIColor(named: "purple-3")
            tbspOutputButton.tintColor = UIColor(named: "purple-3")
            cupInputButton.tintColor = UIColor(named: "purple-3")
            cupOutputButton.tintColor = UIColor(named: "purple-3")
            //settings and arrow color
            settingsButton.tintColor = UIColor(named: "purple-3")
            arrowColor1.backgroundColor = UIColor(named: "purple-3")
            arrowColor2.tintColor = UIColor(named: "purple-3")
            arrowBack.backgroundColor = UIColor(named: "purple-2")
        }
        
        //reset convert counter
        convertCounter = 0
        
        
    } //end after load
    
    //ACTIONS.
    //convert button
    @IBAction func convertButton(_ sender: UIButton) {
        //check if input measurement selected
        if (inputMeasurement.text == "MEASUREMENT") {
            //error alert input not selected
            let noInputAlert = UIAlertController(title: "Select Input Measurement", message: "Please select an input measurement to continue", preferredStyle: .actionSheet)
            
            noInputAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: {(UIAlertAction) in }))
            
            self.present(noInputAlert, animated: true)
            
        } else {
            //check if output measurement selected
            if (outputMeasurement.text == "MEASUREMENT") {
                //error alert output not selected
                let noOutputAlert = UIAlertController(title: "Select Output Measurement", message: "Please select an output measurement to continue", preferredStyle: .actionSheet)
                
                noOutputAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: {(UIAlertAction) in }))
                
                self.present(noOutputAlert, animated: true)
                
            } else {
                //check if input number added
                if (Float(inputField.text!) == 0.00 || inputField.text == "" || Float(inputField.text!) == nil) {
                    //error number not added
                    let noNumberAlert = UIAlertController(title: "Add Input Number", message: "Please enter a number into the input field to continue", preferredStyle: .actionSheet)
                    
                    noNumberAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: {(UIAlertAction) in }))
                    
                    self.present(noNumberAlert, animated: true)
                    
                } else {
                    //no errors - button clicked code
                    
                    //play yumyum audio
                    audioPlayer.play()
                    
                    //set inmeausre
                    if (inputMeasurement.text == "MILLILITER") {
                        inMeasure = milliliter
                    } else if (inputMeasurement.text == "TEASPOON") {
                        inMeasure = teaspoon
                    } else if (inputMeasurement.text == "TABLESPOON") {
                        inMeasure = tablespoon
                    } else if (inputMeasurement.text == "CUP") {
                        inMeasure = cup
                    } else {
                        inMeasure = 0
                    }
                //set outmeasure
                    if (outputMeasurement.text == "MILLILITER") {
                        outMeasure = milliliter
                    } else if (outputMeasurement.text == "TEASPOON") {
                        outMeasure = teaspoon
                    } else if (outputMeasurement.text == "TABLESPOON") {
                        outMeasure = tablespoon
                    } else if (outputMeasurement.text == "CUP") {
                        outMeasure = cup
                    } else {
                        outMeasure = 0
                    }
                   
                    //calclulate and print new value
                    outputField.text = String(round(Float((inputField.text!))! * (outMeasure/inMeasure)*1000)/1000)
                    
                    //change text
                    convertButtonOutput.setTitle("CONVERT AGAIN", for: .normal)
                    
                    //increment convert counter by 1
                    convertCounter += 1
                    
                    //check for even (back to convert) or odd (convert again)
                    if (convertCounter % 2 == 0) {
                        //change text back
                        convertButtonOutput.setTitle("CONVERT", for: .normal)
                    }
                    
                    //LOCK SCREEN BEFORE CONVERT AGAIN IS CLICKED
                    if (convertButtonOutput.currentTitle == "CONVERT AGAIN") {
                        //disable buttons and field
                        inputField.isUserInteractionEnabled = false
                        mgInputButton.isEnabled = false
                        mgOutputButton.isEnabled = false
                        tspInputButton.isEnabled = false
                        tspOutputButton.isEnabled = false
                        tbspInputButton.isEnabled = false
                        tbspOutputButton.isEnabled = false
                        cupInputButton.isEnabled = false
                        cupOutputButton.isEnabled = false
                    }
                    
                    //RESET SCREEN WHEN CONVERT AGAIN IS CLICKED
                    if (convertButtonOutput.currentTitle == "CONVERT") {
                        
                        //text fields 0.00
                        inputField.text = ""
                        outputField.text = "0.00"
                        
                        //unselect measurement
                        inputMeasurement.text = "MEASUREMENT"
                        outputMeasurement.text = "MEASUREMENT"
                        
                        //button opacity 50%
                        mgInputButton.alpha = 0.5
                        tspInputButton.alpha = 0.5
                        tbspInputButton.alpha = 0.5
                        cupInputButton.alpha = 0.5
                        mgOutputButton.alpha = 0.5
                        tspOutputButton.alpha = 0.5
                        tbspOutputButton.alpha = 0.5
                        cupOutputButton.alpha = 0.5
                        
                        //enable buttons and field
                        inputField.isUserInteractionEnabled = true
                        mgInputButton.isEnabled = true
                        mgOutputButton.isEnabled = true
                        tspInputButton.isEnabled = true
                        tspOutputButton.isEnabled = true
                        tbspInputButton.isEnabled = true
                        tbspOutputButton.isEnabled = true
                        cupInputButton.isEnabled = true
                        cupOutputButton.isEnabled = true
                    }
                }
            }
        } //end stacked if statements
    } //end convert button
    
    //input buttons
    @IBAction func mgInputAction(_ sender: UIButton) {
        inputMeasurement.text = "MILLILITER"
        mgInputButton.alpha = 1
        
        //turn off other buttons
        tspInputButton.alpha = 0.5
        tbspInputButton.alpha = 0.5
        cupInputButton.alpha = 0.5
    }
    
    @IBAction func tspInputAction(_ sender: UIButton) {
        inputMeasurement.text = "TEASPOON"
        tspInputButton.alpha = 1
        
        //turn off other buttons
        mgInputButton.alpha = 0.5
        tbspInputButton.alpha = 0.5
        cupInputButton.alpha = 0.5
    }
    
    @IBAction func tbspInputAction(_ sender: UIButton) {
        inputMeasurement.text = "TABLESPOON"
        tbspInputButton.alpha = 1
        
        //turn off other buttons
        mgInputButton.alpha = 0.5
        tspInputButton.alpha = 0.5
        cupInputButton.alpha = 0.5
    }
    
    @IBAction func cupInputAction(_ sender: UIButton) {
        inputMeasurement.text = "CUP"
        cupInputButton.alpha = 1
        
        //turn off other buttons
        mgInputButton.alpha = 0.5
        tspInputButton.alpha = 0.5
        tbspInputButton.alpha = 0.5
    }
    
    //output buttons
    @IBAction func mgOutputAction(_ sender: UIButton) {
        outputMeasurement.text = "MILLILITER"
        mgOutputButton.alpha = 1
        
        //turn off other buttons
        tspOutputButton.alpha = 0.5
        tbspOutputButton.alpha = 0.5
        cupOutputButton.alpha = 0.5
    }
    
    @IBAction func tspOutputAction(_ sender: UIButton) {
        outputMeasurement.text = "TEASPOON"
        tspOutputButton.alpha = 1
        
        //turn off other buttons
        mgOutputButton.alpha = 0.5
        tbspOutputButton.alpha = 0.5
        cupOutputButton.alpha = 0.5
    }
    
    @IBAction func tbspOutputAction(_ sender: UIButton) {
        outputMeasurement.text = "TABLESPOON"
        tbspOutputButton.alpha = 1
        
        //turn off other buttons
        mgOutputButton.alpha = 0.5
        tspOutputButton.alpha = 0.5
        cupOutputButton.alpha = 0.5
    }
    
    @IBAction func cupOutputAction(_ sender: UIButton) {
        outputMeasurement.text = "CUP"
        cupOutputButton.alpha = 1
        
        //turn off other buttons
        mgOutputButton.alpha = 0.5
        tspOutputButton.alpha = 0.5
        tbspOutputButton.alpha = 0.5
    }
    
    //disable keyboard when click elsewhere
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "showSettings") {
            let settingsView = segue.destination as! SettingsViewController
            settingsView.backThemeColor = backThemeValue
            settingsView.backSoundOn = backSoundValue
        }
    }

} //end
