//
//  ViewController.swift
//  Nostalgic Mobile Proj
//
//  Created by Laurence Wingo on 6/14/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import UIKit
import CareKit

class ViewController: UIViewController {
    
    //one Care Plan Store object that lives during the life of the application in which we set it in the intializer below
    let store: OCKCarePlanStore
    
    required init?(coder aDecoder: NSCoder) {
        //1
        let fileManager = FileManager.default
        let documentDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).last
        let storeURL = documentDirectory?.appendingPathComponent("NostalgiaCareKitStore")
        if !fileManager.fileExists(atPath: (storeURL?.path)!) {
            try! fileManager.createDirectory(at: URL.init(string: (storeURL?.path)!)!, withIntermediateDirectories: true, attributes: nil)
        }
        store = OCKCarePlanStore.init(persistenceDirectoryURL: storeURL!)
        super.init(coder: aDecoder)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showCareCard(_ sender: UIButton) {
        
    }
    
    //adding an intervention activity
    
    

}

