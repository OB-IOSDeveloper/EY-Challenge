//
//  ViewController.swift
//  CH1-OB
//
//  Created by Omar Buendia on 6/27/22.
//

import UIKit
class ViewController: UIViewController {
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
        let mySegmentedControl = UISegmentedControl (items: ["Blue","Red","Cyan", "Gray", "Purple","Orange"])
        
        let xPostion:CGFloat = 10
        let yPostion:CGFloat = 150
        let elementWidth:CGFloat = 400
        let elementHeight:CGFloat = 30
        
        mySegmentedControl.frame = CGRect(x: xPostion, y: yPostion, width: elementWidth, height: elementHeight)
        mySegmentedControl.center = self.view.center
        
        // Make First segment selected
        mySegmentedControl.selectedSegmentIndex = 0
        mySegmentedControl.selectedSegmentTintColor = UIColor.blue
       
    
            mySegmentedControl.addTarget(self, action: #selector(self.segmentedValueChanged(_:)), for: .valueChanged)
            
        self.view.addSubview(mySegmentedControl)
    }
    
    @objc func segmentedValueChanged(_ sender:UISegmentedControl!)
    {
        if sender.selectedSegmentIndex == 0 {
            sender.selectedSegmentTintColor = UIColor.blue
        }else
        if sender.selectedSegmentIndex == 1 {
            sender.selectedSegmentTintColor = UIColor.red
        }else
        
        if sender.selectedSegmentIndex == 2 {
            sender.selectedSegmentTintColor = UIColor.cyan
        }else
        
        if sender.selectedSegmentIndex == 3 {
            sender.selectedSegmentTintColor = UIColor.darkGray
        }else
        
        if sender.selectedSegmentIndex == 4 {
            sender.selectedSegmentTintColor = UIColor.purple
        }else
        
        if sender.selectedSegmentIndex == 5 {
            sender.selectedSegmentTintColor = UIColor.orange
        }
        
    }
}


