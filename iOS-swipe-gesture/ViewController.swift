//
//  ViewController.swift
//  iOS-swipe-gesture
//
//  Created by Kaustubh Kesarkar on 12/29/16.
//  Copyright © 2016 com.devkau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblDirection: UILabel!
    var rightCounter: Int = 0
    var leftCounter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblDirection.text = "swipe for direction"
        
        // Crete swipe gestures
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respond(_:)))
        swipeRight.direction = .right
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respond(_:)))
        swipeLeft.direction = .left
        
        // Add gesture recognizer
        view.addGestureRecognizer(swipeRight)
        view.addGestureRecognizer(swipeLeft)
    }

    func respond(_ gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.right :
                rightCounter += 1
                lblDirection.text = "RIGHT \(rightCounter)"
            case UISwipeGestureRecognizerDirection.left:
                leftCounter += 1
                lblDirection.text = "LEFT \(leftCounter)"
            default:
                break
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

