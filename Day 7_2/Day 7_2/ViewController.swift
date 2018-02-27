//
//  ViewController.swift
//  Day 7_2
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 Foram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var lblStepperValue: UILabel!
     @IBOutlet weak var myStepper: UIStepper!
     @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
     @IBOutlet weak var moodSegment: UISegmentedControl!
     @IBOutlet weak var imgMood: UIImageView!
     @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var lblSliderValue: UILabel!
   // @IBOutlet var myProgressView: UIView!
    @IBOutlet weak var lblProgressView: UILabel!
    
    @IBOutlet weak var myProgressView: UIProgressView!
    
    var moodImages: [UIImage] = [UIImage(named: "happy.jpg")!,
        UIImage(named: "Angry.png")!,
        UIImage(named: "sad.jpg")!]
 
    var progressTimer = Timer()
    
    @IBAction func btnStartAction(_ sender: UIButton) {
        activityIndicator.startAnimating()
    }
    
    @IBAction func btnStopAction(_ sender: UIButton) {
        activityIndicator.stopAnimating()
    }
    
    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        print("selected : \(moodSegment.selectedSegmentIndex)")
        
        imgMood.image = moodImages[moodSegment.selectedSegmentIndex]
    }
    
    
    @IBAction func myStepperAction(_ sender: UIStepper) {
        lblStepperValue.text = String(myStepper.value)
    }
    
    
    @IBAction func mySliderAction(_ sender: UISlider) {
        lblSliderValue.text = String(mySlider.value)
    }
    
    
    @IBAction func btnStartProgressAction(_ sender: UIButton) {
        
        self.myProgressView.progress += 0.01
        
        //set label for progress bar
        self.lblProgressView.text = "\(Int(self.myProgressView.progress * 100))%"
        
        //invalidate timer if progress reach to 1
        if self.myProgressView.progress >= 1
        {
            //invalidate timer
            self.progressTimer.invalidate()
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myProgressView.progress = 0.0
        lblProgressView.text = "\(Int(myProgressView.progress*100))%"
        self.progressTimer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(self.btnStartProgressAction), userInfo: nil, repeats: true)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

