//
//  ViewController.swift
//  BroadcastExample
//
//  Created by Vital on 20.04.22.
//

import UIKit
import ReplayKit

class ViewController: UIViewController {
     
    @IBOutlet weak var testBroadcastView: RPSystemBroadcastPickerView!
    
    var mirroringButton: UIButton? {
        return testBroadcastView.subviews.first(where: { $0 is UIButton }) as? UIButton
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mirroringButton?.setImage(nil, for: .normal)
        testBroadcastView.preferredExtension = "com.broadcast.example.BroadcastExtension"
    }
    
    @IBAction func startBroadcastClicked(_ sender: UIButton) {
        mirroringButton?.sendActions(for: .allTouchEvents)
    }

}

