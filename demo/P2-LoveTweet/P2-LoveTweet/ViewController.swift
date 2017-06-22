//
//  ViewController.swift
//  P2-LoveTweet
//
//  Created by pxl on 2017/6/22.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    @IBOutlet weak var salaryLabel: UILabel!
    @IBOutlet weak var straightSwitch: UISwitch!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var workTextField: UITextField!
    @IBOutlet weak var birthdayPicker: UIDatePicker!
    @IBOutlet weak var genderSeg: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    @IBAction func salaryHandler(_ sender: AnyObject) {
        let slider = sender as! UISlider
        let i = Int(slider.value)
        salaryLabel.text = "$\(i)k"
    }
    
    
    
 
    
    
    @IBAction func buttonAction(_ sender: Any) {
        guard let name = nameTextField.text,
            let work = workTextField.text,
            let salary = salaryLabel.text
            else {
                return
        }
        
        if name == "" || work == "" || salary == "" {
            showAlert("Info Miss", message: "Please fill out the form", buttonTitle: "Ok")
        }
        
        // MARK: Get age
        let now = Date()
        let gregorian = Calendar(identifier: Calendar.Identifier.gregorian)
        let components = (gregorian as NSCalendar?)?.components(NSCalendar.Unit.year, from: birthdayPicker.date, to: now, options: [])
        let age: Int? = components?.year
        
        
        var interestedIn: String! = "Women"
        if (genderSeg.selectedSegmentIndex == 0 && !straightSwitch.isOn) {
            interestedIn = "Men"
        } else if (genderSeg.selectedSegmentIndex == 1 && straightSwitch.isOn ) {
            interestedIn = "Women"
        }
        
        let tweet = "Hi, I am \(name). As a \(age!)-year-old \(work) earning \(salary)/year, I am interested in \(interestedIn). Feel free to contact me!"
        
        shareMessage(tweet)
    }
    
    func shareMessage(_ tweet: String) {
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter) {
            let twitterController: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            twitterController.setInitialText(tweet)
            self.present(twitterController, animated: true, completion: nil)
        } else {
            showAlert("Twitter Unavailable", message: "Please configure your twitter account on device", buttonTitle: "Ok")
        }
    }
    
    
    fileprivate func showAlert(_ title: String, message: String, buttonTitle: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: buttonTitle, style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        // MARK: Dismiss keyboard
        view.endEditing(true)
    }
    
    /// 弹框-选择分享的对象
    func shareMessageActivity()  {

        let avc : UIActivityViewController = UIActivityViewController(activityItems: ["分享给你", NSURL(string: "http://chrispangpang.github.io")!], applicationActivities: nil)
        self.present(avc, animated: true, completion: nil)
    }

}

