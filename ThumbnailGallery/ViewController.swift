//
//  ViewController.swift
//  ThumbnailGallery
//
//  Created by zino-mac on 2020/02/07.
//  Copyright © 2020 zino-mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imgArray:Array = Array<UIImageView>()
    var x:Int = 100
    
    @IBOutlet weak var photo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //createView()
        createImage()
                
    }
    
    func createView(){
        for i in 0...5{
            let uv = UIView(frame: CGRect(x: 100 + (i*52), y: 100, width: 50, height: 50))
            uv.backgroundColor = UIColor.red
            self.view.addSubview(uv)
        }
    }
    
    
    
    func createImage(){
        for i in 0...5{
            var img = UIImage(named: String(format: "h%d.png", i+1))
            var imgView = UIImageView(image: img)
            imgArray.append(imgView)
            
            imgView.frame = CGRect(x: 120 + (52*i), y: 80, width: 50, height: 50)
            
            let gesture = UITapGestureRecognizer(target: self, action: #selector(viewClick))
            
            imgView.addGestureRecognizer(gesture)
            imgView.isUserInteractionEnabled = true
            
            self.view.addSubview(imgArray[i])
        }
        
    }
    @objc func viewClick(sender:UIGestureRecognizer){
        NSLog("hi", "")
        let v = sender.view as? UIImageView
        photo.image = v?.image
        
    }

}

