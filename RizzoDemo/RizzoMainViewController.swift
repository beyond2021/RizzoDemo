//
//  RizzoMainViewController.swift
//  RizzoDemo
//
//  Created by KEEVIN MITCHELL on 3/23/16.
//  Copyright © 2016 beyond2021. All rights reserved.
//

import UIKit

class RizzoMainViewController: UIViewController {
    @IBOutlet weak var bgImageView: UIImageView!
    
    @IBOutlet weak var steinwayIV: UIButton!
    
    @IBOutlet weak var clintonButton: UIButton!
    
    
    @IBOutlet weak var lexButton: UIButton!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpInterface()
        
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        bgImageView.alpha = 0
        //
        animate()
        
    }
    //MARK: -Actions
    @IBAction func steinwayAction(sender: UIButton) {
    }
    
    
    @IBAction func clintonAction(sender: UIButton) {
    }
    
    
    @IBAction func lexAction(sender: UIButton) {
    }
    
    
    //MARK: - Interface
    func setUpInterface(){
        bgImageView.contentMode = UIViewContentMode.Center
        
        // bgImageView.image = UIImage(assetIdentifier: .BlankBG)
        // customImageView.layer.cornerRadius = customImageView.bounds.size.width / 2
        steinwayIV.layer.cornerRadius = steinwayIV.bounds.size.width / 2
        steinwayIV.layer.masksToBounds = true
        
        clintonButton.layer.cornerRadius = steinwayIV.bounds.size.width / 2
        clintonButton.layer.masksToBounds = true
        
        lexButton.layer.cornerRadius = steinwayIV.bounds.size.width / 2
        lexButton.layer.masksToBounds = true
        
    }
    func animate(){
        
        //
        UIView.animateWithDuration(0.5, delay: 0.5, options: [], animations: {
            self.bgImageView.alpha = 1.0
            }, completion: nil)
        
        //START OFF THE SCREEN
        steinwayIV.center.x -= view.bounds.width
        clintonButton.center.x -= view.bounds.width
        lexButton.center.x -= view.bounds.width
        
        //Bring on screen
        UIView.animateWithDuration(0.73, delay: 0.0, usingSpringWithDamping:
            0.9, initialSpringVelocity: 0.0, options: [], animations: {
                self.steinwayIV.center.x += self.view.bounds.width
                
            }, completion: nil)
        UIView.animateWithDuration(0.73, delay: 0.5, usingSpringWithDamping:
            0.6, initialSpringVelocity: 0.0, options: [], animations: {
                self.clintonButton.center.x += self.view.bounds.width
                
            }, completion: nil)
        UIView.animateWithDuration(0.73, delay: 0.7, usingSpringWithDamping:
            0.3, initialSpringVelocity: 0.0, options: [], animations: {
                self.lexButton.center.x += self.view.bounds.width
                
            }, completion: nil)
        
        // Shuffle
        UIView.animateWithDuration(0.73, delay: 0.7, usingSpringWithDamping:
            0.9, initialSpringVelocity: 0.0, options: [], animations: {
                self.steinwayIV.center.y += self.view.bounds.height/3
                
            }, completion: nil)
        UIView.animateWithDuration(0.73, delay: 0.7, usingSpringWithDamping:
            0.6, initialSpringVelocity: 0.0, options: [], animations: {
                self.lexButton.center.y -= self.view.bounds.height/3
            }, completion: nil)
        
        
        
        
    }
    
    
    
}
