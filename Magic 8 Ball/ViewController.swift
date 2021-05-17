//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
              super.viewDidLoad()
                 assignbackground()
                
            }

      func assignbackground(){
            let background = UIImage(named: "space")

            var imageView1 : UIImageView!
            imageView1 = UIImageView(frame: view.bounds)
        imageView1.contentMode =  UIView.ContentMode.scaleAspectFill
            imageView1.clipsToBounds = true
            imageView1.image = background
            imageView1.center = view.center
            view.addSubview(imageView1)
            self.view.sendSubviewToBack(imageView1)
        }
    
   
    @IBOutlet weak var imegeView: UIImageView!
    
    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        print("Button got tapped")
        let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
        imegeView.image = ballArray.randomElement()
        //print(ballArray[3])
      
        
    }
  
    



}

