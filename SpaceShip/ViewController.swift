//
//  ViewController.swift
//  SpaceShip
//
//  Created by Hameed Abdullah on 12/12/18.
//  Copyright © 2018 Hameed Abdullah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var spaceship: SpaceShip = SpaceShip()

    @IBOutlet weak var fireImage: UIImageView!
    
    @IBOutlet weak var rightButton: UIButton!
    
    @IBOutlet weak var leftButton: UIButton!
    
    @IBOutlet weak var spaceView: UIView!
    @IBOutlet weak var spaceShip: UIView!
    
    
     var timer: Timer = Timer()
    
    var fire: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spaceship.position = 10
        
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(attack), userInfo: nil, repeats: true)
        timer.fire()
        
    }
    
    @objc func attack() {
        fire += 1
    fireImage.center.y = spaceView.frame.width / 2 + fireImage.frame.width * fire

    if (spaceView.frame.maxY < fireImage.frame.maxY)  {
            timer.invalidate()
            return
        }
        
    }
    
    
    @IBAction func rightButtonTapped(_ sender: Any) {
            
//        spaceship.position += 1
        
//        if spaceView.frame.width < spaceShip.frame.width + CGFloat(spaceship.position) {
//            spaceShip.frame.origin.x += CGFloat(spaceship.position)
//        }
        
        //someMath here *
//
//        if spaceView.frame.maxX > spaceShip.frame.maxX + CGFloat(spaceship.position) {
//            spaceship.position += 1
//            print("spaceView.frame.maxX = \(spaceView.frame.maxX)");
//            print("spaceShip.frame.maxX = \(spaceShip.frame.maxX)");
//            print("spaceship.position = \(spaceship.position)");
//            print();
//
//            //rightButton.isEnabled = false
//           // spaceView.frame.origin.x += CGFloat(spaceship.position)
//             updateUI()
//        }
        
   


       //minX returns the largest value for the x coordinate of the rectangle
        if (spaceView.frame.maxX  > spaceShip.frame.maxX + CGFloat(spaceship.position)) {
            spaceShip.frame.origin.x += CGFloat(spaceship.position)
            print("spaceView.frame.maxX  = \(spaceView.frame.maxX )")
            print("spaceShip.frame.maxX = \(spaceShip.frame.maxX)")
            print("spaceship.position = \(spaceship.position)")
            print()
            

        }
        
    }
    
    @IBAction func leftButtonTapped(_ sender: Any) {
//        //rightButton.isEnabled = true
//        spaceship.position -= 1
//        updateUI()
////        if spaceView.frame.maxX < spaceShip.frame.maxX + CGFloat(spaceship.position) {
////            spaceship.position -= 1
////
////            //rightButton.isEnabled = false
////            // spaceView.frame.origin.x += CGFloat(spaceship.position)
////            updateUI()
////        }
        
        
        //minX returns the smallest value for the x coordinate of the rectangle
        if (spaceView.frame.minX < spaceShip.frame.minX - CGFloat(spaceship.position)) {
            spaceShip.frame.origin.x -= CGFloat(spaceship.position)
            print("spaceView.frame.minX  = \(spaceView.frame.minX )")
            print("spaceShip.frame.minX= \(spaceShip.frame.minX)")
            print("spaceship.position = \(spaceship.position)")
            print()
            
        }
        
        
        
    }
    
    func updateUI() {
        spaceShip.center.x = spaceView.frame.width / 2 + spaceShip.frame.width * CGFloat(spaceship.position)
    }

}

