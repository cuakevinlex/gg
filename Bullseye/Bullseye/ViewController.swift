//
//  ViewController.swift
//  Bullseye
//
//  Created by Wilbert Uy Jr. on 11/24/14.
//  Copyright (c) 2014 Ateneo de Manila University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var current_value: Int = 0
    var target_value: Int = 0
    var score_value: Int = 0
    var round_value: Int = 0
    
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var target_label: UILabel!
    @IBOutlet weak var score_label: UILabel!
    @IBOutlet weak var round_label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Do any additional setup after loading the view, typically from a nib.
        // startup event
        current_value = lroundf(slider.value)
        // 0 --> n - 1
        target_value = 1 + Int(arc4random_uniform(100))

        start_new_round()
        update_labels()
        
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, forState: .Normal)
        
        let thumbImageHighlighted = UIImage(named: "SliderThumb-Highlighted")
        slider.setThumbImage(thumbImageHighlighted, forState: .Highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        let trackLeftImage = UIImage(named: "SliderTrackleft")
        
        let trackRightImage = UIImage(named: "SliderTrackleft")

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        
        let difference = abs(target_value - current_value)
//        let points = 100 - difference
        
        var points = 100 - difference
        var title: String
        
        if difference == 0 {
            points += 100
            title = "Perfect"
        }
        else if difference < 20 {
            title = "Almost"
            if difference == 1 {
                title = "You missed by 1"
                points += 50
            }
        }
        else {
            points = 1
            title = "You suck!"
        }
        
        let message = "You scored \(points) points."
        
        score_value += points
        
        //let message = "The value of the slider is now: \(current_value)" + "\nThe target value is: \(target_value)"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK",
            style: .Default,
            handler: { action in
                self.start_new_round() //to update after we click OK
                self.update_labels()
            })
        
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
        
//        start_new_round()
//        update_labels()
    }

    @IBAction func sldierMoved(slider: UISlider) {
        
        current_value = lroundf(slider.value)
        println("The value of the slider is: \(current_value)")
        
    }
    
    @IBAction func reset() {
        round_value = 0
        score_value = 0
        start_new_round()
        update_labels()
    }
    
    func update_labels() {
        target_label.text = String(target_value)
        round_label.text = String(++round_value)
        score_label.text = String(score_value)
    }
    
    func start_new_round() {
        target_value = 1 + Int(arc4random_uniform(100))
        //current_value = 50
        //current_value = lroundf(slider.value)
        slider.value = 50
    }
    
    
    
    
}

