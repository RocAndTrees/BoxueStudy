//
//  ViewController.swift
//  P2-LoveTweet
//
//  Created by pxl on 2017/6/22.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func shareMessage()  {

        let avc : UIActivityViewController = UIActivityViewController(activityItems: ["分享给你", NSURL(string: "http://chrispangpang.github.io")!], applicationActivities: nil)
        self.present(avc, animated: true, completion: nil)
    }

    @IBAction func buttonAction(_ sender: Any) {
        shareMessage()
        
    }

}

