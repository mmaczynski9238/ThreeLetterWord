//
//  ViewController.swift
//  ThreeLettterWord
//
//  Created by student3 on 12/14/15.
//  Copyright © 2015 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentLetterLabel: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    var counter = 0
    var currentLetter: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    getCurrentLetter()
    
    }

    @IBAction func whenTapped(sender: UITapGestureRecognizer) {
    
        let selectedPoint = sender.locationInView(self.view)
        print(selectedPoint)
        if CGRectContainsPoint(label1.frame, selectedPoint)
        
        {
          label1.text = String(currentLetter)
        }
       
        if CGRectContainsPoint(label2.frame, selectedPoint)
            
        {
            label2.text = String(currentLetter)
        }
        
        if CGRectContainsPoint(label3.frame, selectedPoint)
            
        {
            label3.text = String(currentLetter)
        }
        counter++
        getCurrentLetter()

    
    }
        func getCurrentLetter()
        {
            let myRange = Range<String.Index>(start: letters.startIndex.advancedBy(counter), end: letters.startIndex.advancedBy(counter+1))
            currentLetterLabel.text = letters.substringWithRange(myRange)
            currentLetter = Character   (letters.substringWithRange(myRange))
            
         
        }
        
        
        
        
    

}

