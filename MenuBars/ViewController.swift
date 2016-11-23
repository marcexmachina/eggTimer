//
//  ViewController.swift
//  MenuBars
//
//  Created by Marc O'Neill on 23/11/2016.
//  Copyright © 2016 marcexmachina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer: Timer?
    let defaultTime: String = "210"
    
    @IBOutlet var timerLabel: UILabel!
    
    @IBAction func pausePressed(_ sender: Any) {
        timer!.invalidate()
    }
   
    
    @IBAction func playPressed(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(processTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func minusTenPressed(_ sender: Any) {
        let currentTime = Int(timerLabel.text!)!
        if currentTime - 10 > 0 {
            let newTime = currentTime - 10
            timerLabel.text = String(newTime)
        }
        
    }
    
    @IBAction func plusTenPressed(_ sender: Any) {
        let currentTime = Int(timerLabel.text!)!
        let newTime = currentTime + 10
        timerLabel.text = String(newTime)
        
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        timerLabel.text = defaultTime
    }
    
    func processTimer() {
        let currentTime  = Int(timerLabel.text!)!
        if currentTime > 0 {
            let newTime = currentTime - 1
            timerLabel.text = String(newTime)
        } else {
            timer?.invalidate()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

