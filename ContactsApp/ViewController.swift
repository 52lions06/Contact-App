//
//  ViewController.swift
//  ContactsApp
//
//  Created by William McKelvey on 9/20/17.
//  Copyright © 2017 William McKelvey. All rights reserved.
//

import UIKit

import PaperOnboarding

class ViewController: UIViewController, PaperOnboardingDataSource {

    @IBOutlet weak var onboardingView: OnboardingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onboardingView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func onboardingItemAtIndex(_ index: Int) -> OnboardingItemInfo {
        <#code#>
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

