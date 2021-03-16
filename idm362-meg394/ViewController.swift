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
            print("jawn prepped")
        } catch {
            print(error)
        }

    } //end after load
    
    //ACTIONS.
    
    //convert button
    @IBAction func convertButton(_ sender: UIButton) {
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
        outputField.text = String(Float((inputField.text!))! * (outMeasure/inMeasure))
        
    }
    
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


}

