//
//  ViewController.swift
//  EnglishOrFrench
//
//  Created by Chen, Sihan on 2019-11-26.
//  Copyright © 2019 Chen, Sihan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var inputText: UITextView!
    
    
    @IBOutlet weak var analyzeResult: UILabel!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    
    // MARK:Methods
    @IBAction func analyzeLanguage(_ sender: Any) {
        // Guard false input + empty text
        guard let inputTextAsString = inputText.text, inputTextAsString != "" else {
            analyzeResult.text = "Please enter text to analyze."
            return
        }
        // Setting values for the numbers of Ts and Ss
        var numberOfTs = 0
        var numberOfSs = 0
        for scalars in inputTextAsString.unicodeScalars {
            let stringT = "tT"
            let stringS = "sS"
            // Constant to change the type into string
            let scalarsAsString = String(scalars)
            if stringT.contains(scalarsAsString) {
                numberOfTs += 1
            }
            if stringS.contains(scalarsAsString) {
                numberOfSs += 1
            }
            
            
            
            
            
        }
        // Comparing values to get the output
        if numberOfSs > numberOfTs {
            analyzeResult.text = "This looks like French."
        } else if numberOfSs == numberOfTs {
            analyzeResult.text = "This is probably French."
        } else {
            analyzeResult.text = "This looks like English."
        }
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
}

