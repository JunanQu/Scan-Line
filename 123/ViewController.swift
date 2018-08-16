//
//  ViewController.swift
//  123
//
//  Created by Junan Qu on 7/29/18.
//  Copyright © 2018 Junan Qu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var counter = 5
    
    @IBOutlet weak var BlackLine: UIView!
    @IBOutlet weak var BlackLine2: UIView!
    @IBOutlet weak var BlackLine3: UIView!
    @IBOutlet weak var BlackLine4: UIView!
    @IBOutlet weak var BlackLine5: UIView!
    @IBOutlet weak var BlackLine6: UIView!
    @IBOutlet weak var BlackLine7: UIView!
    @IBOutlet weak var BlackLine8: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startButton(sender: AnyObject) {
        startButton.isEnabled = false
        timer = Timer.scheduledTimer(timeInterval: 1.5, target:self, selector: #selector(onAnimateBlackTapped), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopButton(sender: AnyObject) {
        startButton.isEnabled = true
        timer.invalidate()
    }

    func moveDown(view: UIView) {
        view.center.y += 10
    }
    
    func moveDown20(view: UIView) {
        view.center.y += 20
    }
    
    func moveDown30(view: UIView) {
        view.center.y += 30
    }
    
    func moveUp(view: UIView) {
        view.center.y -= 10
    }
    func moveUp20(view: UIView) {
        view.center.y -= 20
    }
    func moveUp30(view: UIView) {
        view.center.y -= 30
    }

    
    @objc @IBAction func onAnimateBlackTapped() {
        let duration: Double = 1.0
        
        UIView.animate(withDuration: duration, animations: {
            self.moveDown30(view: self.BlackLine)
        }) { (finished) in
            if finished {
                UIView.animate(withDuration: duration, animations: {
                    self.moveUp30(view: self.BlackLine)
                })
            }
        }
        
        UIView.animate(withDuration: duration, animations: {
            self.moveDown20(view: self.BlackLine2)
        }) { (finished) in
            if finished {
                UIView.animate(withDuration: duration, animations: {
                    self.moveUp20(view: self.BlackLine2)
                })
            }
        }
        
        UIView.animate(withDuration: duration, animations: {
            self.moveDown(view: self.BlackLine3)
        }) { (finished) in
            if finished {
                UIView.animate(withDuration: duration, animations: {
                    self.moveUp(view: self.BlackLine3)
                })
            }
        }
        
        
        UIView.animate(withDuration: duration, animations: {
            self.moveUp(view: self.BlackLine6)
        }) { (finished) in
            if finished {
                UIView.animate(withDuration: duration, animations: {
                    self.moveDown(view: self.BlackLine6)
                })
            }
        }
        
        UIView.animate(withDuration: duration, animations: {
            self.moveUp20(view: self.BlackLine7)
        }) { (finished) in
            if finished {
                UIView.animate(withDuration: duration, animations: {
                    self.moveDown20(view: self.BlackLine7)
                })
            }
        }
        
        UIView.animate(withDuration: duration, animations: {
            self.moveUp30(view: self.BlackLine8)
        }) { (finished) in
            if finished {
                UIView.animate(withDuration: duration, animations: {
                    self.moveDown30(view: self.BlackLine8)
                })
            }
        }
        

        
        
        

        }


}

