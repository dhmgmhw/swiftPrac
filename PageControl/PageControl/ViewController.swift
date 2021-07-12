//
//  ViewController.swift
//  PageControl
//
//  Created by Moon on 2021/07/08.
//

import UIKit

var images = ["01.png","02.png","03.png","04.png","05.png","06.png"]

class ViewController: UIViewController {
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor =
            UIColor.red
        imgView.image = UIImage(named: images[0])
        
    }


    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
}

