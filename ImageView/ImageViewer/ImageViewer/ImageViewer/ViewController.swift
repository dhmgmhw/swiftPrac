//
//  ViewController.swift
//  ImageViewer
//
//  Created by Moon on 2021/06/29.
//

import UIKit

class ViewController: UIViewController {
    var maxImage = 6
    var numImage = 1

    @IBOutlet var mainImgViewer: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainImgViewer.image = UIImage(named: "1.png")
    }

    @IBAction func btnPrevious(_ sender: UIButton) {
        numImage = numImage - 1
        if (numImage < 1) {
            numImage = maxImage
        }
        let imageName = String(numImage) + ".png"
        mainImgViewer.image = UIImage(named: imageName)
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        numImage = numImage + 1
        if (numImage > maxImage) {
            numImage = 1
        }
        let imageName = String(numImage) + ".png"
        mainImgViewer.image = UIImage(named: imageName)
    }
}

