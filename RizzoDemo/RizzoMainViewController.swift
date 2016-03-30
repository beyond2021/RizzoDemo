//
//  RizzoMainViewController.swift
//  RizzoDemo
//
//  Created by KEEVIN MITCHELL on 3/23/16.
//  Copyright © 2016 beyond2021. All rights reserved.
//

import UIKit
//import TAPageControl



class RizzoMainViewController: UIViewController, UIScrollViewDelegate, TAPageControlDelegate {
    
    
    @IBOutlet weak var bgImageView: UIImageView!
    
    @IBOutlet weak var steinwayIV: UIButton!
    
    @IBOutlet weak var clintonButton: UIButton!
    
    
    @IBOutlet var IBOutletCollection: [UIScrollView]!
    
    @IBOutlet weak var lexButton: UIButton!
    
    @IBOutlet weak var scrollView2: UIScrollView!{
        didSet{
            
        }
        
    }
    override func viewDidLayoutSubviews() {
        super.viewWillLayoutSubviews()
        for scrollView in self.IBOutletCollection {
            scrollView.contentSize = CGSizeMake(CGRectGetWidth(scrollView.frame) * CGFloat(self.imagesData.count), CGRectGetHeight(scrollView.frame))
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpInterface()
        //Scroller
        // 1
        imagesData = [UIImage(assetIdentifier: .ScrollView1),
            UIImage(assetIdentifier: .ScrollView2),
            UIImage(assetIdentifier: .ScrollView3),
            UIImage(assetIdentifier: .ScrollView4),
            UIImage(assetIdentifier: .ScrollView5),
            UIImage(assetIdentifier: .ScrollView6)]
        setupScrollViewImages()
        for scrollView in self.IBOutletCollection {
            scrollView.delegate = self;
        }
        customPageControl2.numberOfPages = imagesData.count
       // instanceOfCustomObject.delegate = self
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
    
    //MARK: - PageControl
    
   @IBOutlet weak var customPageControl2: TAPageControl!
  //  var customPageControl2 : TAPageControl!
    // an array for the images of the scroller
    var imagesData = []
    
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

    
  
    //MARK: - - ScrollView delegate
    func setupScrollViewImages(){
        for scrollView in self.IBOutletCollection {
            imagesData.enumerateObjectsUsingBlock { (imageName, idx, stop) -> Void in
                let imageView = UIImageView(frame: CGRectMake(CGRectGetWidth(scrollView.frame) * CGFloat(idx),0,CGRectGetWidth(scrollView.frame), CGRectGetHeight(scrollView.frame)))
                imageView.contentMode = UIViewContentMode.ScaleAspectFill
                imageView.image = imageName as? UIImage
                scrollView.addSubview(imageView)
            }
        }
    }
             func scrollViewDidScroll(scrollView: UIScrollView){
            let pageIndex = scrollView.contentOffset.x / CGRectGetWidth(scrollView.frame)
            
            self.customPageControl2.currentPage = Int(pageIndex)
          
        }
        
  // - (void)TAPageControl:(TAPageControl *)pageControl didSelectPageAtIndex:(NSInteger)index
    
//    @objc func TAPageControl(pageControl: TAPageControl!, didSelectPageAtIndex index: Int) {
//        
//    }
   
//    @objc func TAPageControl(pageControl: TAPageControl!, didSelectPageAtIndex index: Int) {
//        
//    }
}
