//
//  ViewController.swift
//  Bip The Guy
//
//  Created by 18ericz on 2/4/19.
//  Copyright © 2019 18ericz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageToPunch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func animateImage(){
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 60
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.origin.x+shrinkValue, y: self.imageToPunch.bounds.origin.y+shrinkvalue, width: self.imageToPunch.bounds.size.width-shrinkvalue, height: self.imageToPunch.bounds.size.height-shrinkvalue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: {self.imageToPunch.bounds = bounds}, completion: nil )
    }
    
    
    @IBAction func libraryPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        animateImage()
    }
    
}

