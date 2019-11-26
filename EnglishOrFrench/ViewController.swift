//
//  ViewController.swift
//  EnglishOrFrench
//
//  Created by Chen, Sihan on 2019-11-26.
//  Copyright © 2019 Chen, Sihan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputText: UITextView!
    
    
    @IBOutlet weak var analyzeResult: UILabel!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    
    
    @IBAction func analyzeLanguage(_ sender: Any) {
        
        guard let inputTextAsString = inputText.text, inputTextAsString != "" else {
            analyzeResult.text = "Please enter text to analyze."
            return
        }
        var numberOfTs = 0
        var numberOfSs = 0
        for scalars in inputTextAsString.unicodeScalars {
            let stringT = "tT"
            let stringS = "sS"
            
            if stringT.contains(inputTextAsString) {
                numberOfTs += 1
            }
            if stringS.contains(inputTextAsString) {
                numberOfSs += 1
            }
            
            
            
            
            
        }
        
        if numberOfSs > numberOfTs {
            analyzeResult.text = "This looks like French."
        } else if numberOfSs == numberOfTs {
            analyzeResult.text = "This is probably French."
        } else {
            analyzeResult.text = "This looks like English."
        }
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
}

